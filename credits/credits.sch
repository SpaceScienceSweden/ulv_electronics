EESchema Schematic File Version 2
LIBS:credits-rescue
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
L Conn_01x01 P8
U 1 1 58CF8A21
P 1000 6850
F 0 "P8" H 1000 6950 50  0000 C CNN
F 1 "M6" V 1100 6850 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1000 6850 50  0001 C CNN
F 3 "" H 1000 6850 50  0000 C CNN
	1    1000 6850
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 P9
U 1 1 58CF8B3D
P 1000 7050
F 0 "P9" H 1000 7150 50  0000 C CNN
F 1 "M6" V 1100 7050 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1000 7050 50  0001 C CNN
F 3 "" H 1000 7050 50  0000 C CNN
	1    1000 7050
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 P10
U 1 1 58CF8BAE
P 1000 7250
F 0 "P10" H 1000 7350 50  0000 C CNN
F 1 "M6" V 1100 7250 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1000 7250 50  0001 C CNN
F 3 "" H 1000 7250 50  0000 C CNN
	1    1000 7250
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x01 P11
U 1 1 58CF8C94
P 1000 7450
F 0 "P11" H 1000 7550 50  0000 C CNN
F 1 "M6" V 1100 7450 50  0000 C CNN
F 2 "SCUBE:M6_PTH" H 1000 7450 50  0001 C CNN
F 3 "" H 1000 7450 50  0000 C CNN
	1    1000 7450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 58CF8CEE
P 1300 7150
F 0 "#PWR01" H 1300 6900 50  0001 C CNN
F 1 "GND" H 1300 7000 50  0000 C CNN
F 2 "" H 1300 7150 50  0000 C CNN
F 3 "" H 1300 7150 50  0000 C CNN
	1    1300 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 7150 1300 7150
Wire Wire Line
	1250 6850 1250 7450
Wire Wire Line
	1250 6850 1200 6850
Wire Wire Line
	1250 7450 1200 7450
Connection ~ 1250 7150
Wire Wire Line
	1200 7050 1250 7050
Connection ~ 1250 7050
Wire Wire Line
	1250 7250 1200 7250
Connection ~ 1250 7250
$Comp
L Conn_02x12_Odd_Even P4
U 1 1 5A2FE82D
P 5550 3400
F 0 "P4" H 5600 4000 50  0000 C CNN
F 1 "Conn_02x12_Odd_Even" H 5600 2700 50  0000 C CNN
F 2 "SCUBE:LPPB122NFSP-RC-holes-backpads" H 5550 3400 50  0001 C CNN
F 3 "" H 5550 3400 50  0001 C CNN
	1    5550 3400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
