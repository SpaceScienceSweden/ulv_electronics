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
LIBS:fieldmill6-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L CONN_01X01 P7
U 1 1 57ADA50A
P 6800 3350
F 0 "P7" H 6800 3450 50  0000 C CNN
F 1 "M3" V 6900 3350 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 6800 3350 50  0001 C CNN
F 3 "" H 6800 3350 50  0000 C CNN
	1    6800 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 57ADA565
P 6400 3650
F 0 "#PWR01" H 6400 3400 50  0001 C CNN
F 1 "GND" H 6400 3500 50  0000 C CNN
F 2 "" H 6400 3650 50  0000 C CNN
F 3 "" H 6400 3650 50  0000 C CNN
	1    6400 3650
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P8
U 1 1 57ADC6AB
P 6800 3550
F 0 "P8" H 6800 3650 50  0000 C CNN
F 1 "M3" V 6900 3550 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 6800 3550 50  0001 C CNN
F 3 "" H 6800 3550 50  0000 C CNN
	1    6800 3550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P9
U 1 1 57ADC6D7
P 6800 3750
F 0 "P9" H 6800 3850 50  0000 C CNN
F 1 "M3" V 6900 3750 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 6800 3750 50  0001 C CNN
F 3 "" H 6800 3750 50  0000 C CNN
	1    6800 3750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 57ADC718
P 6800 3950
F 0 "P10" H 6800 4050 50  0000 C CNN
F 1 "M3" V 6900 3950 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 6800 3950 50  0001 C CNN
F 3 "" H 6800 3950 50  0000 C CNN
	1    6800 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P11
U 1 1 57B04DE2
P 2000 3350
F 0 "P11" H 2000 3900 50  0000 C CNN
F 1 "CONN_01X10" V 2100 3350 50  0000 C CNN
F 2 "SCUBE:SMD_pinheader_1x10" H 2000 3350 50  0001 C CNN
F 3 "" H 2000 3350 50  0000 C CNN
	1    2000 3350
	-1   0    0    -1  
$EndComp
$Comp
L +9V #PWR02
U 1 1 57B04E83
P 2650 2500
F 0 "#PWR02" H 2650 2350 50  0001 C CNN
F 1 "+9V" H 2650 2640 50  0000 C CNN
F 2 "" H 2650 2500 50  0000 C CNN
F 3 "" H 2650 2500 50  0000 C CNN
	1    2650 2500
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR03
U 1 1 57B04EAD
P 2650 3100
F 0 "#PWR03" H 2650 2975 50  0001 C CNN
F 1 "-9VA" H 2650 3250 50  0000 C CNN
F 2 "" H 2650 3100 50  0000 C CNN
F 3 "" H 2650 3100 50  0000 C CNN
	1    2650 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 57B04ED7
P 2650 2800
F 0 "#PWR04" H 2650 2550 50  0001 C CNN
F 1 "GND" H 2650 2650 50  0000 C CNN
F 2 "" H 2650 2800 50  0000 C CNN
F 3 "" H 2650 2800 50  0000 C CNN
	1    2650 2800
	0    -1   -1   0   
$EndComp
Text Label 2650 3200 2    60   ~ 0
TACH
Text Label 2650 3300 2    60   ~ 0
OUT1
Text Label 2650 3400 2    60   ~ 0
OUT2
Text Label 2650 3500 2    60   ~ 0
OUT3
$Sheet
S 3950 2500 800  300 
U 57B05F2F
F0 "channel1" 60
F1 "channel.sch" 60
F2 "OUT" I L 3950 2650 60 
$EndSheet
$Sheet
S 3950 3000 800  300 
U 57B0A0EC
F0 "channel2" 60
F1 "channel.sch" 60
F2 "OUT" I L 3950 3150 60 
$EndSheet
$Sheet
S 3950 3500 800  300 
U 57B0A102
F0 "channel3" 60
F1 "channel.sch" 60
F2 "OUT" I L 3950 3650 60 
$EndSheet
Text GLabel 2450 3800 2    60   Input ~ 0
REF
Text GLabel 3150 3600 2    60   Input ~ 0
A0
Text GLabel 3150 3700 2    60   Input ~ 0
A1
$Comp
L CONN_01X01 P26
U 1 1 57B0B2D9
P 6800 4550
F 0 "P26" H 6800 4650 50  0000 C CNN
F 1 "M3" V 6900 4550 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 6800 4550 50  0001 C CNN
F 3 "" H 6800 4550 50  0000 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P27
U 1 1 57B0B309
P 6800 4750
F 0 "P27" H 6800 4850 50  0000 C CNN
F 1 "M3" V 6900 4750 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 6800 4750 50  0001 C CNN
F 3 "" H 6800 4750 50  0000 C CNN
	1    6800 4750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R13
