# 8-bit CPU Debugger

## Overview
This project is meant to help debugging a program running on MSAP-1 (Mehran's Simple as Possible) 8-bit computer project. 
The idea is to get a sample of executing instruction and data on the bus, when the IR latch is low and clock is on the rising edge. 
This information is then decoded to the OpCode, instruction clock cycle and bus data in hex where it's shown on a display and can be reviewed by a few micro switches.

![CD](https://github.com/mehrantsi/8-bit_CPU_Debugger/blob/main/IMG_0664.jpeg)

## Schematics
This projects uses an Arduino Nano, two 74HC165 parallel-to-serial shift registers, an OLED display (128x64 with SSD1306 controller) and three micro-switches. 
Please note that to save space on the breadboard, micro-switches are not debounced using RC circuits and debouncing is handled by applying delay in the code when a button push is registered.
So if you'd like to build this project on a perf board or a PCB, use proper RC circuit for debouncing.

![SCH](https://github.com/mehrantsi/8-bit_CPU_Debugger/blob/main/Schematics/Schematics.png)
