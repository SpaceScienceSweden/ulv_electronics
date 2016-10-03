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
Sheet 1 3
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
L SCUBE40 P2
U 1 1 57E16F68
P 1200 3050
F 0 "P2" H 1150 2100 60  0000 C CNN
F 1 "SCUBE40" H 1150 4400 60  0000 C CNN
F 2 "SCUBE:scube40_no_holes" H 1100 2900 60  0001 C CNN
F 3 "" H 1100 2900 60  0000 C CNN
	1    1200 3050
	-1   0    0    -1  
$EndComp
$Comp
L SCUBE40 P2
U 2 1 57E16FD3
P 7850 3000
F 0 "P2" H 7800 2050 60  0000 C CNN
F 1 "SCUBE40" H 7800 4350 60  0000 C CNN
F 2 "SCUBE:scube40_no_holes" H 7750 2850 60  0001 C CNN
F 3 "" H 7750 2850 60  0000 C CNN
	2    7850 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X10 P1
U 1 1 57E1708F
P 3200 1500
F 0 "P1" H 3200 2050 50  0000 C CNN
F 1 "CONN_02X10" V 3200 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x10" H 3200 300 50  0001 C CNN
F 3 "" H 3200 300 50  0000 C CNN
	1    3200 1500
	0    -1   -1   0   
$EndComp
$Comp
L +9V #PWR01
U 1 1 57E17111
P 3650 1250
F 0 "#PWR01" H 3650 1100 50  0001 C CNN
F 1 "+9V" H 3650 1390 50  0000 C CNN
F 2 "" H 3650 1250 50  0000 C CNN
F 3 "" H 3650 1250 50  0000 C CNN
	1    3650 1250
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR02
U 1 1 57E1712B
P 3650 1750
F 0 "#PWR02" H 3650 1600 50  0001 C CNN
F 1 "+9V" H 3650 1890 50  0000 C CNN
F 2 "" H 3650 1750 50  0000 C CNN
F 3 "" H 3650 1750 50  0000 C CNN
	1    3650 1750
	-1   0    0    1   
$EndComp
$Comp
L -9VA #PWR03
U 1 1 57E17145
P 3450 1250
F 0 "#PWR03" H 3450 1125 50  0001 C CNN
F 1 "-9VA" H 3450 1400 50  0000 C CNN
F 2 "" H 3450 1250 50  0000 C CNN
F 3 "" H 3450 1250 50  0000 C CNN
	1    3450 1250
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR04
U 1 1 57E1715F
P 3450 1750
F 0 "#PWR04" H 3450 1625 50  0001 C CNN
F 1 "-9VA" H 3450 1900 50  0000 C CNN
F 2 "" H 3450 1750 50  0000 C CNN
F 3 "" H 3450 1750 50  0000 C CNN
	1    3450 1750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 57E17179
P 3550 1100
F 0 "#PWR05" H 3550 850 50  0001 C CNN
F 1 "GND" H 3550 950 50  0000 C CNN
F 2 "" H 3550 1100 50  0000 C CNN
F 3 "" H 3550 1100 50  0000 C CNN
	1    3550 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 57E17198
P 3550 1900
F 0 "#PWR06" H 3550 1650 50  0001 C CNN
F 1 "GND" H 3550 1750 50  0000 C CNN
F 2 "" H 3550 1900 50  0000 C CNN
F 3 "" H 3550 1900 50  0000 C CNN
	1    3550 1900
	1    0    0    -1  
$EndComp
Text Label 3350 950  3    60   ~ 0
TACHa
Text Label 3350 2050 1    60   ~ 0
TACHb
Text Label 3250 2050 1    60   ~ 0
OUT1b
Text Label 3150 2050 1    60   ~ 0
OUT2b
Text Label 3050 2050 1    60   ~ 0
OUT3b
Text Label 3250 950  3    60   ~ 0
OUT1a
Text Label 3150 950  3    60   ~ 0
OUT2a
Text Label 3050 950  3    60   ~ 0
OUT3a
Text Label 2950 950  3    60   ~ 0
A0
Text Label 2850 950  3    60   ~ 0
A1
Text Label 2850 2050 1    60   ~ 0
A1
Text Label 2950 2050 1    60   ~ 0
A0
$Comp
L GND #PWR07
U 1 1 57E17295
P 2750 1250
F 0 "#PWR07" H 2750 1000 50  0001 C CNN
F 1 "GND" H 2750 1100 50  0000 C CNN
F 2 "" H 2750 1250 50  0000 C CNN
F 3 "" H 2750 1250 50  0000 C CNN
	1    2750 1250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 57E172AF
