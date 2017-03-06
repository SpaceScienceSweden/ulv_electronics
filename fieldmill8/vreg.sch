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
LIBS:fieldmill8-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4850 2450 0    60   ~ 0
Voltage regulators: ZMR250F (+2.5V), TPS72325 (-2.5V)\nOutput current: 10 mA\nInput voltage: +- 5 V\nMinimum input voltage tolerated: +- 4.2 V (ZMR250)\n(5-4.2)/10 mA = 80 ≃ 68 Ohm\n5^2/68 = 370 mW
$Comp
L ZMR250 U?
U 1 1 58B4DA86
P 5850 3250
AR Path="/58B4D07F/58B4DA86" Ref="U?"  Part="1" 
AR Path="/58B50798/58B4DA86" Ref="U?"  Part="1" 
AR Path="/58B5082C/58B4DA86" Ref="U?"  Part="1" 
AR Path="/58B5082E/58B4DA86" Ref="U?"  Part="1" 
F 0 "U?" H 5850 3450 60  0000 C CNN
F 1 "ZMR250" H 5850 3350 60  0000 C CNN
F 2 "" H 5850 3250 60  0000 C CNN
F 3 "" H 5850 3250 60  0000 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
$Comp
L TPS72325 U?
U 1 1 58B4DB08
P 5850 4750
AR Path="/58B4D07F/58B4DB08" Ref="U?"  Part="1" 
AR Path="/58B50798/58B4DB08" Ref="U?"  Part="1" 
AR Path="/58B5082C/58B4DB08" Ref="U?"  Part="1" 
AR Path="/58B5082E/58B4DB08" Ref="U?"  Part="1" 
F 0 "U?" H 5850 5000 60  0000 C CNN
F 1 "TPS72325" H 5850 4900 60  0000 C CNN
F 2 "" H 5850 4750 60  0000 C CNN
F 3 "" H 5850 4750 60  0000 C CNN
	1    5850 4750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58B4EBF6
P 5050 3250
AR Path="/58B4D07F/58B4EBF6" Ref="#PWR?"  Part="1" 
AR Path="/58B50798/58B4EBF6" Ref="#PWR?"  Part="1" 
AR Path="/58B5082C/58B4EBF6" Ref="#PWR?"  Part="1" 
AR Path="/58B5082E/58B4EBF6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 3100 50  0001 C CNN
F 1 "+5V" H 5050 3390 50  0000 C CNN
F 2 "" H 5050 3250 50  0000 C CNN
F 3 "" H 5050 3250 50  0000 C CNN
	1    5050 3250
	0    -1   -1   0   
$EndComp
$Comp
L -5V #PWR?
U 1 1 58B4EC12
P 5000 4700
AR Path="/58B4D07F/58B4EC12" Ref="#PWR?"  Part="1" 
AR Path="/58B50798/58B4EC12" Ref="#PWR?"  Part="1" 
AR Path="/58B5082C/58B4EC12" Ref="#PWR?"  Part="1" 
AR Path="/58B5082E/58B4EC12" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5000 4800 50  0001 C CNN
F 1 "-5V" H 5000 4850 50  0000 C CNN
F 2 "" H 5000 4700 50  0000 C CNN
F 3 "" H 5000 4700 50  0000 C CNN
	1    5000 4700
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 58B4EC76
P 5250 3250
AR Path="/58B4D07F/58B4EC76" Ref="R?"  Part="1" 
AR Path="/58B50798/58B4EC76" Ref="R?"  Part="1" 
AR Path="/58B5082C/58B4EC76" Ref="R?"  Part="1" 
AR Path="/58B5082E/58B4EC76" Ref="R?"  Part="1" 
F 0 "R?" H 5280 3270 50  0000 L CNN
F 1 "68" H 5280 3210 50  0000 L CNN
F 2 "" H 5250 3250 50  0000 C CNN
F 3 "" H 5250 3250 50  0000 C CNN
	1    5250 3250
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 58B4ECE3
P 5400 3400
AR Path="/58B4D07F/58B4ECE3" Ref="C?"  Part="1" 
AR Path="/58B50798/58B4ECE3" Ref="C?"  Part="1" 
AR Path="/58B5082C/58B4ECE3" Ref="C?"  Part="1" 
AR Path="/58B5082E/58B4ECE3" Ref="C?"  Part="1" 
F 0 "C?" H 5410 3470 50  0000 L CNN
F 1 "2u2" H 5410 3320 50  0000 L CNN
F 2 "" H 5400 3400 50  0000 C CNN
F 3 "" H 5400 3400 50  0000 C CNN
	1    5400 3400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 58B4ED9E
