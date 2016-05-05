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
LIBS:ulv_photovoltaic
LIBS:ulv_ti
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
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
L +5V #PWR3
U 1 1 56E49E47
P 4700 3000
F 0 "#PWR3" H 4700 2850 50  0001 C CNN
F 1 "+5V" H 4700 3140 50  0000 C CNN
F 2 "" H 4700 3000 60  0000 C CNN
F 3 "" H 4700 3000 60  0000 C CNN
	1    4700 3000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR4
U 1 1 56E49E55
P 4700 3300
F 0 "#PWR4" H 4700 3150 50  0001 C CNN
F 1 "+3V3" H 4700 3440 50  0000 C CNN
F 2 "" H 4700 3300 60  0000 C CNN
F 3 "" H 4700 3300 60  0000 C CNN
	1    4700 3300
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR5
U 1 1 56E49F1B
P 4700 4100
F 0 "#PWR5" H 4700 3850 50  0001 C CNN
F 1 "GNDA" H 4700 3950 50  0000 C CNN
F 2 "" H 4700 4100 60  0000 C CNN
F 3 "" H 4700 4100 60  0000 C CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
Text Notes 6450 3200 0    60   ~ 0
Main unregulated system voltage bus (batteries or solar)\nUnregulated battery voltages
$Sheet
S 1050 2100 1100 300 
U 56E5DF65
F0 "Battery 1" 60
F1 "battery_circuit.sch" 60
F2 "VBAT" B R 2150 2200 60 
F3 "VSYS" O R 2150 2300 60 
$EndSheet
$Sheet
S 1050 2600 1100 300 
U 56E5E7C1
F0 "Battery 2" 60
F1 "battery_circuit.sch" 60
F2 "VBAT" B R 2150 2700 60 
F3 "VSYS" O R 2150 2800 60 
$EndSheet
$Sheet
S 1050 3100 1100 300 
U 56E5E9EC
F0 "Battery 3" 60
F1 "battery_circuit.sch" 60
F2 "VBAT" B R 2150 3200 60 
F3 "VSYS" O R 2150 3300 60 
$EndSheet
$Sheet
S 1050 3600 1100 300 
U 56E5EE46
F0 "Battery 4" 60
F1 "battery_circuit.sch" 60
F2 "VBAT" O R 2150 3700 60 
F3 "VSYS" O R 2150 3800 60 
$EndSheet
$Sheet
S 1050 4250 1100 400 
U 56E6AFA2
F0 "Solar 1" 60
F1 "solar_circuit.sch" 60
F2 "VPV" O R 2150 4350 60 
F3 "VSYS" O R 2150 4450 60 
F4 "VNEG" I R 2150 4550 60 
$EndSheet
$Sheet
S 1050 4850 1100 400 
U 56E6B7CE
F0 "Solar 2" 60
F1 "solar_circuit.sch" 60
F2 "VPV" O R 2150 4950 60 
F3 "VSYS" O R 2150 5050 60 
F4 "VNEG" I R 2150 5150 60 
$EndSheet
$Sheet
S 1050 5450 1100 400 
U 56E6DEA5
F0 "Solar 3" 60
F1 "solar_circuit.sch" 60
F2 "VPV" O R 2150 5550 60 
F3 "VSYS" O R 2150 5650 60 
F4 "VNEG" I R 2150 5750 60 
$EndSheet
$Sheet
S 1050 6050 1100 400 
U 56E6DEAA
F0 "Solar 4" 60
F1 "solar_circuit.sch" 60
F2 "VPV" O R 2150 6150 60 
F3 "VSYS" O R 2150 6250 60 
F4 "VNEG" I R 2150 6350 60 
$EndSheet
$Comp
L GND #PWR1
U 1 1 56E6E535
P 3700 6400
F 0 "#PWR1" H 3700 6150 50  0001 C CNN
F 1 "GND" H 3700 6250 50  0000 C CNN
F 2 "" H 3700 6400 50  0000 C CNN
F 3 "" H 3700 6400 50  0000 C CNN
	1    3700 6400
	1    0    0    -1  
