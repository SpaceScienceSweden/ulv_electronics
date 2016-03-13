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
LIBS:pc104
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
Text HLabel 4700 3900 0    60   Input ~ 0
VBAT1
Text HLabel 4700 4000 0    60   Input ~ 0
VBAT2
Text HLabel 4700 4100 0    60   Input ~ 0
VBAT3
Text HLabel 4700 4200 0    60   Input ~ 0
VBAT4
Text Notes 3400 2600 0    60   ~ 0
NOTE:\nin order to be able to use 2x20 connectors for\nearly prototypes, please only use rows 4-23 and\ncolumns C and D until we need more of them.\nThis allows placing a 2x20 connector in center back,\nand using 2x20 PATA cables for connecting boards
Text HLabel 4700 3600 0    60   Input ~ 0
VSOLAR
Text HLabel 4700 3300 0    60   Input ~ 0
VCHRG
Text HLabel 4700 3000 0    60   Input ~ 0
VSYS
Text Notes 5900 3200 0    60   ~ 0
VSYS:\nVCHRG:\nVSOLAR:\nVBAT[1-8]:
Text HLabel 4700 4400 0    60   Input ~ 0
VBAT5
Text HLabel 4700 4500 0    60   Input ~ 0
VBAT6
Text HLabel 4700 4600 0    60   Input ~ 0
VBAT7
Text HLabel 4700 4700 0    60   Input ~ 0
VBAT8
$Comp
L PC104 P1
U 1 1 56E49DE7
P 3750 3500
F 0 "P1" H 3750 4200 60  0000 C CNN
F 1 "PC104" H 3750 2800 60  0000 C CNN
F 2 "PC104:PC104" H 3750 3300 60  0001 C CNN
F 3 "" H 3750 3300 60  0000 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 56E49E47
P 3050 3000
F 0 "#PWR01" H 3050 2850 50  0001 C CNN
F 1 "+5V" H 3050 3140 50  0000 C CNN
F 2 "" H 3050 3000 60  0000 C CNN
F 3 "" H 3050 3000 60  0000 C CNN
	1    3050 3000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR02
U 1 1 56E49E55
P 3050 3300
F 0 "#PWR02" H 3050 3150 50  0001 C CNN
F 1 "+3V3" H 3050 3440 50  0000 C CNN
F 2 "" H 3050 3300 60  0000 C CNN
F 3 "" H 3050 3300 60  0000 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 56E49F0D
P 3050 3600
F 0 "#PWR03" H 3050 3350 50  0001 C CNN
F 1 "GND" H 3050 3450 50  0000 C CNN
F 2 "" H 3050 3600 60  0000 C CNN
F 3 "" H 3050 3600 60  0000 C CNN
	1    3050 3600
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR04
U 1 1 56E49F1B
P 3050 4000
F 0 "#PWR04" H 3050 3750 50  0001 C CNN
F 1 "GNDA" H 3050 3850 50  0000 C CNN
F 2 "" H 3050 4000 60  0000 C CNN
F 3 "" H 3050 4000 60  0000 C CNN
	1    3050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3000 3050 3000
Wire Wire Line
	3250 3000 3250 3100
Wire Wire Line
	3250 3400 3250 3300
Wire Wire Line
	3250 3300 3050 3300
Wire Wire Line
	3250 3600 3250 3800
Connection ~ 3250 3700
Wire Wire Line
	3250 4000 3050 4000
Wire Wire Line
	3050 3600 3250 3600
Connection ~ 3250 3600
Connection ~ 3250 3300
Connection ~ 3250 3000
$Comp
L PC104 P1
U 2 1 56E4A250
P 5400 3800
F 0 "P1" H 5400 4800 60  0000 C CNN
F 1 "PC104" H 5400 2700 60  0000 C CNN
F 2 "PC104:PC104" H 5400 3600 60  0001 C CNN
F 3 "" H 5400 3600 60  0000 C CNN
	2    5400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3000 4700 3000
Wire Wire Line
	4900 3000 4900 3100
Connection ~ 4900 3000
Wire Wire Line
	4900 3400 4900 3300
Wire Wire Line
	4900 3300 4700 3300
Connection ~ 4900 3300
Wire Wire Line
	4700 3600 4900 3600
Wire Wire Line
	4900 3600 4900 3700
Connection ~ 4900 3600
Wire Wire Line
	4700 3900 4900 3900
Wire Wire Line
	4900 4000 4700 4000
Wire Wire Line
	4700 4100 4900 4100
Wire Wire Line
	4900 4200 4700 4200
Wire Wire Line
	4700 4400 4900 4400
Wire Wire Line
	4900 4500 4700 4500
Wire Wire Line
	4700 4600 4900 4600
Wire Wire Line
	4900 4700 4700 4700
Text Notes 6450 3200 0    60   ~ 0
Main unregulated system voltage bus (batteries or solar)\n> 5.0 V one or more cells begin charging\nSolar panels only. Can be used more opportunistically\nUnregulated battery voltages
$EndSCHEMATC
