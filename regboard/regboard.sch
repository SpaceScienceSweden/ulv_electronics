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
LIBS:regboard-cache
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
L SCUBE40 P1
U 1 1 57600F48
P 2850 4150
F 0 "P1" H 2850 4800 60  0000 C CNN
F 1 "SCUBE40" H 2850 4700 60  0000 C CNN
F 2 "SCUBE:scube40" H 2750 4000 60  0001 C CNN
F 3 "" H 2750 4000 60  0000 C CNN
	1    2850 4150
	-1   0    0    -1  
$EndComp
$Comp
L SCUBE40 P1
U 2 1 57600F6F
P 6500 4250
F 0 "P1" H 6500 4900 60  0000 C CNN
F 1 "SCUBE40" H 6500 4800 60  0000 C CNN
F 2 "SCUBE:scube40" H 6400 4100 60  0001 C CNN
F 3 "" H 6400 4100 60  0000 C CNN
	2    6500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4050 3900 4050
$Comp
L C_Small C1
U 1 1 5760157E
P 3750 4200
F 0 "C1" H 3760 4270 50  0000 L CNN
F 1 "10u" H 3760 4120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3750 4200 50  0001 C CNN
F 3 "" H 3750 4200 50  0000 C CNN
	1    3750 4200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 576015B5
P 4850 4200
F 0 "C2" H 4860 4270 50  0000 L CNN
F 1 "100n" H 4860 4120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4850 4200 50  0001 C CNN
F 3 "" H 4850 4200 50  0000 C CNN
	1    4850 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4450 4300 4350
Wire Wire Line
	3550 4450 4850 4450
Wire Wire Line
	3750 4450 3750 4300
Wire Wire Line
	3750 4100 3750 4050
Connection ~ 3750 4050
Wire Wire Line
	3300 4150 3550 4150
Wire Wire Line
	3550 4150 3550 4450
Connection ~ 3750 4450
Wire Wire Line
	4700 4050 5250 4050
Wire Wire Line
	4850 4050 4850 4100
Wire Wire Line
	4850 4450 4850 4300
Connection ~ 4300 4450
Wire Wire Line
	5250 4050 5250 4600
Wire Wire Line
	5250 4600 3400 4600
Wire Wire Line
	3400 4600 3400 4250
Wire Wire Line
	3400 4250 3300 4250
Connection ~ 4850 4050
$Comp
L LM7812ACT U1
U 1 1 57601895
P 4300 4100
F 0 "U1" H 4100 4300 50  0000 C CNN
F 1 "LM7812ACT" H 4300 4300 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Horizontal" H 4300 4200 50  0000 C CIN
F 3 "" H 4300 4100 50  0000 C CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
Text Notes 3700 3750 0    60   ~ 0
Very simple linear regulator board
$EndSCHEMATC