U 1 1 57B0BBC2
P 2800 3850
F 0 "R13" H 2830 3870 50  0000 L CNN
F 1 "10k" H 2830 3810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2800 3850 50  0001 C CNN
F 3 "" H 2800 3850 50  0000 C CNN
	1    2800 3850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R14
U 1 1 57B0BC38
P 3000 3850
F 0 "R14" H 3030 3870 50  0000 L CNN
F 1 "10k" H 3030 3810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3000 3850 50  0001 C CNN
F 3 "" H 3000 3850 50  0000 C CNN
	1    3000 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 57B0BC68
P 2800 3950
F 0 "#PWR05" H 2800 3700 50  0001 C CNN
F 1 "GND" H 2800 3800 50  0000 C CNN
F 2 "" H 2800 3950 50  0000 C CNN
F 3 "" H 2800 3950 50  0000 C CNN
	1    2800 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 57B0BC92
P 3000 3950
F 0 "#PWR06" H 3000 3700 50  0001 C CNN
F 1 "GND" H 3000 3800 50  0000 C CNN
F 2 "" H 3000 3950 50  0000 C CNN
F 3 "" H 3000 3950 50  0000 C CNN
	1    3000 3950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P28
U 1 1 57B0BFC0
P 2050 4050
F 0 "P28" H 2050 4200 50  0000 C CNN
F 1 "ZEROREF" V 2150 4050 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 2050 4050 50  0001 C CNN
F 3 "" H 2050 4050 50  0000 C CNN
	1    2050 4050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 57B0C03A
P 2250 4100
F 0 "#PWR07" H 2250 3850 50  0001 C CNN
F 1 "GND" H 2250 3950 50  0000 C CNN
F 2 "" H 2250 4100 50  0000 C CNN
F 3 "" H 2250 4100 50  0000 C CNN
	1    2250 4100
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C23
U 1 1 57B0EABA
P 2450 2950
F 0 "C23" H 2460 3020 50  0000 L CNN
F 1 "10u" H 2460 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2450 2950 50  0001 C CNN
F 3 "" H 2450 2950 50  0000 C CNN
	1    2450 2950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 57B0EB49
P 2450 2650
F 0 "C22" H 2460 2720 50  0000 L CNN
F 1 "10u" H 2460 2570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2450 2650 50  0001 C CNN
F 3 "" H 2450 2650 50  0000 C CNN
	1    2450 2650
	1    0    0    -1  
$EndComp
$Comp
L LM324 U10
U 1 1 57BCC15B
P 6000 6400
F 0 "U10" H 6050 6600 50  0000 C CNN
F 1 "LM324" H 6150 6200 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 5950 6500 50  0001 C CNN
F 3 "" H 6050 6600 50  0000 C CNN
	1    6000 6400
	1    0    0    -1  
$EndComp
$Comp
L LM324 U10
U 2 1 57BCC16E
P 1750 6500
F 0 "U10" H 1800 6700 50  0000 C CNN
F 1 "LM324" H 1900 6300 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 1700 6600 50  0001 C CNN
F 3 "" H 1800 6700 50  0000 C CNN
	2    1750 6500
	1    0    0    -1  
$EndComp
$Comp
L LM324 U10
U 3 1 57BCC18D
P 3400 6500
F 0 "U10" H 3450 6700 50  0000 C CNN
F 1 "LM324" H 3550 6300 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 3350 6600 50  0001 C CNN
F 3 "" H 3450 6700 50  0000 C CNN
	3    3400 6500
	1    0    0    -1  
$EndComp
$Comp
L LM324 U10
U 4 1 57BCC1AC
P 7900 5900
F 0 "U10" H 7950 6100 50  0000 C CNN
F 1 "LM324" H 8050 5700 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 7850 6000 50  0001 C CNN
F 3 "" H 7950 6100 50  0000 C CNN
	4    7900 5900
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR08
U 1 1 57BCC1B3
P 7800 5600
F 0 "#PWR08" H 7800 5450 50  0001 C CNN
F 1 "+9V" H 7800 5740 50  0000 C CNN
F 2 "" H 7800 5600 50  0000 C CNN
F 3 "" H 7800 5600 50  0000 C CNN
	1    7800 5600
	1    0    0    -1  
