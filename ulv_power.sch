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
LIBS:ulv_linear
LIBS:pc104
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1050 1350 0    60   ~ 0
Solar panel in\n8-channel li-ion charging circuit\nVbus out
$Sheet
S 4750 2050 900  1100
U 56DC5239
F0 "chargerchannel" 60
F1 "chargerchannel.sch" 60
F2 "VSYS" O R 5650 2300 60 
F3 "RUN" I R 5650 2450 60 
F4 "/CHRG" O R 5650 2600 60 
F5 "/FAULT" O R 5650 2750 60 
F6 "VBAT" I R 5650 2150 60 
F7 "PV_IN" I R 5650 2900 60 
F8 "NTC" I R 5650 3050 60 
$EndSheet
Wire Wire Line
	5650 2150 6350 2150
Wire Wire Line
	6350 2150 6350 3350
$Comp
L PC104 P1
U 1 1 56E5840A
P 7600 1400
F 0 "P1" H 7600 2250 60  0000 C CNN
F 1 "PC104" H 7600 2150 60  0000 C CNN
F 2 "PC104:PC104" H 7600 1200 60  0001 C CNN
F 3 "" H 7600 1200 60  0000 C CNN
	1    7600 1400
	1    0    0    -1  
$EndComp
$Comp
L PC104 P1
U 2 1 56E584B1
P 7600 3250
F 0 "P1" H 7600 4350 60  0000 C CNN
F 1 "PC104" H 7600 4250 60  0000 C CNN
F 2 "PC104:PC104" H 7600 3050 60  0001 C CNN
F 3 "" H 7600 3050 60  0000 C CNN
	2    7600 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 56E5B204
P 7000 1750
F 0 "#PWR01" H 7000 1500 50  0001 C CNN
F 1 "GND" H 7000 1600 50  0000 C CNN
F 2 "" H 7000 1750 50  0000 C CNN
F 3 "" H 7000 1750 50  0000 C CNN
	1    7000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1750 7000 1500
Wire Wire Line
	7000 1500 7100 1500
Wire Wire Line
	7100 1600 7000 1600
Connection ~ 7000 1600
Wire Wire Line
	7100 1700 7000 1700
Connection ~ 7000 1700
Wire Wire Line
	6350 3350 7100 3350
Wire Wire Line
	5650 2300 6950 2300
Wire Wire Line
	6950 2300 6950 2550
Wire Wire Line
	6950 2450 7100 2450
Wire Wire Line
	6950 2550 7100 2550
Connection ~ 6950 2450
Wire Wire Line
	7100 3850 6150 3850
Wire Wire Line
	6150 3850 6150 2900
Wire Wire Line
	6150 2900 5650 2900
$EndSCHEMATC
