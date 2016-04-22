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
LIBS:scube
LIBS:ulv_power-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L GND #PWR01
U 1 1 56E5B204
P 7000 2050
F 0 "#PWR01" H 7000 1800 50  0001 C CNN
F 1 "GND" H 7000 1900 50  0000 C CNN
F 2 "" H 7000 2050 50  0000 C CNN
F 3 "" H 7000 2050 50  0000 C CNN
	1    7000 2050
	1    0    0    -1  
$EndComp
$Sheet
S 4750 5950 900  1100
U 56E7F686
F0 "chargerchannel4" 60
F1 "chargerchannel.sch" 60
F2 "VSYS" O R 5650 6200 60 
F3 "RUN" I R 5650 6350 60 
F4 "/CHRG" O R 5650 6500 60 
F5 "/FAULT" O R 5650 6650 60 
F6 "VBAT" I R 5650 6050 60 
F7 "PV_IN" I R 5650 6800 60 
F8 "NTC" I R 5650 6950 60 
$EndSheet
$Sheet
S 4750 4650 900  1100
U 56E7F67D
F0 "chargerchannel3" 60
F1 "chargerchannel.sch" 60
F2 "VSYS" O R 5650 4900 60 
F3 "RUN" I R 5650 5050 60 
F4 "/CHRG" O R 5650 5200 60 
F5 "/FAULT" O R 5650 5350 60 
F6 "VBAT" I R 5650 4750 60 
F7 "PV_IN" I R 5650 5500 60 
F8 "NTC" I R 5650 5650 60 
$EndSheet
$Sheet
S 4750 3350 900  1100
U 56E7E09A
F0 "chargerchannel2" 60
F1 "chargerchannel.sch" 60
F2 "VSYS" O R 5650 3600 60 
F3 "RUN" I R 5650 3750 60 
F4 "/CHRG" O R 5650 3900 60 
F5 "/FAULT" O R 5650 4050 60 
F6 "VBAT" I R 5650 3450 60 
F7 "PV_IN" I R 5650 4200 60 
F8 "NTC" I R 5650 4350 60 
$EndSheet
$Sheet
S 4750 2050 900  1100
U 56DC5239
F0 "chargerchannel1" 60
F1 "chargerchannel.sch" 60
F2 "VSYS" O R 5650 2300 60 
F3 "RUN" I R 5650 2450 60 
F4 "/CHRG" O R 5650 2600 60 
F5 "/FAULT" O R 5650 2750 60 
F6 "VBAT" I R 5650 2150 60 
F7 "PV_IN" I R 5650 2900 60 
F8 "NTC" I R 5650 3050 60 
$EndSheet
Connection ~ 6950 900 
Wire Wire Line
	6950 1000 7100 1000
Wire Wire Line
	6850 900  7100 900 
Connection ~ 7000 2000
Wire Wire Line
	7100 2000 7000 2000
Connection ~ 7000 1900
Wire Wire Line
	7100 1900 7000 1900
Wire Wire Line
	7000 1800 7100 1800
Wire Wire Line
	7000 2050 7000 1800
Wire Wire Line
	5650 2150 5950 2150
Text Label 5700 2150 0    60   ~ 0
VBAT1
Entry Wire Line
	5950 2150 6050 2250
Wire Wire Line
	5650 2900 5950 2900
Wire Wire Line
	5650 3050 5950 3050
Wire Wire Line
	5650 3450 5950 3450
Wire Wire Line
	5650 4200 5950 4200
Wire Wire Line
	5650 4350 5950 4350
Wire Wire Line
	5650 5500 5950 5500
Wire Wire Line
	5650 4750 5950 4750
Wire Wire Line
	5650 5650 5950 5650
Wire Wire Line
	5650 6050 5950 6050
Wire Wire Line
	5650 6800 5950 6800
Wire Wire Line
	5650 6950 5950 6950
Entry Wire Line
	5950 2900 6050 3000
Entry Wire Line
	5950 3050 6050 3150
Entry Wire Line
	5950 3450 6050 3550
Entry Wire Line
	5950 4200 6050 4300
Entry Wire Line
	5950 4350 6050 4450
Entry Wire Line
	5950 4750 6050 4850
Entry Wire Line
	5950 5500 6050 5600
Entry Wire Line
	5950 5650 6050 5750
Entry Wire Line
	5950 6050 6050 6150
Entry Wire Line
	5950 6800 6050 6900
Entry Wire Line
	5950 6950 6050 7050
Wire Wire Line
	7100 2800 6850 2800
