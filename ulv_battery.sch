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
LIBS:ulv_photovoltaic
LIBS:ulv_battery-cache
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
Text Notes 5900 3200 0    60   ~ 0
VSYS:\nVCHRG:\nVSOLAR:\nVBAT[1-8]:
$Comp
L PC104 P1
U 1 1 56E49DE7
P 3700 2000
F 0 "P1" H 3700 2700 60  0000 C CNN
F 1 "PC104" H 3700 1300 60  0000 C CNN
F 2 "PC104:PC104" H 3700 1800 60  0001 C CNN
F 3 "" H 3700 1800 60  0000 C CNN
	1    3700 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 56E49E47
P 3000 1500
F 0 "#PWR01" H 3000 1350 50  0001 C CNN
F 1 "+5V" H 3000 1640 50  0000 C CNN
F 2 "" H 3000 1500 60  0000 C CNN
F 3 "" H 3000 1500 60  0000 C CNN
	1    3000 1500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR02
U 1 1 56E49E55
P 3000 1800
F 0 "#PWR02" H 3000 1650 50  0001 C CNN
F 1 "+3V3" H 3000 1940 50  0000 C CNN
F 2 "" H 3000 1800 60  0000 C CNN
F 3 "" H 3000 1800 60  0000 C CNN
	1    3000 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 56E49F0D
P 3000 2100
F 0 "#PWR03" H 3000 1850 50  0001 C CNN
F 1 "GND" H 3000 1950 50  0000 C CNN
F 2 "" H 3000 2100 60  0000 C CNN
F 3 "" H 3000 2100 60  0000 C CNN
	1    3000 2100
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR04
U 1 1 56E49F1B
P 3000 2500
F 0 "#PWR04" H 3000 2250 50  0001 C CNN
F 1 "GNDA" H 3000 2350 50  0000 C CNN
F 2 "" H 3000 2500 60  0000 C CNN
F 3 "" H 3000 2500 60  0000 C CNN
	1    3000 2500
	1    0    0    -1  
$EndComp
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
Text Notes 6450 3200 0    60   ~ 0
Main unregulated system voltage bus (batteries or solar)\n> 5.0 V one or more cells begin charging\nSolar panels only. Can be used more opportunistically\nUnregulated battery voltages
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
$Comp
L CONN_02X01 P2
U 1 1 56E60992
P 3200 3800
F 0 "P2" H 3200 3900 50  0000 C CNN
F 1 "deployment switch" H 3200 3700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01" H 3200 2600 50  0001 C CNN
F 3 "" H 3200 2600 50  0000 C CNN
	1    3200 3800
	1    0    0    -1  
$EndComp
$Sheet
S 1050 4250 1100 400 
U 56E6AFA2
F0 "Solar 1" 60
F1 "solar_circuit.sch" 60
F2 "VPV" O R 2150 4350 60 
F3 "VSYS" O R 2150 4450 60 
F4 "VNEG" I R 2150 4550 60 
$EndSheet
$Comp
L CONN_02X01 P3
U 1 1 56E6B3AE
P 3200 6350
F 0 "P3" H 3200 6450 50  0000 C CNN
F 1 "deployment switch" H 3200 6250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01" H 3200 5150 50  0001 C CNN
F 3 "" H 3200 5150 50  0000 C CNN
	1    3200 6350
	1    0    0    -1  
$EndComp
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
Wire Wire Line
	3200 1500 3000 1500
Wire Wire Line
	3200 1500 3200 1600
Wire Wire Line
	3200 1900 3200 1800
Wire Wire Line
	3200 1800 3000 1800
Wire Wire Line
	3200 2100 3200 2300
Connection ~ 3200 2200
Wire Wire Line
	3200 2500 3000 2500
Wire Wire Line
	3000 2100 3200 2100
Connection ~ 3200 2100
Connection ~ 3200 1800
Connection ~ 3200 1500
Wire Wire Line
	4100 3000 4900 3000
Wire Wire Line
	4900 3000 4900 3100
Connection ~ 4900 3000
Wire Wire Line
	4900 3400 4900 3300
Wire Wire Line
	4900 3600 4900 3700
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
Wire Wire Line
	2150 2200 2350 2200
Wire Wire Line
	2150 2700 2350 2700
Wire Wire Line
	2350 3200 2150 3200
Wire Wire Line
	2150 3700 2350 3700
Wire Wire Line
	2150 2300 2750 2300
Wire Wire Line
	2750 2300 2750 6250
Wire Wire Line
	2150 3800 2950 3800
Wire Wire Line
	2150 2800 2750 2800
Connection ~ 2750 3300
Wire Wire Line
	2150 3300 2750 3300
Connection ~ 2750 2800
Connection ~ 2750 3800
Wire Wire Line
	3450 3800 4100 3800
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
$Comp
L GND #PWR05
U 1 1 56E6E535
P 3700 6350
F 0 "#PWR05" H 3700 6100 50  0001 C CNN
F 1 "GND" H 3700 6200 50  0000 C CNN
F 2 "" H 3700 6350 50  0000 C CNN
F 3 "" H 3700 6350 50  0000 C CNN
	1    3700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6350 3450 6350
Wire Wire Line
	2150 5150 2600 5150
Wire Wire Line
	2600 4550 2600 6350
Wire Wire Line
	2600 5750 2150 5750
Connection ~ 2600 5150
Wire Wire Line
	2150 6350 2950 6350
Connection ~ 2600 5750
Text Label 4700 4400 2    60   ~ 0
PV1
Text Label 4700 4500 2    60   ~ 0
PV2
Text Label 4700 4600 2    60   ~ 0
PV3
Text Label 4700 4700 2    60   ~ 0
PV4
Wire Wire Line
	2150 4350 2350 4350
Wire Wire Line
	2150 4950 2350 4950
Wire Wire Line
	2150 5550 2350 5550
Wire Wire Line
	2150 6150 2400 6150
Text Label 2350 4350 0    60   ~ 0
PV1
Text Label 2350 4950 0    60   ~ 0
PV2
Text Label 2350 5550 0    60   ~ 0
PV3
Text Label 2400 6150 0    60   ~ 0
PV4
Text Label 2350 2200 0    60   ~ 0
VBAT1
Text Label 2350 2700 0    60   ~ 0
VBAT2
Text Label 2350 3200 0    60   ~ 0
VBAT3
Text Label 2350 3700 0    60   ~ 0
VBAT4
Text Label 4700 3900 2    60   ~ 0
VBAT1
Text Label 4700 4000 2    60   ~ 0
VBAT2
Text Label 4700 4100 2    60   ~ 0
VBAT3
Text Label 4700 4200 2    60   ~ 0
VBAT4
Wire Wire Line
	4100 3800 4100 3000
Text Label 4100 3000 0    60   ~ 0
VSYS
Connection ~ 2600 6350
$EndSCHEMATC
