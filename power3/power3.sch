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
L CONN_01X01 P9
U 1 1 5835D9BB
P 1900 3250
F 0 "P9" H 1900 3350 50  0000 C CNN
F 1 "M6" V 2000 3250 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1900 3250 50  0001 C CNN
F 3 "" H 1900 3250 50  0000 C CNN
	1    1900 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5835DBB7
P 1700 3250
F 0 "#PWR01" H 1700 3000 50  0001 C CNN
F 1 "GND" H 1700 3100 50  0000 C CNN
F 2 "" H 1700 3250 50  0000 C CNN
F 3 "" H 1700 3250 50  0000 C CNN
	1    1700 3250
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 5835DC56
P 1900 3450
F 0 "P10" H 1900 3550 50  0000 C CNN
F 1 "M6" V 2000 3450 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1900 3450 50  0001 C CNN
F 3 "" H 1900 3450 50  0000 C CNN
	1    1900 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5835DC5C
P 1700 3450
F 0 "#PWR02" H 1700 3200 50  0001 C CNN
F 1 "GND" H 1700 3300 50  0000 C CNN
F 2 "" H 1700 3450 50  0000 C CNN
F 3 "" H 1700 3450 50  0000 C CNN
	1    1700 3450
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P11
U 1 1 5835DF04
P 1900 3650
F 0 "P11" H 1900 3750 50  0000 C CNN
F 1 "M6" V 2000 3650 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1900 3650 50  0001 C CNN
F 3 "" H 1900 3650 50  0000 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5835DF0A
P 1700 3650
F 0 "#PWR03" H 1700 3400 50  0001 C CNN
F 1 "GND" H 1700 3500 50  0000 C CNN
F 2 "" H 1700 3650 50  0000 C CNN
F 3 "" H 1700 3650 50  0000 C CNN
	1    1700 3650
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P12
U 1 1 5835DF10
P 1900 3850
F 0 "P12" H 1900 3950 50  0000 C CNN
F 1 "M6" V 2000 3850 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1900 3850 50  0001 C CNN
F 3 "" H 1900 3850 50  0000 C CNN
	1    1900 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5835DF16
P 1700 3850
F 0 "#PWR04" H 1700 3600 50  0001 C CNN
F 1 "GND" H 1700 3700 50  0000 C CNN
F 2 "" H 1700 3850 50  0000 C CNN
F 3 "" H 1700 3850 50  0000 C CNN
	1    1700 3850
	0    1    1    0   
$EndComp
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
Wire Wire Line
	2950 3050 6050 3050
Connection ~ 5100 3050
Connection ~ 5550 3050
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
Wire Wire Line
	2950 4150 6050 4150
Wire Wire Line
	2950 4050 6050 4050
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
Connection ~ 5100 4150
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
	6050 3250 5400 3250
Wire Wire Line
	5400 3250 5400 3550
Wire Wire Line
	5400 3550 2950 3550
Connection ~ 5100 3650
Connection ~ 5100 3550
Connection ~ 5550 3250
Connection ~ 5550 3350
Wire Wire Line
	5300 3150 6100 3150
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
$Comp
L GND #PWR05
U 1 1 58E26721
P 6100 3150
F 0 "#PWR05" H 6100 2900 50  0001 C CNN
F 1 "GND" H 6100 3000 50  0000 C CNN
F 2 "" H 6100 3150 50  0000 C CNN
F 3 "" H 6100 3150 50  0000 C CNN
	1    6100 3150
	0    -1   -1   0   
$EndComp
Connection ~ 6050 3150
Text Label 5150 3050 0    60   ~ 0
VIN
Text Label 5150 3550 0    60   ~ 0
A
Text Label 5150 3650 0    60   ~ 0
B
Text Label 5150 3750 0    60   ~ 0
MISO
Text Label 5150 3850 0    60   ~ 0
MOSI
Text Label 5150 3950 0    60   ~ 0
SCK
Text Label 5150 4050 0    60   ~ 0
RESET
Text Label 5150 4150 0    60   ~ 0
VCC
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
Connection ~ 4600 4150
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
Connection ~ 3500 4150
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
Connection ~ 4550 4150
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
Connection ~ 3450 4150
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
Connection ~ 4050 4150
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
Connection ~ 4000 4150
$EndSCHEMATC