Wire Wire Line
	7100 2900 6850 2900
Wire Wire Line
	7100 3000 6850 3000
Wire Wire Line
	7100 3100 6850 3100
Text Label 6850 2800 0    60   ~ 0
NTC1
Text Label 6850 2900 0    60   ~ 0
NTC2
Text Label 6850 3000 0    60   ~ 0
NTC3
Text Label 6850 3100 0    60   ~ 0
NTC4
Wire Wire Line
	7100 3350 6850 3350
Wire Wire Line
	7100 3450 6850 3450
Wire Wire Line
	7100 3550 6850 3550
Wire Wire Line
	7100 3650 6850 3650
Wire Wire Line
	7100 3850 6850 3850
Wire Wire Line
	7100 3950 6850 3950
Wire Wire Line
	7100 4050 6850 4050
Wire Wire Line
	7100 4150 6850 4150
Text Label 6850 3350 0    60   ~ 0
VBAT1
Text Label 6850 3450 0    60   ~ 0
VBAT2
Text Label 6850 3550 0    60   ~ 0
VBAT3
Text Label 6850 3650 0    60   ~ 0
VBAT4
Text Label 6850 3850 0    60   ~ 0
PV1
Text Label 6850 3950 0    60   ~ 0
PV2
Text Label 6850 4050 0    60   ~ 0
PV3
Text Label 6850 4150 0    60   ~ 0
PV4
Text Label 5700 2900 0    60   ~ 0
PV1
Text Label 5700 3050 0    60   ~ 0
NTC1
Text Label 5700 3450 0    60   ~ 0
VBAT2
Text Label 5700 4200 0    60   ~ 0
PV2
Text Label 5700 4350 0    60   ~ 0
NTC2
Text Label 5700 4750 0    60   ~ 0
VBAT3
Text Label 5700 5500 0    60   ~ 0
PV3
Text Label 5700 5650 0    60   ~ 0
NTC3
Text Label 5700 6050 0    60   ~ 0
VBAT4
Text Label 5700 6800 0    60   ~ 0
PV4
Text Label 5700 6950 0    60   ~ 0
NTC4
Entry Wire Line
	6750 2900 6850 2800
Entry Wire Line
	6750 3000 6850 2900
Entry Wire Line
	6750 3100 6850 3000
Entry Wire Line
	6750 3200 6850 3100
Entry Wire Line
	6750 3450 6850 3350
Entry Wire Line
	6750 3550 6850 3450
Entry Wire Line
	6750 3650 6850 3550
Entry Wire Line
	6750 3750 6850 3650
Entry Wire Line
	6750 3950 6850 3850
Entry Wire Line
	6750 4050 6850 3950
Entry Wire Line
	6750 4150 6850 4050
Entry Wire Line
	6750 4250 6850 4150
Wire Bus Line
	6050 2250 6050 7050
Wire Bus Line
	6050 7050 6750 7050
Wire Bus Line
	6750 7050 6750 1000
Entry Wire Line
	6750 1000 6850 900 
Wire Wire Line
	6950 1000 6950 900 
Text Label 6900 900  0    60   ~ 0
VSYS
Wire Wire Line
	5650 2300 5950 2300
Entry Wire Line
	5950 2300 6050 2400
Text Label 5700 2300 0    60   ~ 0
VSYS
Wire Wire Line
	5650 3600 5950 3600
Entry Wire Line
	5950 3600 6050 3700
Text Label 5700 3600 0    60   ~ 0
VSYS
Wire Wire Line
	5650 4900 5950 4900
Entry Wire Line
	5950 4900 6050 5000
Text Label 5700 4900 0    60   ~ 0
VSYS
Wire Wire Line
	5650 6200 5950 6200
Entry Wire Line
	5950 6200 6050 6300
Text Label 5700 6200 0    60   ~ 0
VSYS
$Comp
L SCUBE80 P1
U 1 1 571AABE5
P 7600 1700
F 0 "P1" H 7600 2800 60  0000 C CNN
F 1 "SCUBE80" H 7600 2700 60  0000 C CNN
F 2 "scube:scube80" H 7600 1500 60  0001 C CNN
F 3 "" H 7600 1500 60  0000 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
$Comp
L SCUBE80 P1
U 2 1 571AACD2
P 7600 3250
F 0 "P1" H 7600 4000 60  0000 C CNN
F 1 "SCUBE80" H 7600 3900 60  0000 C CNN
F 2 "scube:scube80" H 7600 3050 60  0001 C CNN
F 3 "" H 7600 3050 60  0000 C CNN
	2    7600 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