P 2750 1750
F 0 "#PWR08" H 2750 1500 50  0001 C CNN
F 1 "GND" H 2750 1600 50  0000 C CNN
F 2 "" H 2750 1750 50  0000 C CNN
F 3 "" H 2750 1750 50  0000 C CNN
	1    2750 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 57E17464
P 1650 2850
F 0 "#PWR09" H 1650 2600 50  0001 C CNN
F 1 "GND" H 1650 2700 50  0000 C CNN
F 2 "" H 1650 2850 50  0000 C CNN
F 3 "" H 1650 2850 50  0000 C CNN
	1    1650 2850
	0    -1   -1   0   
$EndComp
$Comp
L +9V #PWR010
U 1 1 57E17484
P 1650 3550
F 0 "#PWR010" H 1650 3400 50  0001 C CNN
F 1 "+9V" H 1650 3690 50  0000 C CNN
F 2 "" H 1650 3550 50  0000 C CNN
F 3 "" H 1650 3550 50  0000 C CNN
	1    1650 3550
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR011
U 1 1 57E1749E
P 1800 3650
F 0 "#PWR011" H 1800 3525 50  0001 C CNN
F 1 "-9VA" H 1800 3800 50  0000 C CNN
F 2 "" H 1800 3650 50  0000 C CNN
F 3 "" H 1800 3650 50  0000 C CNN
	1    1800 3650
	0    1    1    0   
$EndComp
$Comp
L R_Small R1
U 1 1 57E931E6
P 1700 1700
F 0 "R1" H 1730 1720 50  0000 L CNN
F 1 "100k" H 1730 1660 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1700 1700 50  0001 C CNN
F 3 "" H 1700 1700 50  0000 C CNN
	1    1700 1700
	1    0    0    -1  
$EndComp
Text Label 2150 3050 2    60   ~ 0
/CS_ADCa
Text Label 2150 3150 2    60   ~ 0
/CS_ADCb
$Comp
L +3V3 #PWR012
U 1 1 57E93FFD
P 1700 1600
F 0 "#PWR012" H 1700 1450 50  0001 C CNN
F 1 "+3V3" H 1700 1740 50  0000 C CNN
F 2 "" H 1700 1600 50  0000 C CNN
F 3 "" H 1700 1600 50  0000 C CNN
	1    1700 1600
	1    0    0    -1  
$EndComp
$Sheet
S 4650 2300 1000 700 
U 57E9770E
F0 "channel1" 60
F1 "adc1_channel.sch" 60
F2 "AIN1" I L 4650 2400 60 
F3 "AIN2" I L 4650 2500 60 
F4 "AIN3" I L 4650 2600 60 
F5 "/CS" I L 4650 2700 60 
F6 "/DRDY" I L 4650 2800 60 
$EndSheet
Text GLabel 1950 3350 2    60   Input ~ 0
f_ADC
Text GLabel 1950 1950 2    60   Input ~ 0
SCLK
Text GLabel 1950 2050 2    60   Input ~ 0
MOSI
Text GLabel 1950 2150 2    60   Input ~ 0
MISO
Text Label 4100 2400 0    60   ~ 0
OUT1a
Text Label 4100 2500 0    60   ~ 0
OUT2a
Text Label 4100 2600 0    60   ~ 0
OUT3a
Text Label 4100 2700 0    60   ~ 0
/CS_ADCa
$Sheet
S 4650 3250 1000 700 
U 57E9B531
F0 "channel2" 60
F1 "adc1_channel.sch" 60
F2 "AIN1" I L 4650 3350 60 
F3 "AIN2" I L 4650 3450 60 
F4 "AIN3" I L 4650 3550 60 
F5 "/CS" I L 4650 3650 60 
F6 "/DRDY" I L 4650 3750 60 
$EndSheet
Text Label 4100 3350 0    60   ~ 0
OUT1b
Text Label 4100 3450 0    60   ~ 0
OUT2b
Text Label 4100 3550 0    60   ~ 0
OUT3b
Text Label 4100 3650 0    60   ~ 0
/CS_ADCb
Text Label 7050 2400 0    60   ~ 0
OUT1a
Text Label 7050 2500 0    60   ~ 0
OUT2a
Text Label 7050 2600 0    60   ~ 0
OUT3a
Text Label 7050 3000 0    60   ~ 0
OUT1b
Text Label 7050 3100 0    60   ~ 0
OUT2b
Text Label 7050 3200 0    60   ~ 0
OUT3b
Text Label 1850 2550 2    60   ~ 0
A1
Text Label 1850 2450 2    60   ~ 0
A0
Text Label 7050 1900 0    60   ~ 0
/DRDYa
Text Label 7050 2000 0    60   ~ 0
/DRDYb
Text Label 4100 2800 0    60   ~ 0
/DRDYa
Text Label 4100 3750 0    60   ~ 0
/DRDYb
$Comp
L MIC5270YM5-TR U2
U 1 1 57EC18D9
P 2950 5500
F 0 "U2" H 2600 5400 60  0000 C CNN
F 1 "MIC5270YM5-TR" V 3300 5400 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 2950 5500 60  0001 C CNN
F 3 "" H 2950 5500 60  0000 C CNN
	1    2950 5500
	-1   0    0    -1  
