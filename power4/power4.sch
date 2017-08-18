EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:scube
LIBS:power4-cache
EELAYER 25 0
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
L CONN_02X04 P1
U 1 1 58E262F8
P 8300 4650
F 0 "P1" H 8300 4900 50  0000 C CNN
F 1 "LANDER" H 8300 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 8300 3450 50  0001 C CNN
F 3 "" H 8300 3450 50  0000 C CNN
	1    8300 4650
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P6
U 1 1 58E2654F
P 4250 4400
F 0 "P6" H 4250 4700 50  0000 C CNN
F 1 "PROG" H 4250 4100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 4250 3200 50  0001 C CNN
F 3 "" H 4250 3200 50  0000 C CNN
	1    4250 4400
	1    0    0    -1  
$EndComp
Text Label 3600 4400 0    60   ~ 0
SCK
$Comp
L DS18B20Z U1
U 1 1 58E26C10
P 5950 4800
F 0 "U1" H 5950 5050 60  0000 C CNN
F 1 "DS18B20Z" H 5950 4950 39  0000 C CNN
F 2 "SMD_Packages:SOIC-8-N" H 5950 4800 60  0001 C CNN
F 3 "" H 5950 4800 60  0000 C CNN
	1    5950 4800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR01
U 1 1 58E26D24
P 4700 4400
F 0 "#PWR01" H 4700 4250 50  0001 C CNN
F 1 "+3.3V" H 4700 4540 50  0000 C CNN
F 2 "" H 4700 4400 50  0000 C CNN
F 3 "" H 4700 4400 50  0000 C CNN
	1    4700 4400
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 58E273B2
P 5250 4650
F 0 "R1" H 5280 4670 50  0000 L CNN
F 1 "120" H 5280 4610 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 5250 4650 50  0001 C CNN
F 3 "" H 5250 4650 50  0000 C CNN
	1    5250 4650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 58E27456
P 5950 5100
F 0 "C1" H 5960 5170 50  0000 L CNN
F 1 "10u" H 5960 5020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5950 5100 50  0001 C CNN
F 3 "" H 5950 5100 50  0000 C CNN
	1    5950 5100
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 58E27D00
P 5500 4550
F 0 "#FLG02" H 5500 4645 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 4730 50  0000 C CNN
F 2 "" H 5500 4550 50  0000 C CNN
F 3 "" H 5500 4550 50  0000 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58E27F42
P 6400 5150
F 0 "#PWR03" H 6400 4900 50  0001 C CNN
F 1 "GND" H 6400 5000 50  0000 C CNN
F 2 "" H 6400 5150 50  0000 C CNN
F 3 "" H 6400 5150 50  0000 C CNN
	1    6400 5150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 58E28097
P 6500 5050
F 0 "#FLG04" H 6500 5145 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 5230 50  0000 C CNN
F 2 "" H 6500 5050 50  0000 C CNN
F 3 "" H 6500 5050 50  0000 C CNN
	1    6500 5050
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 58E283FB
P 5150 4400
F 0 "#FLG05" H 5150 4495 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 4580 50  0000 C CNN
F 2 "" H 5150 4400 50  0000 C CNN
F 3 "" H 5150 4400 50  0000 C CNN
	1    5150 4400
	1    0    0    -1  
$EndComp
Text Label 4800 4950 0    60   ~ 0
ONEWIRE
Text Label 7600 4500 0    60   ~ 0
VLANDER
Text Label 7600 4600 0    60   ~ 0
GND
Text Label 3600 4500 0    60   ~ 0
+3.3V
Text Label 3600 4600 0    60   ~ 0
/RESET
Text Label 7600 4700 0    60   ~ 0
A
Text Label 7600 4800 0    60   ~ 0
B
Text Label 3600 4200 0    60   ~ 0
PDO
Text Label 3600 4300 0    60   ~ 0
PDI
$Comp
L GND #PWR06
U 1 1 59010D35
P 5500 2500
F 0 "#PWR06" H 5500 2250 50  0001 C CNN
F 1 "GND" H 5500 2350 50  0000 C CNN
F 2 "" H 5500 2500 50  0000 C CNN
F 3 "" H 5500 2500 50  0000 C CNN
	1    5500 2500
	0    -1   -1   0   