P 6350 4950
AR Path="/58B4D07F/58B4ED9E" Ref="C?"  Part="1" 
AR Path="/58B50798/58B4ED9E" Ref="C?"  Part="1" 
AR Path="/58B5082C/58B4ED9E" Ref="C?"  Part="1" 
AR Path="/58B5082E/58B4ED9E" Ref="C?"  Part="1" 
F 0 "C?" H 6360 5020 50  0000 L CNN
F 1 "10n" H 6360 4870 50  0000 L CNN
F 2 "" H 6350 4950 50  0000 C CNN
F 3 "" H 6350 4950 50  0000 C CNN
	1    6350 4950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 58B4EDD0
P 5350 4950
AR Path="/58B4D07F/58B4EDD0" Ref="C?"  Part="1" 
AR Path="/58B50798/58B4EDD0" Ref="C?"  Part="1" 
AR Path="/58B5082C/58B4EDD0" Ref="C?"  Part="1" 
AR Path="/58B5082E/58B4EDD0" Ref="C?"  Part="1" 
F 0 "C?" H 5360 5020 50  0000 L CNN
F 1 "2u2" H 5360 4870 50  0000 L CNN
F 2 "" H 5350 4950 50  0000 C CNN
F 3 "" H 5350 4950 50  0000 C CNN
	1    5350 4950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 58B4EE1E
P 6600 4950
AR Path="/58B4D07F/58B4EE1E" Ref="C?"  Part="1" 
AR Path="/58B50798/58B4EE1E" Ref="C?"  Part="1" 
AR Path="/58B5082C/58B4EE1E" Ref="C?"  Part="1" 
AR Path="/58B5082E/58B4EE1E" Ref="C?"  Part="1" 
F 0 "C?" H 6610 5020 50  0000 L CNN
F 1 "2u2" H 6610 4870 50  0000 L CNN
F 2 "" H 6600 4950 50  0000 C CNN
F 3 "" H 6600 4950 50  0000 C CNN
	1    6600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4850 6350 4800
Wire Wire Line
	6350 4800 6300 4800
$Comp
L R_Small R?
U 1 1 58B4EF14
P 5200 4700
AR Path="/58B4D07F/58B4EF14" Ref="R?"  Part="1" 
AR Path="/58B50798/58B4EF14" Ref="R?"  Part="1" 
AR Path="/58B5082C/58B4EF14" Ref="R?"  Part="1" 
AR Path="/58B5082E/58B4EF14" Ref="R?"  Part="1" 
F 0 "R?" H 5230 4720 50  0000 L CNN
F 1 "68" H 5230 4660 50  0000 L CNN
F 2 "" H 5200 4700 50  0000 C CNN
F 3 "" H 5200 4700 50  0000 C CNN
	1    5200 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 4800 5350 4800
Wire Wire Line
	5350 4700 5350 4850
Wire Wire Line
	5300 4700 5400 4700
Wire Wire Line
	6300 4700 6700 4700
Wire Wire Line
	6600 4700 6600 4850