$EndComp
$Comp
L MAX1659 U1
U 1 1 57EC1B3D
P 2800 4650
F 0 "U1" H 3000 4500 60  0000 C CNN
F 1 "MAX1659" H 2950 5100 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2800 4650 60  0001 C CNN
F 3 "" H 2800 4650 60  0000 C CNN
	1    2800 4650
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR013
U 1 1 57EC1C76
P 3200 6050
F 0 "#PWR013" H 3200 5900 50  0001 C CNN
F 1 "-2V5" H 3200 6190 50  0000 C CNN
F 2 "" H 3200 6050 50  0000 C CNN
F 3 "" H 3200 6050 50  0000 C CNN
	1    3200 6050
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR014
U 1 1 57EC1DAA
P 3800 4500
F 0 "#PWR014" H 3800 4350 50  0001 C CNN
F 1 "+2V5" H 3800 4640 50  0000 C CNN
F 2 "" H 3800 4500 50  0000 C CNN
F 3 "" H 3800 4500 50  0000 C CNN
	1    3800 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 57EC220C
P 3400 4350
F 0 "#PWR015" H 3400 4100 50  0001 C CNN
F 1 "GND" H 3400 4200 50  0000 C CNN
F 2 "" H 3400 4350 50  0000 C CNN
F 3 "" H 3400 4350 50  0000 C CNN
	1    3400 4350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR016
U 1 1 57EC272B
P 2950 5150
F 0 "#PWR016" H 2950 4900 50  0001 C CNN
F 1 "GND" H 2950 5000 50  0000 C CNN
F 2 "" H 2950 5150 50  0000 C CNN
F 3 "" H 2950 5150 50  0000 C CNN
	1    2950 5150
	-1   0    0    1   
$EndComp
NoConn ~ 2750 5150
Text Notes 3500 5650 0    60   ~ 0
R2/R1 = 2.5/1.2 - 1 = 1.083
Text Notes 1750 4950 0    60   ~ 0
R2/R1 = 2.5/1.21 - 1 = 1.066
$Comp
L R_Small R5
U 1 1 57EC2BC7
P 3450 5150
F 0 "R5" H 3480 5170 50  0000 L CNN
F 1 "10k" H 3480 5110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3450 5150 50  0001 C CNN
F 3 "" H 3450 5150 50  0000 C CNN
	1    3450 5150
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 57EC2C99
P 3450 5450
F 0 "R6" H 3480 5470 50  0000 L CNN
F 1 "10k" H 3480 5410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3450 5450 50  0001 C CNN
F 3 "" H 3450 5450 50  0000 C CNN
	1    3450 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 57EC302D
P 3450 5050
F 0 "#PWR017" H 3450 4800 50  0001 C CNN
F 1 "GND" H 3450 4900 50  0000 C CNN
F 2 "" H 3450 5050 50  0000 C CNN
F 3 "" H 3450 5050 50  0000 C CNN
	1    3450 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 3650 1650 3650
Wire Wire Line
	2400 700  3350 700 
Wire Wire Line
	2400 2650 2400 700 
Wire Wire Line
	2850 900  2850 1250
