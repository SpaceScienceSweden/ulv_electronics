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
L CONN_02X12 P5
U 1 1 58E26257
P 4050 2800
F 0 "P5" H 4050 3450 50  0000 C CNN
F 1 "CONN_02X12" V 4050 2800 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 4050 1600 50  0001 C CNN
F 3 "" H 4050 1600 50  0000 C CNN
	1    4050 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P1
U 1 1 58E262F8
P 6550 1750
F 0 "P1" H 6550 2000 50  0000 C CNN
F 1 "LANDER" H 6550 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 6550 550 50  0001 C CNN
F 3 "" H 6550 550 50  0000 C CNN
	1    6550 1750
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P6
U 1 1 58E2654F
P 6550 3950
F 0 "P6" H 6550 4250 50  0000 C CNN
F 1 "PROG" H 6550 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 6550 2750 50  0001 C CNN
F 3 "" H 6550 2750 50  0000 C CNN
	1    6550 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 58E26721
P 7500 2950
F 0 "#PWR01" H 7500 2700 50  0001 C CNN
F 1 "GND" H 7500 2800 50  0000 C CNN
F 2 "" H 7500 2950 50  0000 C CNN
F 3 "" H 7500 2950 50  0000 C CNN
	1    7500 2950
	0    -1   -1   0   
$EndComp
Text Label 2200 3550 0    60   ~ 0
SCK
$Comp
L CONN_02X12 P4
U 1 1 58E26EBE
P 3500 2800
F 0 "P4" H 3500 3450 50  0000 C CNN
F 1 "CONN_02X12" V 3500 2800 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 3500 1600 50  0001 C CNN
F 3 "" H 3500 1600 50  0000 C CNN
	1    3500 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X12 P3
U 1 1 58E26EFA
P 2950 2800
F 0 "P3" H 2950 3450 50  0000 C CNN
F 1 "CONN_02X12" V 2950 2800 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 2950 1600 50  0001 C CNN
F 3 "" H 2950 1600 50  0000 C CNN
	1    2950 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X12 P2
U 1 1 58E26F42
P 2400 2800
F 0 "P2" H 2400 3450 50  0000 C CNN
F 1 "CONN_02X12" V 2400 2800 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 2400 1600 50  0001 C CNN
F 3 "" H 2400 1600 50  0000 C CNN
	1    2400 2800
	1    0    0    -1  
$EndComp
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
L +3.3V #PWR02
U 1 1 58E26D24
P 7500 4050
F 0 "#PWR02" H 7500 3900 50  0001 C CNN
F 1 "+3.3V" H 7500 4190 50  0000 C CNN
F 2 "" H 7500 4050 50  0000 C CNN
F 3 "" H 7500 4050 50  0000 C CNN
	1    7500 4050
	0    1    -1   0   
$EndComp
$Comp
L R_Small R1
U 1 1 58E273B2
P 5250 4650
F 0 "R1" H 5280 4670 50  0000 L CNN
F 1 "130" H 5280 4610 50  0000 L CNN
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
F 1 "100n" H 5960 5020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5950 5100 50  0001 C CNN
F 3 "" H 5950 5100 50  0000 C CNN
	1    5950 5100
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 58E27D00
P 5500 4550
F 0 "#FLG03" H 5500 4645 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 4730 50  0000 C CNN
F 2 "" H 5500 4550 50  0000 C CNN
F 3 "" H 5500 4550 50  0000 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58E27F42
P 6400 5150
F 0 "#PWR04" H 6400 4900 50  0001 C CNN
F 1 "GND" H 6400 5000 50  0000 C CNN
F 2 "" H 6400 5150 50  0000 C CNN
F 3 "" H 6400 5150 50  0000 C CNN
	1    6400 5150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 58E28097
P 7450 2850
F 0 "#FLG05" H 7450 2945 50  0001 C CNN
F 1 "PWR_FLAG" H 7450 3030 50  0000 C CNN
F 2 "" H 7450 2850 50  0000 C CNN
F 3 "" H 7450 2850 50  0000 C CNN
	1    7450 2850
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 58E283FB
P 7450 3950
F 0 "#FLG06" H 7450 4045 50  0001 C CNN
F 1 "PWR_FLAG" H 7450 4130 50  0000 C CNN
F 2 "" H 7450 3950 50  0000 C CNN
F 3 "" H 7450 3950 50  0000 C CNN
	1    7450 3950
	1    0    0    -1  
$EndComp
Text Label 4800 4950 0    60   ~ 0
ONEWIRE
Wire Wire Line
	2150 2250 5450 2250
Wire Wire Line
	5450 1600 6800 1600
Connection ~ 4300 2250
Connection ~ 6300 1600
Wire Wire Line
	2150 3250 5450 3250
Wire Wire Line
	5450 4050 7500 4050
Wire Wire Line
	2150 3150 5550 3150
Wire Wire Line
	5550 3950 6800 3950
Wire Wire Line
	2150 3050 4400 3050
Wire Wire Line
	5650 3850 6800 3850
Wire Wire Line
	2150 2950 7500 2950
Wire Wire Line
	5750 3750 6800 3750
Connection ~ 4300 2950
Connection ~ 4300 3050
Connection ~ 4300 3150
Connection ~ 4300 3250
Connection ~ 6300 4150
Connection ~ 6300 4050
Connection ~ 6300 3950
Connection ~ 6300 3850
Connection ~ 6300 3750
Wire Wire Line
	2150 2850 5650 2850
Wire Wire Line
	5750 1900 6800 1900
Wire Wire Line
	5650 1800 6800 1800
