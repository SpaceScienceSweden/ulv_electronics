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
Text Label 7000 2300 2    60   ~ 0
SENSOR1
Text Label 7000 2950 2    60   ~ 0
SENSOR2
Text Label 7000 3500 2    60   ~ 0
SENSOR3
Text Label 7000 4100 2    60   ~ 0
SENSOR4
Text Label 7000 4650 2    60   ~ 0
SENSOR5
Text Label 7000 5200 2    60   ~ 0
SENSOR6
$Comp
L CONN_01X01 P1
U 1 1 57ADA033
P 7300 2300
F 0 "P1" H 7300 2400 50  0000 C CNN
F 1 "CONN_01X01" V 7400 2300 50  0000 C CNN
F 2 "SCUBE:plate_hole" H 7300 2300 50  0001 C CNN
F 3 "" H 7300 2300 50  0000 C CNN
	1    7300 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 57ADA08D
P 7300 2950
F 0 "P2" H 7300 3050 50  0000 C CNN
F 1 "CONN_01X01" V 7400 2950 50  0000 C CNN
F 2 "SCUBE:plate_hole" H 7300 2950 50  0001 C CNN
F 3 "" H 7300 2950 50  0000 C CNN
	1    7300 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P3
U 1 1 57ADA0AB
P 7300 3500
F 0 "P3" H 7300 3600 50  0000 C CNN
F 1 "CONN_01X01" V 7400 3500 50  0000 C CNN
F 2 "SCUBE:plate_hole" H 7300 3500 50  0001 C CNN
F 3 "" H 7300 3500 50  0000 C CNN
	1    7300 3500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 57ADA0DC
P 7300 4100
F 0 "P4" H 7300 4200 50  0000 C CNN
F 1 "CONN_01X01" V 7400 4100 50  0000 C CNN
F 2 "SCUBE:plate_hole" H 7300 4100 50  0001 C CNN
F 3 "" H 7300 4100 50  0000 C CNN
	1    7300 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P5
U 1 1 57ADA0F8
P 7300 4650
F 0 "P5" H 7300 4750 50  0000 C CNN
F 1 "CONN_01X01" V 7400 4650 50  0000 C CNN
F 2 "SCUBE:plate_hole" H 7300 4650 50  0001 C CNN
F 3 "" H 7300 4650 50  0000 C CNN
	1    7300 4650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 57ADA131
P 7300 5200
F 0 "P6" H 7300 5300 50  0000 C CNN
F 1 "CONN_01X01" V 7400 5200 50  0000 C CNN
F 2 "SCUBE:plate_hole" H 7300 5200 50  0001 C CNN
F 3 "" H 7300 5200 50  0000 C CNN
	1    7300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2300 7100 2300
Wire Wire Line
	7000 2950 7100 2950
Wire Wire Line
	7000 3500 7100 3500
Wire Wire Line
	7000 4100 7100 4100
Wire Wire Line
	7000 4650 7100 4650
Wire Wire Line
	7000 5200 7100 5200
$Comp
L CONN_01X01 P7
U 1 1 57ADA50A
P 7300 5750
F 0 "P7" H 7300 5850 50  0000 C CNN
F 1 "M3" V 7400 5750 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 7300 5750 50  0001 C CNN
F 3 "" H 7300 5750 50  0000 C CNN
	1    7300 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 57ADA565
P 6900 6050
F 0 "#PWR3" H 6900 5800 50  0001 C CNN
F 1 "GND" H 6900 5900 50  0000 C CNN
F 2 "" H 6900 6050 50  0000 C CNN
F 3 "" H 6900 6050 50  0000 C CNN
	1    6900 6050
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P8
U 1 1 57ADC6AB
P 7300 5950
F 0 "P8" H 7300 6050 50  0000 C CNN
F 1 "M3" V 7400 5950 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 7300 5950 50  0001 C CNN
F 3 "" H 7300 5950 50  0000 C CNN
	1    7300 5950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P9
U 1 1 57ADC6D7
P 7300 6150
F 0 "P9" H 7300 6250 50  0000 C CNN
F 1 "M3" V 7400 6150 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 7300 6150 50  0001 C CNN
F 3 "" H 7300 6150 50  0000 C CNN
	1    7300 6150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 57ADC718
P 7300 6350
F 0 "P10" H 7300 6450 50  0000 C CNN
F 1 "M3" V 7400 6350 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 7300 6350 50  0001 C CNN
F 3 "" H 7300 6350 50  0000 C CNN
	1    7300 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 6050 7000 6050
Wire Wire Line
	7000 5750 7000 6350
Wire Wire Line
	7000 5750 7100 5750
Wire Wire Line
	7000 6350 7100 6350
Connection ~ 7000 6050
Wire Wire Line
	7100 6150 7000 6150
Connection ~ 7000 6150
Wire Wire Line
	7100 5950 7000 5950
Connection ~ 7000 5950
$Comp
L CONN_01X01 P11
U 1 1 58487826
P 8500 5800
F 0 "P11" H 8500 5900 50  0000 C CNN
F 1 "M3" V 8600 5800 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 8500 5800 50  0001 C CNN
F 3 "" H 8500 5800 50  0000 C CNN
	1    8500 5800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P12
U 1 1 58487879
P 8500 6000
F 0 "P12" H 8500 6100 50  0000 C CNN
F 1 "M3" V 8600 6000 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 8500 6000 50  0001 C CNN
F 3 "" H 8500 6000 50  0000 C CNN
	1    8500 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 584878C9
P 8300 5800
F 0 "#PWR1" H 8300 5550 50  0001 C CNN
F 1 "GND" H 8300 5650 50  0000 C CNN
F 2 "" H 8300 5800 50  0000 C CNN
F 3 "" H 8300 5800 50  0000 C CNN
	1    8300 5800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR2
U 1 1 584878F8
P 8300 6000
F 0 "#PWR2" H 8300 5750 50  0001 C CNN
F 1 "GND" H 8300 5850 50  0000 C CNN
F 2 "" H 8300 6000 50  0000 C CNN
F 3 "" H 8300 6000 50  0000 C CNN
	1    8300 6000
	0    1    1    0   
$EndComp
Text Notes 8250 5600 0    60   ~ 0
TACH holes
$EndSCHEMATC
