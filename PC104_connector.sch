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
LIBS:pwr
LIBS:pc104
LIBS:DCV1_PWR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L PC104 P104
U 1 1 56DF6470
P 3150 3750
F 0 "P104" H 3150 5350 50  0000 C CNN
F 1 "PC104" H 3150 5250 50  0000 C CNN
F 2 "PC104:PC104" H 1650 3050 60  0001 C CNN
F 3 "" H 1650 3050 60  0000 C CNN
	1    3150 3750
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR012
U 1 1 56DF658E
P 4250 4000
F 0 "#PWR012" H 4250 3750 50  0001 C CNN
F 1 "GNDA" H 4250 3850 50  0000 C CNN
F 2 "" H 4250 4000 60  0000 C CNN
F 3 "" H 4250 4000 60  0000 C CNN
	1    4250 4000
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR013
U 1 1 56DF65CA
P 5300 3800
F 0 "#PWR013" H 5300 3650 50  0001 C CNN
F 1 "+3V3" H 5300 3940 50  0000 C CNN
F 2 "" H 5300 3800 60  0000 C CNN
F 3 "" H 5300 3800 60  0000 C CNN
	1    5300 3800
	0    1    1    0   
$EndComp
Text HLabel 5100 4700 2    60   Input ~ 0
VBAT1
Text HLabel 5750 4600 2    60   Input ~ 0
VBAT2
Text HLabel 5100 4500 2    60   Input ~ 0
VBAT3
Text HLabel 5750 4400 2    60   Input ~ 0
VBAT4
Text Notes 6150 3750 0    60   ~ 0
NOTE: in order to be able to use 2x20 connectors\nfor early prototypes, please only use pins 59-98\nuntil we need more of them.\nThis allows placing a 2x20 connector in center back,\nand using 2x20 PATA cables for connecting boards
Wire Wire Line
	4900 4400 5750 4400
Wire Wire Line
	4900 4500 5100 4500
Wire Wire Line
	4900 4600 5750 4600
Wire Wire Line
	4900 4000 5100 4000
Wire Wire Line
	4950 3900 4950 4000
Wire Wire Line
	4950 3900 4900 3900
Connection ~ 4950 4000
Wire Wire Line
	4950 3950 4400 3950
Wire Wire Line
	4400 3950 4400 3900
Connection ~ 4950 3950
Wire Wire Line
	4250 4000 4400 4000
Wire Wire Line
	4900 3800 5300 3800
Wire Wire Line
	4950 3800 4950 3850
Wire Wire Line
	4950 3850 4400 3850
Wire Wire Line
	4400 3850 4400 3800
Connection ~ 4950 3800
Wire Wire Line
	4900 4700 5100 4700
Wire Wire Line
	4300 4750 3300 4750
Wire Wire Line
	3300 4750 3300 2750
Wire Wire Line
	3300 2750 9800 2750
Wire Wire Line
	9800 2750 9800 4750
Wire Wire Line
	9800 4750 5600 4750
NoConn ~ 4300 4750
NoConn ~ 5600 4750
$Comp
L GND #PWR?
U 1 1 56DF5974
P 5100 4000
F 0 "#PWR?" H 5100 3750 50  0001 C CNN
F 1 "GND" H 5100 3850 50  0000 C CNN
F 2 "" H 5100 4000 60  0000 C CNN
F 3 "" H 5100 4000 60  0000 C CNN
	1    5100 4000
	0    -1   -1   0   
$EndComp
Text HLabel 5100 4300 2    60   Input ~ 0
VSOLAR
Text HLabel 5750 4200 2    60   Input ~ 0
VCHRG
Text HLabel 5100 4100 2    60   Input ~ 0
VSYS
Wire Wire Line
	4900 4100 5100 4100
Wire Wire Line
	4950 4100 4950 4150
Wire Wire Line
	4950 4150 4400 4150
Wire Wire Line
	4400 4150 4400 4100
Connection ~ 4950 4100
Wire Wire Line
	4900 4200 5750 4200
Wire Wire Line
	4950 4200 4950 4250
Wire Wire Line
	4950 4250 4400 4250
Wire Wire Line
	4400 4250 4400 4200
Connection ~ 4950 4200
Wire Wire Line
	4900 4300 5100 4300
Wire Wire Line
	4950 4300 4950 4350
Wire Wire Line
	4950 4350 4400 4350
Wire Wire Line
	4400 4350 4400 4300
Connection ~ 4950 4300
Text Notes 6150 4250 0    60   ~ 0
-When VCHRG > 5.0 V one or more cells begin charging
Text Notes 6150 4150 0    60   ~ 0
-Main unregulated system voltage bus (batteries or solar)
Text Notes 6150 4350 0    60   ~ 0
-Solar panels only. Can be used more opportunistically
Text Notes 6150 4550 0    60   ~ 0
-Unregulated battery voltages
Text HLabel 4200 4700 0    60   Input ~ 0
VBAT5
Text HLabel 3650 4600 0    60   Input ~ 0
VBAT6
Text HLabel 4200 4500 0    60   Input ~ 0
VBAT7
Text HLabel 3650 4400 0    60   Input ~ 0
VBAT8
Wire Wire Line
	3650 4600 4400 4600
Wire Wire Line
	4400 4700 4200 4700
Wire Wire Line
	4400 4500 4200 4500
Wire Wire Line
	4400 4400 3650 4400
$Comp
L +5V #PWR?
U 1 1 56DF5F56
P 5100 3700
F 0 "#PWR?" H 5100 3550 50  0001 C CNN
F 1 "+5V" H 5100 3840 50  0000 C CNN
F 2 "" H 5100 3700 60  0000 C CNN
F 3 "" H 5100 3700 60  0000 C CNN
	1    5100 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3700 4900 3700
Wire Wire Line
	4950 3700 4950 3750
Wire Wire Line
	4950 3750 4400 3750
Wire Wire Line
	4400 3750 4400 3700
Connection ~ 4950 3700
Text Notes 4050 4050 2    60   ~ 0
Analog ground-
$EndSCHEMATC