$EndComp
Text Label 5500 2900 2    60   ~ 0
ONEWIRE
Text Label 5500 2700 2    60   ~ 0
PDO
Text Label 5500 2800 2    60   ~ 0
PDI
Text Label 5500 2400 2    60   ~ 0
SCK
Text Label 5500 2300 2    60   ~ 0
/RESET
Text Label 5500 2600 2    60   ~ 0
VLANDER
Text Label 5500 2100 2    60   ~ 0
A
Text Label 5500 2200 2    60   ~ 0
B
Text Label 5500 3000 2    60   ~ 0
+3.3V
$Comp
L CONN_01X02 P7
U 1 1 5900F7A8
P 9300 1650
F 0 "P7" H 9300 1800 50  0000 C CNN
F 1 "CONN_01X02" V 9400 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 9300 1650 50  0001 C CNN
F 3 "" H 9300 1650 50  0000 C CNN
	1    9300 1650
	1    0    0    -1  
$EndComp
Text Label 8800 1600 0    60   ~ 0
+3.3V
$Comp
L LED D1
U 1 1 5900F901
P 9050 1900
F 0 "D1" H 9050 2000 50  0000 C CNN
F 1 "LED" H 9050 1800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 9050 1900 50  0001 C CNN
F 3 "" H 9050 1900 50  0000 C CNN
	1    9050 1900
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R2
U 1 1 5900F94A
P 9050 2200
F 0 "R2" H 9080 2220 50  0000 L CNN
F 1 "1k3" H 9080 2160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 9050 2200 50  0001 C CNN
F 3 "" H 9050 2200 50  0000 C CNN
	1    9050 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5900F9AF
P 9050 2300
F 0 "#PWR07" H 9050 2050 50  0001 C CNN
F 1 "GND" H 9050 2150 50  0000 C CNN
F 2 "" H 9050 2300 50  0000 C CNN
F 3 "" H 9050 2300 50  0000 C CNN
	1    9050 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4500 8550 4500
Connection ~ 8050 4500
Wire Wire Line
	3600 4500 5250 4500
Wire Wire Line
	3600 4400 4500 4400
Wire Wire Line
	3600 4300 4500 4300
Wire Wire Line
	3600 4200 4500 4200
Connection ~ 4000 4600
Connection ~ 4000 4500
Connection ~ 4000 4400
Connection ~ 4000 4300
Connection ~ 4000 4200
Wire Wire Line
	7600 4800 8550 4800
Wire Wire Line
	7600 4700 8550 4700
Connection ~ 8050 4700
Connection ~ 8050 4800
Wire Wire Line
	7600 4600 8550 4600
Connection ~ 8050 4600
Wire Wire Line
	3600 4600 4500 4600
Wire Wire Line
	5250 4850 5550 4850
Wire Wire Line
	5250 4750 5250 5100
Wire Wire Line
	6400 5100 6050 5100
Wire Wire Line
	6400 4950 6400 5150
Wire Wire Line
	6400 4950 6350 4950
Wire Wire Line
	5250 5100 5850 5100
Connection ~ 5250 4850
Wire Wire Line
	4800 4950 5550 4950
Wire Wire Line
	5500 4550 5500 4850
Connection ~ 5500 4850
Connection ~ 6400 5100
Connection ~ 4500 4500
Wire Wire Line
	5150 4400 5150 4500
Connection ~ 5150 4500
Wire Wire Line
	6500 5050 6400 5050
Connection ~ 6400 5050
Wire Wire Line
	5250 4500 5250 4550
Wire Wire Line
	4700 4400 4700 4500
Connection ~ 4700 4500
Wire Wire Line
	4500 2500 5500 2500
Connection ~ 5050 2500
Wire Wire Line
	5500 2700 5050 2700
Wire Wire Line
	5500 2800 5050 2800
Wire Wire Line
	5500 2300 5050 2300
Wire Wire Line
	5500 2400 5050 2400
Wire Wire Line
	4500 2600 5500 2600
Wire Wire Line
	4500 2800 4550 2800
Connection ~ 4550 2600
Wire Wire Line
	4550 2700 4500 2700
Connection ~ 4500 2700
Connection ~ 5050 2600
Wire Wire Line
	4500 2300 4550 2300
Connection ~ 4550 2500
Wire Wire Line
	4550 2400 4500 2400
