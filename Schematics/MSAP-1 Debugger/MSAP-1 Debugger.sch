EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 60B8098B
P 5800 3700
F 0 "A1" H 5450 2750 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 6300 2700 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5800 3700 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5800 3700 50  0001 C CNN
	1    5800 3700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC165 U1
U 1 1 60B81D24
P 3350 2550
F 0 "U1" H 3550 3300 50  0000 C CNN
F 1 "74HC165" H 3100 3300 50  0000 C CNN
F 2 "" H 3350 2550 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT165.pdf" H 3350 2550 50  0001 C CNN
	1    3350 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC165 U2
U 1 1 60B830E3
P 3350 4750
F 0 "U2" H 3550 5500 50  0000 C CNN
F 1 "74HC165" H 3100 5500 50  0000 C CNN
F 2 "" H 3350 4750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT165.pdf" H 3350 4750 50  0001 C CNN
	1    3350 4750
	1    0    0    -1  
$EndComp
$Comp
L ssd1306:SSD1306 M1
U 1 1 60B80D32
P 9000 3750
F 0 "M1" H 8750 3450 50  0000 L CNN
F 1 "SSD1306" H 8900 3450 50  0000 L CNN
F 2 "" H 9000 4000 50  0001 C CNN
F 3 "" H 9000 4000 50  0001 C CNN
	1    9000 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60B81ED8
P 7650 3250
F 0 "SW1" H 7650 3535 50  0000 C CNN
F 1 "SW_Push" H 7650 3444 50  0000 C CNN
F 2 "" H 7650 3450 50  0001 C CNN
F 3 "~" H 7650 3450 50  0001 C CNN
	1    7650 3250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60B829C2
P 7650 3800
F 0 "SW2" H 7650 4085 50  0000 C CNN
F 1 "SW_Push" H 7650 3994 50  0000 C CNN
F 2 "" H 7650 4000 50  0001 C CNN
F 3 "~" H 7650 4000 50  0001 C CNN
	1    7650 3800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 60B82C78
P 7650 4350
F 0 "SW3" H 7650 4635 50  0000 C CNN
F 1 "SW_Push" H 7650 4544 50  0000 C CNN
F 2 "" H 7650 4550 50  0001 C CNN
F 3 "~" H 7650 4550 50  0001 C CNN
	1    7650 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4000 4600 4000
Wire Wire Line
	4600 4000 4600 6050
Wire Wire Line
	4600 6050 2450 6050
Wire Wire Line
	2450 6050 2450 5150
Wire Wire Line
	2450 5150 2850 5150
Wire Wire Line
	5300 4300 4650 4300
Wire Wire Line
	4650 1150 2400 1150
Wire Wire Line
	2400 1150 2400 2950
Wire Wire Line
	2400 2950 2850 2950
$Comp
L power:GND #PWR?
U 1 1 60B88B25
P 3350 5750
F 0 "#PWR?" H 3350 5500 50  0001 C CNN
F 1 "GND" H 3355 5577 50  0000 C CNN
F 2 "" H 3350 5750 50  0001 C CNN
F 3 "" H 3350 5750 50  0001 C CNN
	1    3350 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B88FBA
P 3500 3550
F 0 "#PWR?" H 3500 3300 50  0001 C CNN
F 1 "GND" H 3505 3377 50  0000 C CNN
F 2 "" H 3500 3550 50  0001 C CNN
F 3 "" H 3500 3550 50  0001 C CNN
	1    3500 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B8941F
P 5900 4700
F 0 "#PWR?" H 5900 4450 50  0001 C CNN
F 1 "GND" H 5905 4527 50  0000 C CNN
F 2 "" H 5900 4700 50  0001 C CNN
F 3 "" H 5900 4700 50  0001 C CNN
	1    5900 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B8A4FF
P 8600 3550
F 0 "#PWR?" H 8600 3300 50  0001 C CNN
F 1 "GND" H 8605 3377 50  0000 C CNN
F 2 "" H 8600 3550 50  0001 C CNN
F 3 "" H 8600 3550 50  0001 C CNN
	1    8600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3550 8600 3350
Wire Wire Line
	8600 3350 8850 3350
Wire Wire Line
	8850 3350 8850 3400
$Comp
L power:GND #PWR?
U 1 1 60B8A9E6
P 7850 4350
F 0 "#PWR?" H 7850 4100 50  0001 C CNN
F 1 "GND" H 7855 4177 50  0000 C CNN
F 2 "" H 7850 4350 50  0001 C CNN
F 3 "" H 7850 4350 50  0001 C CNN
	1    7850 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B8ACD0
P 7850 3800
F 0 "#PWR?" H 7850 3550 50  0001 C CNN
F 1 "GND" H 7855 3627 50  0000 C CNN
F 2 "" H 7850 3800 50  0001 C CNN
F 3 "" H 7850 3800 50  0001 C CNN
	1    7850 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B8AE38
P 7850 3250
F 0 "#PWR?" H 7850 3000 50  0001 C CNN
F 1 "GND" H 7855 3077 50  0000 C CNN
F 2 "" H 7850 3250 50  0001 C CNN
F 3 "" H 7850 3250 50  0001 C CNN
	1    7850 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60B8B41F
P 3200 3850
F 0 "#PWR?" H 3200 3700 50  0001 C CNN
F 1 "VCC" H 3215 4023 50  0000 C CNN
F 2 "" H 3200 3850 50  0001 C CNN
F 3 "" H 3200 3850 50  0001 C CNN
	1    3200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3550 3500 3550
Wire Wire Line
	3350 3850 3200 3850