$EndComp
$Comp
L ITR20001 IR1
U 1 1 57BCC1CB
P 950 6000
F 0 "IR1" H 950 6250 60  0000 C CNN
F 1 "ITR20001" H 950 6150 60  0000 C CNN
F 2 "SCUBE:ITR20001-smd" H 950 6000 60  0001 C CNN
F 3 "" H 950 6000 60  0000 C CNN
	1    950  6000
	0    -1   1    0   
$EndComp
$Comp
L R_Small R20
U 1 1 57BCC1D2
P 950 6550
F 0 "R20" H 980 6570 50  0000 L CNN
F 1 "5k6" H 980 6510 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 950 6550 50  0001 C CNN
F 3 "" H 950 6550 50  0000 C CNN
	1    950  6550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R23
U 1 1 57BCC1D9
P 1150 6800
F 0 "R23" H 1180 6820 50  0000 L CNN
F 1 "100k" H 1180 6760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 1150 6800 50  0001 C CNN
F 3 "" H 1150 6800 50  0000 C CNN
	1    1150 6800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R18
U 1 1 57BCC1E0
P 4200 5950
F 0 "R18" H 4230 5970 50  0000 L CNN
F 1 "220k" H 4230 5910 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4200 5950 50  0001 C CNN
F 3 "" H 4200 5950 50  0000 C CNN
	1    4200 5950
	1    0    0    -1  
$EndComp
$Comp
L R_Small R22
U 1 1 57BCC1E7
P 4200 6650
F 0 "R22" H 4230 6670 50  0000 L CNN
F 1 "100k" H 4230 6610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4200 6650 50  0001 C CNN
F 3 "" H 4200 6650 50  0000 C CNN
	1    4200 6650
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR09
U 1 1 57BCC1EE
P 1150 5500
F 0 "#PWR09" H 1150 5350 50  0001 C CNN
F 1 "+9V" H 1150 5640 50  0000 C CNN
F 2 "" H 1150 5500 50  0000 C CNN
F 3 "" H 1150 5500 50  0000 C CNN
	1    1150 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R19
U 1 1 57BCC1FA
P 6050 6000
F 0 "R19" H 6080 6020 50  0000 L CNN
F 1 "1M" H 6080 5960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6050 6000 50  0001 C CNN
F 3 "" H 6050 6000 50  0000 C CNN
	1    6050 6000
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R21
U 1 1 57BCC201
P 2600 6650
F 0 "R21" H 2630 6670 50  0000 L CNN
F 1 "100k" H 2630 6610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2600 6650 50  0001 C CNN
F 3 "" H 2600 6650 50  0000 C CNN
	1    2600 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3650 6400 3650
Wire Wire Line
	6500 3350 6500 4750
Wire Wire Line
	6500 3350 6600 3350
Wire Wire Line
	6500 3950 6600 3950
Connection ~ 6500 3650
Wire Wire Line
	6600 3750 6500 3750
Connection ~ 6500 3750
Wire Wire Line
	6600 3550 6500 3550
Connection ~ 6500 3550
Wire Wire Line
	2200 3200 3450 3200
Wire Wire Line
	2200 3300 3550 3300
Wire Wire Line
	2200 3400 3650 3400
Wire Wire Line
	2200 3500 3650 3500
Wire Wire Line
	2200 3600 3150 3600
Wire Wire Line
	2200 3700 3150 3700
Wire Wire Line
	2200 3800 2450 3800
Wire Wire Line
	6500 4750 6600 4750
Connection ~ 6500 3950
Wire Wire Line
	6600 4550 6500 4550
Connection ~ 6500 4550
Wire Wire Line
	3000 3750 3000 3700
Connection ~ 3000 3700
Wire Wire Line
	2800 3750 2800 3600
Connection ~ 2800 3600
Wire Wire Line
	2250 4000 2350 4000
Wire Wire Line
	2350 4000 2350 3800
Connection ~ 2350 3800
Wire Wire Line
	3950 3650 3650 3650
Wire Wire Line
	3650 3650 3650 3500
Wire Wire Line
	3650 3400 3650 3150
Wire Wire Line
	3650 3150 3950 3150
Wire Wire Line
	3550 3300 3550 2650
Wire Wire Line
	3550 2650 3950 2650
Wire Wire Line
	2250 2500 2650 2500
Wire Wire Line
	2450 2500 2450 2550
Wire Wire Line
	2250 2500 2250 2900
Wire Wire Line
	2250 2900 2200 2900
Connection ~ 2450 2500
Wire Wire Line
	2200 3000 2350 3000