Connection ~ 4500 2400
Wire Wire Line
	4550 2200 5500 2200
Wire Wire Line
	4550 2100 5500 2100
Connection ~ 5050 2100
Connection ~ 5050 2200
Wire Wire Line
	4550 2900 5500 2900
Wire Wire Line
	4550 3000 5500 3000
Connection ~ 5050 2900
Connection ~ 5050 3000
Wire Wire Line
	9050 2050 9050 2100
Wire Wire Line
	9100 1700 9050 1700
Wire Wire Line
	9050 1700 9050 1750
Wire Wire Line
	8800 1600 9100 1600
$Comp
L CONN_01X02 P8
U 1 1 59010021
P 10200 1650
F 0 "P8" H 10200 1800 50  0000 C CNN
F 1 "CONN_01X02" V 10300 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 10200 1650 50  0001 C CNN
F 3 "" H 10200 1650 50  0000 C CNN
	1    10200 1650
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 59010028
P 9950 1900
F 0 "D2" H 9950 2000 50  0000 C CNN
F 1 "LED" H 9950 1800 50  0000 C CNN
F 2 "LEDs:LED_0805" H 9950 1900 50  0001 C CNN
F 3 "" H 9950 1900 50  0000 C CNN
	1    9950 1900
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R3
U 1 1 5901002E
P 9950 2200
F 0 "R3" H 9980 2220 50  0000 L CNN
F 1 "22k" H 9980 2160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 9950 2200 50  0001 C CNN
F 3 "" H 9950 2200 50  0000 C CNN
	1    9950 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 59010034
P 9950 2300
F 0 "#PWR08" H 9950 2050 50  0001 C CNN
F 1 "GND" H 9950 2150 50  0000 C CNN
F 2 "" H 9950 2300 50  0000 C CNN
F 3 "" H 9950 2300 50  0000 C CNN
	1    9950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2050 9950 2100
Wire Wire Line
	10000 1700 9950 1700
Wire Wire Line
	9950 1700 9950 1750
Wire Wire Line
	9600 1600 10000 1600
Text Label 9600 1600 0    60   ~ 0
VLANDER
Text Notes 8900 1250 0    60   ~ 0
Remove jumpers before flight\nPrevents us from drawing 30 mW\nextra from 24 V in flight
Text Notes 9150 2700 0    60   ~ 0
1 mA, 2.0 V each
$Comp
L CONN_02X12 P2
U 1 1 59949B40
P 4800 2550
F 0 "P2" H 4800 3200 50  0000 C CNN
F 1 "CONN_02X12" V 4800 2550 50  0000 C CNN
F 2 "SCUBE:FTSH-112-04-L-D-RA" H 4800 1350 50  0001 C CNN
F 3 "" H 4800 1350 50  0001 C CNN
	1    4800 2550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 5994AE06
P 7250 2500
F 0 "#PWR09" H 7250 2250 50  0001 C CNN
F 1 "GND" H 7250 2350 50  0000 C CNN
F 2 "" H 7250 2500 50  0000 C CNN
F 3 "" H 7250 2500 50  0000 C CNN
	1    7250 2500
	0    -1   -1   0   
$EndComp
Text Label 7250 2900 2    60   ~ 0
ONEWIRE
Text Label 7250 2700 2    60   ~ 0
PDO
Text Label 7250 2800 2    60   ~ 0
PDI
Text Label 7250 2400 2    60   ~ 0
SCK
Text Label 7250 2300 2    60   ~ 0
/RESET
Text Label 7250 2600 2    60   ~ 0
VLANDER
Text Label 7250 2100 2    60   ~ 0
A
Text Label 7250 2200 2    60   ~ 0
B
Text Label 7250 3000 2    60   ~ 0
+3.3V
Wire Wire Line
	6250 2500 7250 2500
Connection ~ 6800 2500
Wire Wire Line
	7250 2700 6800 2700
Wire Wire Line
	7250 2800 6800 2800
Wire Wire Line
	7250 2300 6800 2300
Wire Wire Line
	7250 2400 6800 2400
Wire Wire Line
	6250 2600 7250 2600
Wire Wire Line
	5900 2800 6300 2800
Connection ~ 6300 2600
Wire Wire Line
	6300 2700 6250 2700
