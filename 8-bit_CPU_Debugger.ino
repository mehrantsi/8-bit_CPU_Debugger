#include <Wire.h>
#include "SSD1306Ascii.h"
#include "SSD1306AsciiWire.h"

#define SH_BUS_LD 9
#define SH_BUS_CLK 8
#define SH_BUS_SER 7

#define SH_SIG_LD 12
#define SH_SIG_CLK 11
#define SH_SIG_SER 10

#define BTN_UP A2
#define BTN_OK A3
#define BTN_DN A1

#define OLED_I2C_ADDRESS 0x3C

enum OpCodes {
  LDA   = 0b00010000,
  ADD   = 0b00100000,
  SUB   = 0b00110000,
  STA   = 0b01000000,
  LDI   = 0b01010000,
  LDS   = 0b01100000,
  JMP   = 0b01110000,
  JC    = 0b10000000,
  JZ    = 0b10010000,
  ADS   = 0b10100000,
  SUS   = 0b10110000,
  OTH   = 0b11100000,
  OUT   = 0b11110000
};

struct MachineCode{
  OpCodes opCode;
  uint16_t step;
  byte data;
};

bool _fatalError, _runMode = true, _risingClkEdge;
uint16_t _historyIndex, _historySize = 10, _displayIndex, _instructionDecoderStep;
MachineCode *_macineCodeHistory;
SSD1306AsciiWire oled;
byte _lastOpCode;

void setup() {
  Serial.begin(115200);

  Wire.begin();
  Wire.setClock(400000L);

  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  Serial.print("Initializing OLED...");

  oled.begin(&Adafruit128x64, OLED_I2C_ADDRESS);
  
  oled.setFont(ZevvPeep8x16);
  oled.clear();
  oled.setScrollMode(SCROLL_MODE_AUTO);

   _macineCodeHistory = malloc(sizeof(struct MachineCode) * _historySize);
  if (!_macineCodeHistory) {
    free(_macineCodeHistory);
    oled.clear();
    oled.println("Not Enough");
    oled.println("RAM!");
    return;
  }

  digitalWrite(SH_BUS_LD, HIGH);
  pinMode(SH_BUS_LD, OUTPUT);
  pinMode(SH_BUS_CLK, OUTPUT);
  pinMode(SH_BUS_SER, INPUT);

  digitalWrite(SH_SIG_LD, HIGH);
  pinMode(SH_SIG_LD, OUTPUT);
  pinMode(SH_SIG_CLK, OUTPUT);
  pinMode(SH_SIG_SER, INPUT);

  pinMode(BTN_UP, INPUT_PULLUP);
  pinMode(BTN_OK, INPUT_PULLUP);
  pinMode(BTN_DN, INPUT_PULLUP);


  oled.clear();
  oled.println("Waiting...");
}

void loop() {
  if(_fatalError) {
    return;
  }

  digitalWrite(SH_BUS_CLK, HIGH);
  digitalWrite(SH_BUS_LD, LOW);
  digitalWrite(SH_BUS_LD, HIGH);
  byte busData = shiftIn(SH_BUS_SER, SH_BUS_CLK, LSBFIRST);

  digitalWrite(SH_SIG_CLK, HIGH);
  digitalWrite(SH_SIG_LD, LOW);
  digitalWrite(SH_SIG_LD, HIGH);
  byte controlSignals = shiftIn(SH_SIG_SER, SH_SIG_CLK, LSBFIRST);

  bool inverseClk = (controlSignals & 1);
  bool irLatch = !(controlSignals & 2);
  
  if (irLatch && !_risingClkEdge && inverseClk) {
    _risingClkEdge = true;
    if (_lastOpCode != (controlSignals & 0xf0)) {
      _lastOpCode = (controlSignals & 0xf0);
      _instructionDecoderStep = 0;
    }
    MachineCode machineCode = {_lastOpCode, _instructionDecoderStep++, busData};
    _macineCodeHistory[_historyIndex++] = machineCode;
    if(_historyIndex > _historySize){
      _historySize += _historySize;
      MachineCode *newMacineCodeHistory = realloc(_macineCodeHistory, sizeof(struct MachineCode) * _historySize);
      if (!newMacineCodeHistory) {
        free(newMacineCodeHistory);
        oled.clear();
        oled.println("Not Enough");
        oled.println("RAM!");
        _fatalError = true;
        return;
      }
      _macineCodeHistory = newMacineCodeHistory;
    }
    if (_runMode && displayMachineCodeHistory()) {
      _displayIndex++;
    }
  }
  else if ((irLatch && _risingClkEdge && !inverseClk) || !irLatch) {
    _risingClkEdge = inverseClk;
  }

//char buf[10];
//sprintf(buf, "0x%02x 0x%02x 0x%02x", busData, controlSignals, _lastOpCode);
//oled.clear();
//oled.println(buf);

  bool btnUp = !digitalRead(BTN_UP);
  bool btnDn = !digitalRead(BTN_DN);
  bool btnOk = !digitalRead(BTN_OK);
  
  if (btnOk) {
    _displayIndex = _historyIndex - 1;
    _runMode = true;
    displayMachineCodeHistory();
    _displayIndex++;
    delay(60);
  } 
  else if (btnUp) {
    if (_displayIndex < 0) {
      oled.clear();
      oled.println("-- Start --");
      return;
    }
    _displayIndex--;
    _runMode = false;
    displayMachineCodeHistory();
    delay(60);
  }
  else if (btnDn) {
    if (_displayIndex == _historyIndex) {
      oled.clear();
      oled.println("-- End --");
      return;
    }
     _displayIndex++;
    _runMode = false;
    displayMachineCodeHistory();
    delay(60);
  }
}

bool displayMachineCodeHistory() {
  if (_displayIndex < _historyIndex) {
    oled.println(instructionToString(_macineCodeHistory[_displayIndex].opCode) + ":");
    oled.println("----------");
    char buf[10];
    sprintf(buf, "T%d: 0x%02x", _macineCodeHistory[_displayIndex].step, _macineCodeHistory[_displayIndex].data);
    oled.println(buf);
    return true;
  }
  return false;
}

String instructionToString(OpCodes opCode) {
  switch (opCode) {
    case LDA:
      return "LDA";
    case ADD:
      return "ADD";
    case SUB:
      return "SUB";
    case STA:
      return "STA";
    case LDI:
      return "LDI";
    case LDS:
      return "LDS";
    case JMP:
      return "JMP";
    case JC:
      return "JC";
    case JZ:
      return "JZ";
    case ADS:
      return "ADS";
    case SUS:
      return "SUS";
    case OTH:
      return "OTH";
    case OUT:
      return "OUT";
    default:
      return "?";
  }
}