Wire Wire Line
	2350 3000 2350 2800
Wire Wire Line
	2350 2800 2650 2800
Wire Wire Line
	2450 2750 2450 2850
Connection ~ 2450 2800
Wire Wire Line
	2200 3100 2650 3100
Wire Wire Line
	2450 3050 2450 3100
Connection ~ 2450 3100
Wire Wire Line
	1150 6300 1150 6700
Wire Wire Line
	950  5600 950  5650
Wire Wire Line
	1150 5500 1150 5650
Connection ~ 1150 5600
Wire Wire Line
	600  6950 5900 6950
Wire Wire Line
	950  6950 950  6650
Connection ~ 1450 6950
Wire Wire Line
	1150 6900 1150 6950
Connection ~ 1150 6950
Wire Wire Line
	950  6300 950  6450
Wire Wire Line
	1450 6600 1400 6600
Wire Wire Line
	1400 6600 1400 6850
Wire Wire Line
	2100 6850 1400 6850
Wire Wire Line
	2100 6050 2100 6850
Wire Wire Line
	2100 6500 2050 6500
Wire Wire Line
	3100 6600 3050 6600
Wire Wire Line
	3050 6600 3050 6850
Wire Wire Line
	3750 6850 3050 6850
Wire Wire Line
	3750 6500 3700 6500
Wire Wire Line
	7600 6000 7550 6000
Wire Wire Line
	7550 6000 7550 6450
Wire Wire Line
	7550 6450 8250 6450
Wire Wire Line
	8250 6450 8250 5900
Wire Wire Line
	8250 5900 8200 5900
Wire Wire Line
	3450 3200 3450 4950
Wire Wire Line
	1450 6950 1450 7000
Wire Wire Line
	1450 6400 1150 6400
Connection ~ 1150 6400
Wire Wire Line
	1650 6950 1650 6800
Wire Wire Line
	1650 5600 1650 6200
$Comp
L C_Small C25
U 1 1 57DFB474
P 2850 6800
F 0 "C25" H 2860 6870 50  0000 L CNN
F 1 "1u" H 2860 6720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2850 6800 50  0001 C CNN
F 3 "" H 2850 6800 50  0000 C CNN
	1    2850 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6950 2850 6900
Connection ~ 1650 6950
Wire Wire Line
	2200 6650 2100 6650
Connection ~ 2100 6650
Wire Wire Line
	2700 6650 2850 6650
Wire Wire Line
	2850 6400 2850 6700
Wire Wire Line
	3300 6950 3300 6800
Connection ~ 2850 6950
Wire Wire Line
	2850 6400 3100 6400
Connection ~ 2850 6650
Wire Wire Line
	3300 5600 3300 6200
Connection ~ 1650 5600
Wire Wire Line
	5900 5600 5900 6100
Connection ~ 3300 5600
Wire Wire Line
	5900 6950 5900 6700
Connection ~ 3300 6950
Connection ~ 2100 6500
$Comp
L R_Small R24
U 1 1 57DFCD81
P 5350 6300
F 0 "R24" H 5380 6320 50  0000 L CNN
F 1 "100k" H 5380 6260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5350 6300 50  0001 C CNN
F 3 "" H 5350 6300 50  0000 C CNN
	1    5350 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 6300 5700 6300
Wire Wire Line
	4200 6050 4200 6550
Wire Wire Line
	4200 5600 4200 5850
Connection ~ 4200 5600
Wire Wire Line
	4200 6950 4200 6750
Connection ~ 4200 6950
Wire Wire Line
	5950 6000 5650 6000
Wire Wire Line
	5650 6000 5650 6300
Connection ~ 5650 6300
Wire Wire Line
	6350 6400 6300 6400
Wire Wire Line
	6350 4950 6350 6400
Wire Wire Line
	6350 6000 6150 6000
$Comp
L R_Small R25
U 1 1 57DFE4C9
P 2300 6650
F 0 "R25" H 2330 6670 50  0000 L CNN
F 1 "100k" H 2330 6610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2300 6650 50  0001 C CNN
F 3 "" H 2300 6650 50  0000 C CNN
	1    2300 6650
	0    1    1    0   
$EndComp
$Comp
L C_Small C24
U 1 1 57DFE55B
P 2600 6150
F 0 "C24" H 2610 6220 50  0000 L CNN
F 1 "1u" H 2610 6070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2600 6150 50  0001 C CNN
F 3 "" H 2600 6150 50  0000 C CNN
	1    2600 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 6150 3750 6150