Connection ~ 6250 2700
Connection ~ 6800 2600
Wire Wire Line
	5900 2300 6300 2300
Connection ~ 6300 2500
Wire Wire Line
	6300 2400 6250 2400
Connection ~ 6250 2400
Wire Wire Line
	6300 2200 7250 2200
Wire Wire Line
	6300 2100 7250 2100
Connection ~ 6800 2100
Connection ~ 6800 2200
Wire Wire Line
	6300 2900 7250 2900
Wire Wire Line
	6300 3000 7250 3000
Connection ~ 6800 2900
Connection ~ 6800 3000
$Comp
L CONN_02X12 P3
U 1 1 5994AE2F
P 6550 2550
F 0 "P3" H 6550 3200 50  0000 C CNN
F 1 "CONN_02X12" V 6550 2550 50  0000 C CNN
F 2 "SCUBE:FTSH-112-04-L-D-RA" H 6550 1350 50  0001 C CNN
F 3 "" H 6550 1350 50  0001 C CNN
	1    6550 2550
	-1   0    0    -1  
$EndComp
Text Notes 6300 1800 0    60   ~ 0
Flipped 180°
Wire Wire Line
	6800 3100 6850 3100
Wire Wire Line
	6850 3100 6850 3200
Wire Wire Line
	6850 3200 5100 3200
Wire Wire Line
	5100 3200 5100 3100
Wire Wire Line
	5100 3100 5050 3100
Wire Wire Line
	6800 2000 6850 2000
Wire Wire Line
	6850 2000 6850 1850
Wire Wire Line
	6850 1850 5100 1850
Wire Wire Line
	5100 1850 5100 2000
Wire Wire Line
	5100 2000 5050 2000
Wire Wire Line
	6250 2300 6250 2500
Wire Wire Line
	6250 2600 6250 2800
Wire Wire Line
	4500 2600 4500 2800
Wire Wire Line
	4500 2300 4500 2500
Wire Wire Line
	4550 2000 4500 2000
Wire Wire Line
	4500 2000 4500 1800
Wire Wire Line
	4500 1800 6250 1800
Wire Wire Line
	6250 1800 6250 2000
Wire Wire Line
	6250 2000 6300 2000
Wire Wire Line
	6300 3100 6250 3100
Wire Wire Line
	6250 3100 6250 3250
Wire Wire Line
	6250 3250 4500 3250
Wire Wire Line
	4500 3250 4500 3100
Wire Wire Line
	4500 3100 4550 3100
$Comp
L R_Small R5
U 1 1 59972D00
P 6100 2000
F 0 "R5" H 6130 2020 50  0000 L CNN
F 1 "0" H 6130 1960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6100 2000 50  0001 C CNN
F 3 "" H 6100 2000 50  0001 C CNN
	1    6100 2000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 59972DB0
P 5900 2000
F 0 "R4" H 5930 2020 50  0000 L CNN
F 1 "0" H 5930 1960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5900 2000 50  0001 C CNN
F 3 "" H 5900 2000 50  0001 C CNN
	1    5900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2300 5900 2100
Connection ~ 6250 2300
Wire Wire Line
	6100 2100 6100 2300
Connection ~ 6100 2300
Wire Wire Line
	6100 1900 6100 1850
Connection ~ 6100 1850
Wire Wire Line
	5900 1900 5900 1800
Connection ~ 5900 1800
$Comp
L R_Small R7
U 1 1 59973059
P 6100 3050
F 0 "R7" H 6130 3070 50  0000 L CNN
F 1 "0" H 6130 3010 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6100 3050 50  0001 C CNN
F 3 "" H 6100 3050 50  0001 C CNN
	1    6100 3050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 599730BD
P 5900 3050
F 0 "R6" H 5930 3070 50  0000 L CNN
F 1 "0" H 5930 3010 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5900 3050 50  0001 C CNN
F 3 "" H 5900 3050 50  0001 C CNN
	1    5900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2950 5900 2800
Connection ~ 6250 2800
Wire Wire Line
	6100 2950 6100 2800
Connection ~ 6100 2800
Wire Wire Line
	6100 3150 6100 3200
Connection ~ 6100 3200
Wire Wire Line
	5900 3150 5900 3250
Connection ~ 5900 3250
$EndSCHEMATC