Wire Wire Line
	2950 800  2950 1250
Wire Wire Line
	3050 950  3050 1250
Wire Wire Line
	3150 950  3150 1250
Wire Wire Line
	3250 1250 3250 950 
Wire Wire Line
	3350 700  3350 1250
Wire Wire Line
	3350 2750 3350 1750
Wire Wire Line
	3250 2050 3250 1750
Wire Wire Line
	3150 2050 3150 1750
Wire Wire Line
	3050 2050 3050 1750
Wire Wire Line
	2950 1750 2950 2450
Wire Wire Line
	2850 1750 2850 2550
Wire Wire Line
	3550 1900 3550 1750
Wire Wire Line
	3550 1100 3550 1250
Wire Wire Line
	2850 2550 1650 2550
Wire Wire Line
	2950 2450 1650 2450
Wire Wire Line
	1650 2650 2400 2650
Wire Wire Line
	1650 2750 3350 2750
Wire Wire Line
	1650 2150 1950 2150
Wire Wire Line
	1650 2050 1950 2050
Wire Wire Line
	1950 1950 1650 1950
Wire Wire Line
	1700 1800 1700 2150
Connection ~ 1700 2150
Wire Wire Line
	2150 3150 1650 3150
Wire Wire Line
	1650 3050 2150 3050
Wire Wire Line
	1950 3350 1650 3350
Wire Wire Line
	4100 2400 4650 2400
Wire Wire Line
	4650 2500 4100 2500
Wire Wire Line
	4100 2600 4650 2600
Wire Wire Line
	4650 2700 4100 2700
Wire Wire Line
	4100 3350 4650 3350
Wire Wire Line
	4650 3450 4100 3450
Wire Wire Line
	4100 3550 4650 3550
Wire Wire Line
	4650 3650 4100 3650
Wire Wire Line
	7050 3200 7400 3200
Wire Wire Line
	7050 3100 7400 3100
Wire Wire Line
	7400 3000 7050 3000
Wire Wire Line
	7400 2600 7050 2600
Wire Wire Line
	7400 2500 7050 2500
Wire Wire Line
	7400 2400 7050 2400
Wire Wire Line
	2850 900  2600 900 
Wire Wire Line
	2600 900  2600 2100
Wire Wire Line
	2600 2100 2850 2100
Connection ~ 2850 2100
Wire Wire Line
	2950 2200 2500 2200
Wire Wire Line
	2500 2200 2500 800 
Wire Wire Line
	2500 800  2950 800 
Connection ~ 2950 2200
Wire Wire Line
	7050 2000 7400 2000
Wire Wire Line
	7050 1900 7400 1900
Wire Wire Line
	4100 2800 4650 2800
Wire Wire Line
	4100 3750 4650 3750
Wire Wire Line
	3500 4850 3500 4650
Wire Wire Line
	2300 4850 3500 4850
Wire Wire Line
	2450 4850 2450 4650
Connection ~ 3500 4650
Wire Wire Line
	3600 4550 3400 4550
Wire Wire Line
	3600 3750 3600 4550
Wire Wire Line
	1650 3750 3600 3750
Wire Wire Line
	3400 4450 3600 4450
Connection ~ 3600 4450
Wire Wire Line
	2450 4550 2500 4550
Wire Wire Line
	2450 3750 2450 4550
Connection ~ 2450 3750
Wire Wire Line
	2850 6000 2850 6050
Wire Wire Line
	1750 3850 1750 6050
Wire Wire Line
	1750 3850 1650 3850
Wire Wire Line
	3150 5150 3150 5100
Wire Wire Line
	3150 5100 3350 5100
Wire Wire Line
	3350 5100 3350 5300
Wire Wire Line
	3350 5300 3450 5300
Wire Wire Line
	3450 5250 3450 5350
Connection ~ 3450 5300
Wire Wire Line
	2500 4450 2450 4450
Connection ~ 2450 4450
$Comp
L R_Small R3
U 1 1 57EC3CB4
P 2300 4500
F 0 "R3" H 2330 4520 50  0000 L CNN
F 1 "10k" H 2330 4460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2300 4500 50  0001 C CNN
F 3 "" H 2300 4500 50  0000 C CNN
	1    2300 4500
	-1   0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 57EC3D49