$Comp
L power:VCC #PWR?
U 1 1 60B8C0CA
P 3350 1650
F 0 "#PWR?" H 3350 1500 50  0001 C CNN
F 1 "VCC" H 3365 1823 50  0000 C CNN
F 2 "" H 3350 1650 50  0001 C CNN
F 3 "" H 3350 1650 50  0001 C CNN
	1    3350 1650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60B8C4E3
P 6000 2700
F 0 "#PWR?" H 6000 2550 50  0001 C CNN
F 1 "VCC" H 6015 2873 50  0000 C CNN
F 2 "" H 6000 2700 50  0001 C CNN
F 3 "" H 6000 2700 50  0001 C CNN
	1    6000 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60B8CB04
P 8950 3400
F 0 "#PWR?" H 8950 3250 50  0001 C CNN
F 1 "VCC" H 8965 3573 50  0000 C CNN
F 2 "" H 8950 3400 50  0001 C CNN
F 3 "" H 8950 3400 50  0001 C CNN
	1    8950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4200 4700 4200
Wire Wire Line
	4700 4200 4700 1100
Wire Wire Line
	4700 1100 2350 1100
Wire Wire Line
	2350 1100 2350 3150
Wire Wire Line
	2350 3150 2850 3150
Wire Wire Line
	5300 3900 4550 3900
Wire Wire Line
	4550 3900 4550 6100
Wire Wire Line
	4550 6100 2400 6100
Wire Wire Line
	2400 6100 2400 5350
Wire Wire Line
	2400 5350 2850 5350
Wire Wire Line
	4650 4300 4650 1150
Wire Wire Line
	5300 4100 4750 4100
Wire Wire Line
	4750 4100 4750 1950
Wire Wire Line
	4750 1950 3850 1950
Wire Wire Line
	5300 3800 4500 3800
Wire Wire Line
	4500 3800 4500 4150
Wire Wire Line
	4500 4150 3850 4150
Text GLabel 2150 3800 1    50   Input ~ 0
~CLK
Text GLabel 2000 3800 1    50   Input ~ 0
~IRL
Wire Wire Line
	2150 4950 2150 3800
Wire Wire Line
	2150 4950 2850 4950
Wire Wire Line
	2000 4850 2000 3800
Wire Wire Line
	2000 4850 2850 4850
NoConn ~ 2850 4750
NoConn ~ 2850 4650
Wire Wire Line
	2850 3250 2850 3550
Wire Wire Line
	2850 3550 3350 3550
Connection ~ 3350 3550
Wire Wire Line
	2850 5450 2800 5450
Wire Wire Line
	2800 5450 2800 5750
Wire Wire Line
	2800 5750 3350 5750
Connection ~ 3350 5750
NoConn ~ 3850 4250
NoConn ~ 3850 2050
NoConn ~ 5300 4400
NoConn ~ 5300 3700
NoConn ~ 5300 3600
NoConn ~ 5300 3500
NoConn ~ 5300 3400
NoConn ~ 5300 3300
NoConn ~ 5300 3200
NoConn ~ 5300 3100
NoConn ~ 5900 2700
NoConn ~ 5700 2700
NoConn ~ 5800 4700
Wire Wire Line
	2850 4150 2500 4150
Wire Wire Line
	2500 4150 2500 5750
Wire Wire Line
	2500 5750 2800 5750
Connection ~ 2800 5750
Entry Wire Line
	2750 4350 2850 4250
Entry Wire Line
	2750 4450 2850 4350
Entry Wire Line
	2750 4550 2850 4450
Entry Wire Line
	2750 4650 2850 4550
Text Notes 2500 4250 0    50   ~ 0
IR [0...3]
Wire Wire Line
	2850 1950 2450 1950
Wire Wire Line
	2450 1950 2450 3550
Wire Wire Line
	2450 3550 2850 3550
Connection ~ 2850 3550
Entry Wire Line
	2750 2150 2850 2050
Entry Wire Line
	2750 2250 2850 2150
Entry Wire Line
	2750 2350 2850 2250
Entry Wire Line
	2750 2450 2850 2350
Entry Wire Line
	2750 2550 2850 2450
Entry Wire Line
	2750 2650 2850 2550
Entry Wire Line
	2750 2750 2850 2650
Entry Wire Line
	2750 2850 2850 2750
Text Notes 2450 2050 0    50   ~ 0
bus[0...7]
Wire Wire Line
	9150 3400 9150 3350
Wire Wire Line
	9150 3350 9350 3350
Wire Wire Line
	9350 3350 9350 4650
Wire Wire Line
	9350 4650 6650 4650
Wire Wire Line
	6650 4650 6650 4100
Wire Wire Line
	6650 4100 6300 4100
Wire Wire Line
	9050 3400 9050 3300
Wire Wire Line
	9050 3300 9400 3300
Wire Wire Line
	9400 3300 9400 4600
Wire Wire Line
	9400 4600 6600 4600
Wire Wire Line
	6600 4600 6600 4200
Wire Wire Line
	6600 4200 6300 4200
Wire Wire Line
	6300 3900 6650 3900
Wire Wire Line
	6650 3900 6650 3250
Wire Wire Line
	6650 3250 7450 3250
Wire Wire Line
	6300 4000 7450 4000
Wire Wire Line
	7450 4000 7450 3800
Wire Wire Line
	7450 4350 6700 4350
Wire Wire Line
	6700 4350 6700 3800
Wire Wire Line
	6700 3800 6300 3800
NoConn ~ 6300 3700
NoConn ~ 6300 4300
NoConn ~ 6300 4400
NoConn ~ 6300 3500
NoConn ~ 6300 3200
NoConn ~ 6300 3100
Wire Bus Line
	2750 4350 2750 4650
Wire Bus Line
	2750 2150 2750 2850
$EndSCHEMATC