$EndComp
Text Label 4900 5800 2    60   ~ 0
PV1
Text Label 4900 5900 2    60   ~ 0
PV2
Text Label 4900 6000 2    60   ~ 0
PV3
Text Label 4900 6100 2    60   ~ 0
PV4
Text Label 2200 4350 0    60   ~ 0
PV1
Text Label 2200 4950 0    60   ~ 0
PV2
Text Label 2200 5550 0    60   ~ 0
PV3
Text Label 2200 6150 0    60   ~ 0
PV4
Text Label 2200 2200 0    60   ~ 0
VBAT1
Text Label 2200 2700 0    60   ~ 0
VBAT2
Text Label 2200 3200 0    60   ~ 0
VBAT3
Text Label 2200 3700 0    60   ~ 0
VBAT4
Text Label 4900 5300 2    60   ~ 0
VBAT1
Text Label 4900 5400 2    60   ~ 0
VBAT2
Text Label 4900 5500 2    60   ~ 0
VBAT3
Text Label 4900 5600 2    60   ~ 0
VBAT4
Text Label 3600 2700 0    60   ~ 0
VSYS
Entry Wire Line
	2450 2200 2550 2100
Entry Wire Line
	2450 2700 2550 2600
Entry Wire Line
	2450 3200 2550 3100
Entry Wire Line
	2450 3700 2550 3600
Entry Wire Line
	2450 4350 2550 4250
Entry Wire Line
	2450 4950 2550 4850
Entry Wire Line
	2450 5550 2550 5450
Entry Wire Line
	2450 6150 2550 6050
Entry Wire Line
	4550 5400 4650 5300
Entry Wire Line
	4550 5500 4650 5400
Entry Wire Line
	4550 5600 4650 5500
Entry Wire Line
	4550 5700 4650 5600
Entry Wire Line
	4550 5900 4650 5800
Entry Wire Line
	4550 6000 4650 5900
Entry Wire Line
	4550 6100 4650 6000
Entry Wire Line
	4550 6200 4650 6100
Wire Wire Line
	4900 3000 4700 3000
Wire Wire Line
	4900 3000 4900 3100
Wire Wire Line
	4900 3400 4900 3300
Wire Wire Line
	4900 3300 4700 3300
Wire Wire Line
	3700 3600 4900 3600
Connection ~ 4900 3300
Connection ~ 4900 3000
Wire Wire Line
	3600 2700 4900 2700
Wire Wire Line
	4650 5300 4900 5300
Wire Wire Line
	4650 5400 4900 5400
Wire Wire Line
	4650 5500 4900 5500
Wire Wire Line
	4650 5600 4900 5600
Wire Wire Line
	4650 5800 4900 5800
Wire Wire Line
	4650 5900 4900 5900
Wire Wire Line
	4650 6000 4900 6000
Wire Wire Line
	4650 6100 4900 6100
Wire Wire Line
	2150 2200 2450 2200
Wire Wire Line
	2150 2700 2450 2700
Wire Wire Line
	2150 3200 2450 3200
Wire Wire Line
	2150 3700 2450 3700
Wire Wire Line
	2150 2300 2750 2300
Wire Wire Line
	2750 2300 2750 6250
Wire Wire Line
	2150 3800 3150 3800
Wire Wire Line
	2150 2800 2750 2800
Connection ~ 2750 3300
Wire Wire Line
	2150 3300 2750 3300
Connection ~ 2750 2800
Connection ~ 2750 3800
Wire Wire Line
	3250 3800 3600 3800
Wire Wire Line
	2150 4550 2600 4550
Wire Wire Line
	2750 4450 2150 4450
Wire Wire Line
	2750 5050 2150 5050
Connection ~ 2750 4450
Wire Wire Line
	2750 5650 2150 5650
Connection ~ 2750 5050
Wire Wire Line
	2750 6250 2150 6250
Connection ~ 2750 5650
Wire Wire Line
	2150 6350 3700 6350
Wire Wire Line
	2150 5150 2600 5150
Wire Wire Line
	2600 4550 2600 6350
Wire Wire Line
	2600 5750 2150 5750
