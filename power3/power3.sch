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
LIBS:power3-cache
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
P 4850 3600
F 0 "P5" H 4850 4250 50  0000 C CNN
F 1 "CONN_02X12" V 4850 3600 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 4850 2400 50  0001 C CNN
F 3 "" H 4850 2400 50  0000 C CNN
	1    4850 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P1
U 1 1 58E262F8
P 5800 3200
F 0 "P1" H 5800 3450 50  0000 C CNN
F 1 "LANDER" H 5800 2950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 5800 2000 50  0001 C CNN
F 3 "" H 5800 2000 50  0000 C CNN
	1    5800 3200
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P6
U 1 1 58E2654F
P 5800 3950
F 0 "P6" H 5800 4250 50  0000 C CNN
F 1 "PROG" H 5800 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05" H 5800 2750 50  0001 C CNN
F 3 "" H 5800 2750 50  0000 C CNN
	1    5800 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58E26721
P 6300 3150
F 0 "#PWR05" H 6300 2900 50  0001 C CNN
F 1 "GND" H 6300 3000 50  0000 C CNN
F 2 "" H 6300 3150 50  0000 C CNN
F 3 "" H 6300 3150 50  0000 C CNN
	1    6300 3150
	0    -1   -1   0   
$EndComp
Text Label 5150 3050 0    60   ~ 0
VLANDER
Text Label 5150 3550 0    60   ~ 0
A
Text Label 5150 3650 0    60   ~ 0
B
Text Label 5150 3750 0    60   ~ 0
PDO
Text Label 5150 3850 0    60   ~ 0
PDI
Text Label 3000 4350 0    60   ~ 0
SCK
Text Label 5150 4150 0    60   ~ 0
/RESET
$Comp
L CONN_02X12 P4
U 1 1 58E26EBE
P 4300 3600
F 0 "P4" H 4300 4250 50  0000 C CNN
F 1 "CONN_02X12" V 4300 3600 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 4300 2400 50  0001 C CNN
F 3 "" H 4300 2400 50  0000 C CNN
	1    4300 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X12 P3
U 1 1 58E26EFA
P 3750 3600
F 0 "P3" H 3750 4250 50  0000 C CNN
F 1 "CONN_02X12" V 3750 3600 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 3750 2400 50  0001 C CNN
F 3 "" H 3750 2400 50  0000 C CNN
	1    3750 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X12 P2
U 1 1 58E26F42
P 3200 3600
F 0 "P2" H 3200 4250 50  0000 C CNN
F 1 "CONN_02X12" V 3200 3600 50  0000 C CNN
F 2 "SCUBE:FTSH-112-01-L-D-RA" H 3200 2400 50  0001 C CNN
F 3 "" H 3200 2400 50  0000 C CNN
	1    3200 3600
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
L +3.3V #PWR06
U 1 1 58E26D24
P 6150 4050
F 0 "#PWR06" H 6150 3900 50  0001 C CNN
F 1 "+3.3V" H 6150 4190 50  0000 C CNN
F 2 "" H 6150 4050 50  0000 C CNN
F 3 "" H 6150 4050 50  0000 C CNN
	1    6150 4050
	0    1    1    0   
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
Wire Wire Line
	2950 3050 6050 3050
Connection ~ 5100 3050
Connection ~ 5550 3050
Wire Wire Line
	2950 4050 6150 4050
Wire Wire Line
	2950 3950 6050 3950
Wire Wire Line
	2950 3850 6050 3850
Wire Wire Line
	2950 3750 6050 3750
Connection ~ 5100 3750
Connection ~ 5100 3850
Connection ~ 5100 3950
Connection ~ 5100 4050
Connection ~ 5550 4150
Connection ~ 5550 4050
Connection ~ 5550 3950
Connection ~ 5550 3850
Connection ~ 5550 3750
Wire Wire Line
	2950 3650 5500 3650
Wire Wire Line
	5500 3650 5500 3350
Wire Wire Line
	5500 3350 6050 3350
Wire Wire Line
	5400 3250 6050 3250
Wire Wire Line
	5400 3550 5400 3250
Wire Wire Line
	2950 3550 5400 3550
Connection ~ 5100 3650
Connection ~ 5100 3550
Connection ~ 5550 3250
Connection ~ 5550 3350
Wire Wire Line
	5300 3150 6300 3150
Wire Wire Line
	5300 3450 5300 3150
Wire Wire Line
	2950 3450 5300 3450
Connection ~ 5100 3450
Wire Wire Line
	2950 3350 5300 3350
Connection ~ 5300 3350
Wire Wire Line
	2950 3150 5150 3150
Wire Wire Line
	5150 3250 5150 3050
Connection ~ 5150 3050
Wire Wire Line
	2950 3250 5150 3250