Wire Wire Line
	5650 2550 5650 1800
Wire Wire Line
	2150 2750 5750 2750
Connection ~ 4300 2850
Connection ~ 4300 2750
Connection ~ 6300 1800
Connection ~ 6300 1900
Wire Wire Line
	5550 1700 6800 1700
Wire Wire Line
	2150 2650 5750 2650
Connection ~ 4300 2650
Wire Wire Line
	2150 2550 5650 2550
Wire Wire Line
	2150 2350 4400 2350
Wire Wire Line
	4400 2450 4400 2250
Connection ~ 4400 2250
Wire Wire Line
	2150 2450 4400 2450
Connection ~ 4400 2350
Connection ~ 4300 2350
Connection ~ 4300 2450
Connection ~ 4300 2550
Connection ~ 6300 1700
Connection ~ 5550 2950
Connection ~ 3800 2250
Connection ~ 3800 2350
Connection ~ 3800 2450
Connection ~ 3800 2550
Connection ~ 3800 2650
Connection ~ 3800 2750
Connection ~ 3800 2850
Connection ~ 3800 2950
Connection ~ 3800 3050
Connection ~ 3800 3150
Connection ~ 3800 3250
Connection ~ 2700 2250
Connection ~ 2700 2350
Connection ~ 2700 2450
Connection ~ 2700 2550
Connection ~ 2700 2650
Connection ~ 2700 2750
Connection ~ 2700 2850
Connection ~ 2700 2950
Connection ~ 2700 3050
Connection ~ 2700 3150
Connection ~ 2700 3250
Connection ~ 3750 2250
Connection ~ 3750 2350
Connection ~ 3750 2450
Connection ~ 3750 2550
Connection ~ 3750 2650
Connection ~ 3750 2750
Connection ~ 3750 2850
Connection ~ 3750 2950
Connection ~ 3750 3050
Connection ~ 3750 3150
Connection ~ 3750 3250
Connection ~ 2650 2250
Connection ~ 2650 2350
Connection ~ 2650 2450
Connection ~ 2650 2550
Connection ~ 2650 2650
Connection ~ 2650 2750
Connection ~ 2650 2850
Connection ~ 2650 2950
Connection ~ 2650 3050
Connection ~ 2650 3150
Connection ~ 2650 3250
Connection ~ 3250 2250
Connection ~ 3250 2350
Connection ~ 3250 2450
Connection ~ 3250 2550
Connection ~ 3250 2650
Connection ~ 3250 2750
Connection ~ 3250 2850
Connection ~ 3250 2950
Connection ~ 3250 3050
Connection ~ 3250 3150
Connection ~ 3250 3250
Connection ~ 3200 2250
Connection ~ 3200 2350
Connection ~ 3200 2450
Connection ~ 3200 2550
Connection ~ 3200 2650
Connection ~ 3200 2750
Connection ~ 3200 2850
Connection ~ 3200 2950
Connection ~ 3200 3050
Connection ~ 3200 3150
Connection ~ 3200 3250
Wire Wire Line
	4300 3350 5350 3350
Wire Wire Line
	5350 4150 6800 4150
Wire Wire Line
	2650 3450 4300 3450
Wire Wire Line
	3750 3450 3750 3350
Wire Wire Line
	3200 3450 3200 3350
Connection ~ 3750 3450
Wire Wire Line
	2650 3450 2650 3350
Connection ~ 3200 3450
Connection ~ 4300 3350
Wire Wire Line
	5250 4850 5550 4850
Wire Wire Line
	5250 4750 5250 5100
Wire Wire Line
	6050 5100 6400 5100
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
	2150 3550 3800 3550
Wire Wire Line
	2150 3550 2150 3350
Wire Wire Line
	3250 3350 3250 3550
Connection ~ 3250 3550
Wire Wire Line
	2700 3350 2700 3550
Connection ~ 2700 3550
Wire Wire Line
	5500 4550 5500 4850
Connection ~ 5500 4850
Connection ~ 6400 5100
Wire Wire Line
	7450 2850 7450 2950
Connection ~ 7450 2950
Connection ~ 6800 4050
Wire Wire Line
	7450 3950 7450 4300
Connection ~ 7450 4050
Wire Wire Line
	4300 3450 4300 3350
Wire Wire Line
	7450 4300 5250 4300
Wire Wire Line
	5250 4300 5250 4550
Wire Wire Line
	3800 3550 3800 3350
Wire Wire Line
	5450 2250 5450 1600
Wire Wire Line
	5550 2950 5550 1700
Wire Wire Line
	5650 2850 5650 3850
Wire Wire Line
	5550 3150 5550 3950
Wire Wire Line
	5450 3250 5450 4050
Wire Wire Line
	5350 3350 5350 4150
Wire Wire Line
	4400 3050 4400 2950
Connection ~ 4400 2950
Wire Wire Line
	5750 2650 5750 1900
Text Label 6200 1600 2    60   ~ 0
VLANDER
Text Label 6200 1700 2    60   ~ 0
GND
Wire Wire Line
	5750 2750 5750 3750
Text Label 6200 3950 2    60   ~ 0
ONEWIRE
Text Label 6200 4050 2    60   ~ 0
+3.3V
Text Label 6200 4150 2    60   ~ 0
/RESET
Text Label 6200 1800 2    60   ~ 0
A
Text Label 6200 1900 2    60   ~ 0
B
Text Label 6200 3750 2    60   ~ 0
PDO
Text Label 6200 3850 2    60   ~ 0
PDI
$EndSCHEMATC