Connection ~ 2600 5150
Connection ~ 2600 5750
Wire Wire Line
	2150 4350 2450 4350
Wire Wire Line
	2150 4950 2450 4950
Wire Wire Line
	2150 5550 2450 5550
Wire Wire Line
	2150 6150 2450 6150
Wire Wire Line
	3600 3800 3600 2700
Connection ~ 2600 6350
Wire Bus Line
	4550 5400 4550 6650
Wire Bus Line
	4550 6650 2550 6650
Wire Bus Line
	2550 6650 2550 2100
Wire Wire Line
	3700 3600 3700 6400
Text Notes 5900 3200 0    60   ~ 0
VSYS:\nVBAT[1-8]:
Wire Wire Line
	4700 4100 4700 4000
Wire Wire Line
	4700 4000 4900 4000
Wire Wire Line
	4900 3600 4900 3800
Connection ~ 4900 3700
$Comp
L SCUBE80 P1
U 1 1 57054248
P 5400 3500
F 0 "P1" H 5400 4600 60  0000 C CNN
F 1 "SCUBE80" H 5400 4500 60  0000 C CNN
F 2 "Scube:scube80" H 5400 3300 60  0001 C CNN
F 3 "" H 5400 3300 60  0000 C CNN
	1    5400 3500
	1    0    0    -1  
$EndComp
$Comp
L SCUBE80 P1
U 2 1 57054381
P 5400 5200
F 0 "P1" H 5400 5950 60  0000 C CNN
F 1 "SCUBE80" H 5400 5850 60  0000 C CNN
F 2 "Scube:scube80" H 5400 5000 60  0001 C CNN
F 3 "" H 5400 5000 60  0000 C CNN
	2    5400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2700 4900 2800
$Comp
L R_Small R33
U 1 1 57196FCB
P 4050 3150
F 0 "R33" H 4080 3170 50  0000 L CNN
F 1 "2k2" H 4080 3110 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4050 3150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 4050 3150 50  0001 C CNN
F 4 "MULTICOMP" H 4050 3150 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060312K2" H 4050 3150 60  0001 C CNN "Mfg. Part Number"
F 6 "9330810" H 4050 3150 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060312k2/motst-tjockfilm-2k2-1-0-063w-0603/dp/9330810" H 4050 3150 60  0001 C CNN "1st Distrib. Link"
	1    4050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2950 4050 3050
$Comp
L GND #PWR2
U 1 1 5719705E
P 4050 3350
F 0 "#PWR2" H 4050 3100 50  0001 C CNN
F 1 "GND" H 4050 3200 50  0000 C CNN
F 2 "" H 4050 3350 50  0000 C CNN
F 3 "" H 4050 3350 50  0000 C CNN
	1    4050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3350 4050 3250
Wire Wire Line
	4050 2750 4050 2700
Connection ~ 4050 2700
Connection ~ 3700 6350
$Comp
L CONN_01X02 P2
U 1 1 57198D3C
P 3200 3550
F 0 "P2" H 3200 3700 50  0000 C CNN
F 1 "CONN_01X02" V 3300 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3200 3550 50  0001 C CNN
F 3 "" H 3200 3550 50  0000 C CNN
	1    3200 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 3800 3150 3750
Wire Wire Line
	3250 3750 3250 3800
$Comp
L Led_Small D25
U 1 1 5719F83E
P 4050 2850
F 0 "D25" H 4000 2975 50  0000 L CNN
F 1 "GREEN" H 3900 2750 50  0000 L CNN
F 2 "LEDs:LED_0603" V 4050 2850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/485053.pdf" V 4050 2850 50  0001 C CNN
F 4 "VISHAY" H 4050 2850 60  0001 C CNN "Mfg. Name"
F 5 "TLMP1100-GS08" H 4050 2850 60  0001 C CNN "Mfg. Part Number"
F 6 "1328306" H 4050 2850 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/vishay/tlmp1100-gs08/led-0603-green/dp/1328306" H 4050 2850 60  0001 C CNN "1st Distrib. Link"
	1    4050 2850
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