Connection ~ 5150 3150
Connection ~ 5100 3150
Connection ~ 5100 3250
Connection ~ 5100 3350
Connection ~ 5550 3150
Connection ~ 6050 3150
Connection ~ 4600 3050
Connection ~ 4600 3150
Connection ~ 4600 3250
Connection ~ 4600 3350
Connection ~ 4600 3450
Connection ~ 4600 3550
Connection ~ 4600 3650
Connection ~ 4600 3750
Connection ~ 4600 3850
Connection ~ 4600 3950
Connection ~ 4600 4050
Connection ~ 3500 3050
Connection ~ 3500 3150
Connection ~ 3500 3250
Connection ~ 3500 3350
Connection ~ 3500 3450
Connection ~ 3500 3550
Connection ~ 3500 3650
Connection ~ 3500 3750
Connection ~ 3500 3850
Connection ~ 3500 3950
Connection ~ 3500 4050
Connection ~ 4550 3050
Connection ~ 4550 3150
Connection ~ 4550 3250
Connection ~ 4550 3350
Connection ~ 4550 3450
Connection ~ 4550 3550
Connection ~ 4550 3650
Connection ~ 4550 3750
Connection ~ 4550 3850
Connection ~ 4550 3950
Connection ~ 4550 4050
Connection ~ 3450 3050
Connection ~ 3450 3150
Connection ~ 3450 3250
Connection ~ 3450 3350
Connection ~ 3450 3450
Connection ~ 3450 3550
Connection ~ 3450 3650
Connection ~ 3450 3750
Connection ~ 3450 3850
Connection ~ 3450 3950
Connection ~ 3450 4050
Connection ~ 4050 3050
Connection ~ 4050 3150
Connection ~ 4050 3250
Connection ~ 4050 3350
Connection ~ 4050 3450
Connection ~ 4050 3550
Connection ~ 4050 3650
Connection ~ 4050 3750
Connection ~ 4050 3850
Connection ~ 4050 3950
Connection ~ 4050 4050
Connection ~ 4000 3050
Connection ~ 4000 3150
Connection ~ 4000 3250
Connection ~ 4000 3350
Connection ~ 4000 3450
Connection ~ 4000 3550
Connection ~ 4000 3650
Connection ~ 4000 3750
Connection ~ 4000 3850
Connection ~ 4000 3950
Connection ~ 4000 4050
Wire Wire Line
	5100 4150 6050 4150
Wire Wire Line
	3450 4250 5100 4250
Wire Wire Line
	4550 4250 4550 4150
Wire Wire Line
	4000 4250 4000 4150
Connection ~ 4550 4250
Wire Wire Line
	3450 4250 3450 4150
Connection ~ 4000 4250
Connection ~ 5100 4150
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
	2950 4350 4600 4350
Wire Wire Line
	2950 4350 2950 4150
Wire Wire Line
	4050 4150 4050 4350
Connection ~ 4050 4350
Wire Wire Line
	3500 4150 3500 4350
Connection ~ 3500 4350
Text Label 5150 3950 0    60   ~ 0
ONEWIRE
$Comp
L PWR_FLAG #FLG07
U 1 1 58E27D00
P 5500 4550
F 0 "#FLG07" H 5500 4645 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 4730 50  0000 C CNN
F 2 "" H 5500 4550 50  0000 C CNN
F 3 "" H 5500 4550 50  0000 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4550 5500 4850
Connection ~ 5500 4850
$Comp
L GND #PWR08
U 1 1 58E27F42
P 6400 5150
F 0 "#PWR08" H 6400 4900 50  0001 C CNN
F 1 "GND" H 6400 5000 50  0000 C CNN
F 2 "" H 6400 5150 50  0000 C CNN
F 3 "" H 6400 5150 50  0000 C CNN
	1    6400 5150
	1    0    0    -1  
$EndComp
Connection ~ 6400 5100
$Comp
L PWR_FLAG #FLG09
U 1 1 58E28097
P 6200 3050
F 0 "#FLG09" H 6200 3145 50  0001 C CNN
F 1 "PWR_FLAG" H 6200 3230 50  0000 C CNN
F 2 "" H 6200 3050 50  0000 C CNN
F 3 "" H 6200 3050 50  0000 C CNN
	1    6200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3050 6200 3150
Connection ~ 6200 3150
$Comp
L PWR_FLAG #FLG010
U 1 1 58E283FB
P 6300 3900
F 0 "#FLG010" H 6300 3995 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 4080 50  0000 C CNN
F 2 "" H 6300 3900 50  0000 C CNN
F 3 "" H 6300 3900 50  0000 C CNN
	1    6300 3900
	0    1    1    0   
$EndComp
Connection ~ 6050 4050
Wire Wire Line
	6300 3900 6100 3900
Wire Wire Line
	6100 3900 6100 4300
Connection ~ 6100 4050
Wire Wire Line
	5100 4250 5100 4150
Wire Wire Line
	6100 4300 5250 4300
Wire Wire Line
	5250 4300 5250 4550
Wire Wire Line
	4600 4350 4600 4150
Text Label 4800 4950 0    60   ~ 0
ONEWIRE
$EndSCHEMATC