Connection ~ 5350 4800
Connection ~ 5350 4700
$Comp
L C_Small C?
U 1 1 58B4F155
P 6300 3400
AR Path="/58B4D07F/58B4F155" Ref="C?"  Part="1" 
AR Path="/58B50798/58B4F155" Ref="C?"  Part="1" 
AR Path="/58B5082C/58B4F155" Ref="C?"  Part="1" 
AR Path="/58B5082E/58B4F155" Ref="C?"  Part="1" 
F 0 "C?" H 6310 3470 50  0000 L CNN
F 1 "2u2" H 6310 3320 50  0000 L CNN
F 2 "" H 6300 3400 50  0000 C CNN
F 3 "" H 6300 3400 50  0000 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3250 6450 3250
Connection ~ 6300 3250
Wire Wire Line
	5050 3250 5150 3250
Wire Wire Line
	5350 3250 5450 3250
Wire Wire Line
	5400 3300 5400 3250
Connection ~ 5400 3250
$Comp
L GND #PWR?
U 1 1 58B4F3DE
P 5850 3800
AR Path="/58B4D07F/58B4F3DE" Ref="#PWR?"  Part="1" 
AR Path="/58B50798/58B4F3DE" Ref="#PWR?"  Part="1" 
AR Path="/58B5082C/58B4F3DE" Ref="#PWR?"  Part="1" 
AR Path="/58B5082E/58B4F3DE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 3550 50  0001 C CNN
F 1 "GND" H 5850 3650 50  0000 C CNN
F 2 "" H 5850 3800 50  0000 C CNN
F 3 "" H 5850 3800 50  0000 C CNN
	1    5850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3500 6300 3750
Wire Wire Line
	6300 3750 5400 3750
Wire Wire Line
	5400 3750 5400 3500
Wire Wire Line
	5850 3700 5850 3800
Connection ~ 5850 3750
$Comp
L +2V5 #PWR?
U 1 1 58B4F480
P 6450 3250
AR Path="/58B4D07F/58B4F480" Ref="#PWR?"  Part="1" 
AR Path="/58B50798/58B4F480" Ref="#PWR?"  Part="1" 
AR Path="/58B5082C/58B4F480" Ref="#PWR?"  Part="1" 
AR Path="/58B5082E/58B4F480" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 3100 50  0001 C CNN
F 1 "+2V5" H 6450 3390 50  0000 C CNN
F 2 "" H 6450 3250 50  0000 C CNN
F 3 "" H 6450 3250 50  0000 C CNN
	1    6450 3250
	0    1    1    0   
$EndComp
$Comp
L -2V5 #PWR?
U 1 1 58B4F4E6
P 6700 4700
AR Path="/58B4D07F/58B4F4E6" Ref="#PWR?"  Part="1" 
AR Path="/58B50798/58B4F4E6" Ref="#PWR?"  Part="1" 
AR Path="/58B5082C/58B4F4E6" Ref="#PWR?"  Part="1" 
AR Path="/58B5082E/58B4F4E6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 4550 50  0001 C CNN
F 1 "-2V5" H 6700 4840 50  0000 C CNN
F 2 "" H 6700 4700 50  0000 C CNN
F 3 "" H 6700 4700 50  0000 C CNN
	1    6700 4700
	0    1    1    0   
$EndComp
Connection ~ 6600 4700
$Comp
L GND #PWR?
U 1 1 58B4F537
P 5850 5200
AR Path="/58B4D07F/58B4F537" Ref="#PWR?"  Part="1" 
AR Path="/58B50798/58B4F537" Ref="#PWR?"  Part="1" 
AR Path="/58B5082C/58B4F537" Ref="#PWR?"  Part="1" 
AR Path="/58B5082E/58B4F537" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5850 4950 50  0001 C CNN
F 1 "GND" H 5850 5050 50  0000 C CNN
F 2 "" H 5850 5200 50  0000 C CNN
F 3 "" H 5850 5200 50  0000 C CNN
	1    5850 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5050 5350 5150
Wire Wire Line
	5350 5150 6600 5150
Wire Wire Line
	6600 5150 6600 5050
Wire Wire Line
	6350 5050 6350 5150
Connection ~ 6350 5150
Wire Wire Line
	5850 5100 5850 5200
Connection ~ 5850 5150
Wire Wire Line
	5000 4700 5100 4700
Wire Wire Line
	6300 3300 6300 3250
$EndSCHEMATC