Wire Wire Line
	2400 6650 2500 6650
Wire Wire Line
	2500 6150 2450 6150
Wire Wire Line
	2450 6150 2450 6650
Connection ~ 2450 6650
Wire Wire Line
	3750 6150 3750 6850
Connection ~ 3750 6500
Wire Wire Line
	3900 6400 3900 6600
Wire Wire Line
	4000 6300 4000 6050
Wire Wire Line
	4000 6050 2100 6050
$Comp
L GND #PWR010
U 1 1 57DFFFC2
P 1450 7000
F 0 "#PWR010" H 1450 6750 50  0001 C CNN
F 1 "GND" H 1450 6850 50  0000 C CNN
F 2 "" H 1450 7000 50  0000 C CNN
F 3 "" H 1450 7000 50  0000 C CNN
	1    1450 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6300 5250 6300
$Comp
L POT RV1
U 1 1 57E00774
P 4800 5950
F 0 "RV1" H 4800 5870 50  0000 C CNN
F 1 "100k" H 4800 5950 50  0000 C CNN
F 2 "SCUBE:PVZ2A" H 4800 5950 50  0001 C CNN
F 3 "" H 4800 5950 50  0000 C CNN
	1    4800 5950
	1    0    0    1   
$EndComp
$Comp
L CONN_01X02 P29
U 1 1 57E0096F
P 4550 6800
F 0 "P29" H 4550 6950 50  0000 C CNN
F 1 "FIXED" V 4650 6800 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 4550 6800 50  0001 C CNN
F 3 "" H 4550 6800 50  0000 C CNN
	1    4550 6800
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P25
U 1 1 57E00C17
P 3950 6800
F 0 "P25" H 3950 6950 50  0000 C CNN
F 1 "RC" V 4050 6800 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 3950 6800 50  0001 C CNN
F 3 "" H 3950 6800 50  0000 C CNN
	1    3950 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 6600 4500 6400
Wire Wire Line
	4500 6400 4200 6400
Connection ~ 4200 6400
Wire Wire Line
	3900 6400 3750 6400
Connection ~ 3750 6400
Wire Wire Line
	4000 6600 4000 6500
Wire Wire Line
	4000 6500 5700 6500
$Comp
L CONN_01X02 P30
U 1 1 57E01230
P 4850 6800
F 0 "P30" H 4850 6950 50  0000 C CNN
F 1 "POT" V 4950 6800 50  0000 C CNN
F 2 "SCUBE:solder_bridge" H 4850 6800 50  0001 C CNN
F 3 "" H 4850 6800 50  0000 C CNN
	1    4850 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 6600 4600 6500
Connection ~ 4600 6500
Wire Wire Line
	4800 6100 4800 6600
Wire Wire Line
	4650 5950 4600 5950
Wire Wire Line
	4600 5600 4600 5950
Connection ~ 4600 5600
Wire Wire Line
	4950 5950 5100 5950
Wire Wire Line
	5100 5950 5100 6950
Wire Wire Line
	600  5600 5900 5600
Connection ~ 5100 6950
Wire Wire Line
	4900 6600 4900 6500
Connection ~ 4900 6500
$Comp
L GND #PWR011
U 1 1 57E0248D
P 7600 5800
F 0 "#PWR011" H 7600 5550 50  0001 C CNN
F 1 "GND" H 7600 5650 50  0000 C CNN
F 2 "" H 7600 5800 50  0000 C CNN
F 3 "" H 7600 5800 50  0000 C CNN
	1    7600 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 4950 6350 4950
Connection ~ 6350 6000
$Comp
L C_Small C26
U 1 1 57E0543A
P 600 6400
F 0 "C26" H 610 6470 50  0000 L CNN
F 1 "100n" H 610 6320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 600 6400 50  0001 C CNN
F 3 "" H 600 6400 50  0000 C CNN
	1    600  6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  6300 600  5600
Connection ~ 950  5600
Wire Wire Line
	600  6500 600  6950
Connection ~ 950  6950
Text Notes 2550 7150 0    60   ~ 0
fc = 1/(2*pi*100k*1u) = 1.6 Hz
$Comp
L GND #PWR012
U 1 1 57E015F2
P 7800 6200
F 0 "#PWR012" H 7800 5950 50  0001 C CNN
F 1 "GND" H 7800 6050 50  0000 C CNN
F 2 "" H 7800 6200 50  0000 C CNN
F 3 "" H 7800 6200 50  0000 C CNN
	1    7800 6200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