P 2300 4200
F 0 "R2" H 2330 4220 50  0000 L CNN
F 1 "10k" H 2330 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2300 4200 50  0001 C CNN
F 3 "" H 2300 4200 50  0000 C CNN
	1    2300 4200
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 57EC3DD1
P 2300 4100
F 0 "#PWR018" H 2300 3850 50  0001 C CNN
F 1 "GND" H 2300 3950 50  0000 C CNN
F 2 "" H 2300 4100 50  0000 C CNN
F 3 "" H 2300 4100 50  0000 C CNN
	1    2300 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 4350 2300 4350
Wire Wire Line
	2300 4300 2300 4400
Connection ~ 2300 4350
$Comp
L C_Small C3
U 1 1 57EC44F1
P 3800 4800
F 0 "C3" H 3810 4870 50  0000 L CNN
F 1 "10u" H 3810 4720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3800 4800 50  0001 C CNN
F 3 "" H 3800 4800 50  0000 C CNN
	1    3800 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4500 3800 4700
Connection ~ 3800 4650
$Comp
L GND #PWR019
U 1 1 57EC46BE
P 3800 4900
F 0 "#PWR019" H 3800 4650 50  0001 C CNN
F 1 "GND" H 3800 4750 50  0000 C CNN
F 2 "" H 3800 4900 50  0000 C CNN
F 3 "" H 3800 4900 50  0000 C CNN
	1    3800 4900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 57EC472D
P 3050 6450
F 0 "C4" H 3060 6520 50  0000 L CNN
F 1 "10u" H 3060 6370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3050 6450 50  0001 C CNN
F 3 "" H 3050 6450 50  0000 C CNN
	1    3050 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6000 3050 6350
Wire Wire Line
	3200 6050 3200 6150
Wire Wire Line
	3050 6150 3450 6150
Connection ~ 3050 6150
$Comp
L GND #PWR020
U 1 1 57EC4A53
P 3050 6550
F 0 "#PWR020" H 3050 6300 50  0001 C CNN
F 1 "GND" H 3050 6400 50  0000 C CNN
F 2 "" H 3050 6550 50  0000 C CNN
F 3 "" H 3050 6550 50  0000 C CNN
	1    3050 6550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 57EC5329
P 1850 3900
F 0 "C1" H 1860 3970 50  0000 L CNN
F 1 "100n" H 1860 3820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1850 3900 50  0001 C CNN
F 3 "" H 1850 3900 50  0000 C CNN
	1    1850 3900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 57EC541B
P 1850 4300
F 0 "C2" H 1860 4370 50  0000 L CNN
F 1 "100n" H 1860 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1850 4300 50  0001 C CNN
F 3 "" H 1850 4300 50  0000 C CNN
	1    1850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4400 1850 4450
Wire Wire Line
	1850 4450 1750 4450
Connection ~ 1750 4450
Wire Wire Line
	1850 4000 1850 4200
Wire Wire Line
	1850 3800 1850 3750
Connection ~ 1850 3750
$Comp
L GND #PWR021
U 1 1 57EC5644
P 1900 4100
F 0 "#PWR021" H 1900 3850 50  0001 C CNN
F 1 "GND" H 1900 3950 50  0000 C CNN
F 2 "" H 1900 4100 50  0000 C CNN
F 3 "" H 1900 4100 50  0000 C CNN
	1    1900 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 4100 1850 4100
Connection ~ 1850 4100
Wire Wire Line
	3400 4650 3800 4650
Connection ~ 3200 6150
Wire Wire Line
	1750 6050 2850 6050
$Comp
L R_Small R7
U 1 1 57EC8421
P 3450 5800
F 0 "R7" H 3480 5820 50  0000 L CNN
F 1 "830" H 3480 5760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3450 5800 50  0001 C CNN
F 3 "" H 3450 5800 50  0000 C CNN
	1    3450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5550 3450 5700
Wire Wire Line
	3450 6150 3450 5900
$Comp
L R_Small R4
U 1 1 57EC88EE
P 2300 4750
F 0 "R4" H 2330 4770 50  0000 L CNN
F 1 "660" H 2330 4710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2300 4750 50  0001 C CNN
F 3 "" H 2300 4750 50  0000 C CNN
	1    2300 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2300 4600 2300 4650
Connection ~ 2450 4850
Wire Wire Line
	2450 4650 2500 4650
$EndSCHEMATC
