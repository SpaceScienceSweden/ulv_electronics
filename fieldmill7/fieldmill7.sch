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
LIBS:fieldmill7-cache
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
P 10300 4750
F 0 "P7" H 10300 4850 50  0000 C CNN
F 1 "M3" V 10400 4750 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 10300 4750 50  0001 C CNN
F 3 "" H 10300 4750 50  0000 C CNN
	1    10300 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 57ADA565
P 9900 5050
F 0 "#PWR01" H 9900 4800 50  0001 C CNN
F 1 "GND" H 9900 4900 50  0000 C CNN
F 2 "" H 9900 5050 50  0000 C CNN
F 3 "" H 9900 5050 50  0000 C CNN
	1    9900 5050
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P8
U 1 1 57ADC6AB
P 10300 4950
F 0 "P8" H 10300 5050 50  0000 C CNN
F 1 "M3" V 10400 4950 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 10300 4950 50  0001 C CNN
F 3 "" H 10300 4950 50  0000 C CNN
	1    10300 4950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P9
U 1 1 57ADC6D7
P 10300 5150
F 0 "P9" H 10300 5250 50  0000 C CNN
F 1 "M3" V 10400 5150 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 10300 5150 50  0001 C CNN
F 3 "" H 10300 5150 50  0000 C CNN
	1    10300 5150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 57ADC718
P 10300 5350
F 0 "P10" H 10300 5450 50  0000 C CNN
F 1 "M3" V 10400 5350 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 10300 5350 50  0001 C CNN
F 3 "" H 10300 5350 50  0000 C CNN
	1    10300 5350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 P11
U 1 1 57B04DE2
P 1600 3350
F 0 "P11" H 1600 3900 50  0000 C CNN
F 1 "CONN_01X10" V 1700 3350 50  0000 C CNN
F 2 "SCUBE:SMD_pinheader_1x10" H 1600 3350 50  0001 C CNN
F 3 "" H 1600 3350 50  0000 C CNN
	1    1600 3350
	-1   0    0    -1  
$EndComp
$Comp
L -9VA #PWR02
U 1 1 57B04EAD
P 4150 3100
F 0 "#PWR02" H 4150 2975 50  0001 C CNN
F 1 "-9VA" H 4150 3250 50  0000 C CNN
F 2 "" H 4150 3100 50  0000 C CNN
F 3 "" H 4150 3100 50  0000 C CNN
	1    4150 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 57B04ED7
P 2650 2800
F 0 "#PWR03" H 2650 2550 50  0001 C CNN
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
S 5850 1450 300  800 
U 57B05F2F
F0 "channel1" 60
F1 "channel.sch" 60
F2 "OUT+" I B 5950 2250 60 
F3 "OUT-" I B 6050 2250 60 
$EndSheet
$Sheet
S 6400 1450 300  800 
U 57B0A0EC
F0 "channel2" 60
F1 "channel.sch" 60
F2 "OUT+" I B 6500 2250 60 
F3 "OUT-" I B 6600 2250 60 
$EndSheet
$Sheet
S 6950 1450 300  800 
U 57B0A102
F0 "channel3" 60
F1 "channel.sch" 60
F2 "OUT+" I B 7050 2250 60 
F3 "OUT-" I B 7150 2250 60 
$EndSheet
$Comp
L CONN_01X01 P26
U 1 1 57B0B2D9
P 10300 5950
F 0 "P26" H 10300 6050 50  0000 C CNN
F 1 "M3" V 10400 5950 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 10300 5950 50  0001 C CNN
F 3 "" H 10300 5950 50  0000 C CNN
	1    10300 5950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P27
U 1 1 57B0B309
P 10300 6150
F 0 "P27" H 10300 6250 50  0000 C CNN
F 1 "M3" V 10400 6150 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 10300 6150 50  0001 C CNN
F 3 "" H 10300 6150 50  0000 C CNN
	1    10300 6150
	1    0    0    -1  
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
L +9V #PWR07
U 1 1 57BCC1B3
P 7800 5600
F 0 "#PWR07" H 7800 5450 50  0001 C CNN
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
L +9V #PWR08
U 1 1 57BCC1EE
P 1150 5500
F 0 "#PWR08" H 1150 5350 50  0001 C CNN
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
$Comp
L R_Small R24
U 1 1 57DFCD81
P 5350 6300
F 0 "R24" H 5380 6320 50  0000 L CNN
F 1 "10k" H 5380 6260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5350 6300 50  0001 C CNN
F 3 "" H 5350 6300 50  0000 C CNN
	1    5350 6300
	0    -1   -1   0   
$EndComp
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
$Comp
L GND #PWR09
U 1 1 57DFFFC2
P 1450 7000
F 0 "#PWR09" H 1450 6750 50  0001 C CNN
F 1 "GND" H 1450 6850 50  0000 C CNN
F 2 "" H 1450 7000 50  0000 C CNN
F 3 "" H 1450 7000 50  0000 C CNN
	1    1450 7000
	1    0    0    -1  
$EndComp
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
$Comp
L GND #PWR010
U 1 1 57E0248D
P 7600 5800
F 0 "#PWR010" H 7600 5550 50  0001 C CNN
F 1 "GND" H 7600 5650 50  0000 C CNN
F 2 "" H 7600 5800 50  0000 C CNN
F 3 "" H 7600 5800 50  0000 C CNN
	1    7600 5800
	0    1    1    0   
$EndComp
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
Text Notes 2550 7150 0    60   ~ 0
fc = 1/(2*pi*100k*1u) = 1.6 Hz
$Comp
L GND #PWR011
U 1 1 57E015F2
P 7800 6200
F 0 "#PWR011" H 7800 5950 50  0001 C CNN
F 1 "GND" H 7800 6050 50  0000 C CNN
F 2 "" H 7800 6200 50  0000 C CNN
F 3 "" H 7800 6200 50  0000 C CNN
	1    7800 6200
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR012
U 1 1 57B04E83
P 2450 750
F 0 "#PWR012" H 2450 600 50  0001 C CNN
F 1 "+9V" H 2450 890 50  0000 C CNN
F 2 "" H 2450 750 50  0000 C CNN
F 3 "" H 2450 750 50  0000 C CNN
	1    2450 750 
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR013
U 1 1 58063D3B
P 5100 1150
F 0 "#PWR013" H 5100 1000 50  0001 C CNN
F 1 "+2V5" H 5100 1290 50  0000 C CNN
F 2 "" H 5100 1150 50  0000 C CNN
F 3 "" H 5100 1150 50  0000 C CNN
	1    5100 1150
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR014
U 1 1 58063DB3
P 5100 2900
F 0 "#PWR014" H 5100 2750 50  0001 C CNN
F 1 "-2V5" H 5100 3040 50  0000 C CNN
F 2 "" H 5100 2900 50  0000 C CNN
F 3 "" H 5100 2900 50  0000 C CNN
	1    5100 2900
	-1   0    0    1   
$EndComp
$Comp
L ADS131A04 U3
U 1 1 580644B5
P 8850 3050
F 0 "U3" H 8850 3050 60  0000 C CNN
F 1 "ADS131A04" H 8850 3150 60  0000 C CNN
F 2 "Housings_QFP:LQFP-32_5x5mm_Pitch0.5mm" H 8700 3150 60  0001 C CNN
F 3 "" H 8700 3150 60  0000 C CNN
	1    8850 3050
	1    0    0    -1  
$EndComp
$Comp
L R_Small R15
U 1 1 58069626
P 7400 2400
F 0 "R15" H 7430 2420 50  0000 L CNN
F 1 "1k" H 7430 2360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7400 2400 50  0001 C CNN
F 3 "" H 7400 2400 50  0000 C CNN
	1    7400 2400
	0    1    1    0   
$EndComp
$Comp
L R_Small R17
U 1 1 580697DA
P 7400 2700
F 0 "R17" H 7430 2720 50  0000 L CNN
F 1 "1k" H 7430 2660 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7400 2700 50  0001 C CNN
F 3 "" H 7400 2700 50  0000 C CNN
	1    7400 2700
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R26
U 1 1 58069929
P 7400 2800
F 0 "R26" H 7430 2820 50  0000 L CNN
F 1 "1k" H 7430 2760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7400 2800 50  0001 C CNN
F 3 "" H 7400 2800 50  0000 C CNN
	1    7400 2800
	0    1    1    0   
$EndComp
$Comp
L R_Small R27
U 1 1 58069A4D
P 7400 3100
F 0 "R27" H 7430 3120 50  0000 L CNN
F 1 "1k" H 7430 3060 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7400 3100 50  0001 C CNN
F 3 "" H 7400 3100 50  0000 C CNN
	1    7400 3100
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R28
U 1 1 58069AEA
P 7400 3200
F 0 "R28" H 7430 3220 50  0000 L CNN
F 1 "1k" H 7430 3160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7400 3200 50  0001 C CNN
F 3 "" H 7400 3200 50  0000 C CNN
	1    7400 3200
	0    1    1    0   
$EndComp
$Comp
L R_Small R29
U 1 1 58069B88
P 7400 3500
F 0 "R29" H 7430 3520 50  0000 L CNN
F 1 "1k" H 7430 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7400 3500 50  0001 C CNN
F 3 "" H 7400 3500 50  0000 C CNN
	1    7400 3500
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C10
U 1 1 58069C0A
P 7600 2550
F 0 "C10" H 7610 2620 50  0000 L CNN
F 1 "9n" H 7610 2470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7600 2550 50  0001 C CNN
F 3 "" H 7600 2550 50  0000 C CNN
	1    7600 2550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 58069D62
P 7600 2950
F 0 "C11" H 7610 3020 50  0000 L CNN
F 1 "9n" H 7610 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7600 2950 50  0001 C CNN
F 3 "" H 7600 2950 50  0000 C CNN
	1    7600 2950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 58069E07
P 7600 3350
F 0 "C12" H 7610 3420 50  0000 L CNN
F 1 "9n" H 7610 3270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7600 3350 50  0001 C CNN
F 3 "" H 7600 3350 50  0000 C CNN
	1    7600 3350
	1    0    0    -1  
$EndComp
$Comp
L MAX1659 U1
U 1 1 5806FC86
P 4050 1400
F 0 "U1" H 4250 1250 60  0000 C CNN
F 1 "MAX1659" H 4200 1850 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4050 1400 60  0001 C CNN
F 3 "" H 4050 1400 60  0000 C CNN
	1    4050 1400
	1    0    0    -1  
$EndComp
$Comp
L MIC5270YM5-TR U2
U 1 1 5807029E
P 4150 2300
F 0 "U2" H 3800 2200 60  0000 C CNN
F 1 "MIC5270YM5-TR" V 4500 2200 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 4150 2300 60  0001 C CNN
F 3 "" H 4150 2300 60  0000 C CNN
	1    4150 2300
	-1   0    0    -1  
$EndComp
NoConn ~ 3950 1950
$Comp
L GND #PWR015
U 1 1 58070A89
P 4650 1100
F 0 "#PWR015" H 4650 850 50  0001 C CNN
F 1 "GND" H 4650 950 50  0000 C CNN
F 2 "" H 4650 1100 50  0000 C CNN
F 3 "" H 4650 1100 50  0000 C CNN
	1    4650 1100
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R1
U 1 1 58070EC1
P 3250 1100
F 0 "R1" H 3280 1120 50  0000 L CNN
F 1 "10k" H 3280 1060 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3250 1100 50  0001 C CNN
F 3 "" H 3250 1100 50  0000 C CNN
	1    3250 1100
	0    1    1    0   
$EndComp
$Comp
L R_Small R3
U 1 1 580710FC
P 3500 1300
F 0 "R3" H 3530 1320 50  0000 L CNN
F 1 "10k" H 3530 1260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3500 1300 50  0001 C CNN
F 3 "" H 3500 1300 50  0000 C CNN
	1    3500 1300
	-1   0    0    1   
$EndComp
$Comp
L R_Small R5
U 1 1 58071270
P 3500 1550
F 0 "R5" H 3530 1570 50  0000 L CNN
F 1 "665" H 3530 1510 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3500 1550 50  0001 C CNN
F 3 "" H 3500 1550 50  0000 C CNN
	1    3500 1550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR016
U 1 1 58071B60
P 3150 1100
F 0 "#PWR016" H 3150 850 50  0001 C CNN
F 1 "GND" H 3150 950 50  0000 C CNN
F 2 "" H 3150 1100 50  0000 C CNN
F 3 "" H 3150 1100 50  0000 C CNN
	1    3150 1100
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 58071F55
P 5100 1850
F 0 "C4" H 5110 1920 50  0000 L CNN
F 1 "10u" H 5110 1770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5100 1850 50  0001 C CNN
F 3 "" H 5100 1850 50  0000 C CNN
	1    5100 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5807222B
P 5300 2050
F 0 "#PWR017" H 5300 1800 50  0001 C CNN
F 1 "GND" H 5300 1900 50  0000 C CNN
F 2 "" H 5300 2050 50  0000 C CNN
F 3 "" H 5300 2050 50  0000 C CNN
	1    5300 2050
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R9
U 1 1 5807238A
P 4900 2050
F 0 "R9" H 4930 2070 50  0000 L CNN
F 1 "10k" H 4930 2010 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4900 2050 50  0001 C CNN
F 3 "" H 4900 2050 50  0000 C CNN
	1    4900 2050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 58072555
P 4150 1950
F 0 "#PWR018" H 4150 1700 50  0001 C CNN
F 1 "GND" H 4150 1800 50  0000 C CNN
F 2 "" H 4150 1950 50  0000 C CNN
F 3 "" H 4150 1950 50  0000 C CNN
	1    4150 1950
	-1   0    0    1   
$EndComp
$Comp
L R_Small R12
U 1 1 5807260C
P 4650 2200
F 0 "R12" H 4680 2220 50  0000 L CNN
F 1 "10k" H 4680 2160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4650 2200 50  0001 C CNN
F 3 "" H 4650 2200 50  0000 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R16
U 1 1 58072C8E
P 4650 2450
F 0 "R16" H 4680 2470 50  0000 L CNN
F 1 "845" H 4680 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4650 2450 50  0001 C CNN
F 3 "" H 4650 2450 50  0000 C CNN
	1    4650 2450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 580737E6
P 5100 2400
F 0 "C7" H 5110 2470 50  0000 L CNN
F 1 "10u" H 5110 2320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5100 2400 50  0001 C CNN
F 3 "" H 5100 2400 50  0000 C CNN
	1    5100 2400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 580740CB
P 2850 1700
F 0 "C1" H 2860 1770 50  0000 L CNN
F 1 "100n" H 2860 1620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2850 1700 50  0001 C CNN
F 3 "" H 2850 1700 50  0000 C CNN
	1    2850 1700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 5807427E
P 2850 2150
F 0 "C6" H 2860 2220 50  0000 L CNN
F 1 "100n" H 2860 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2850 2150 50  0001 C CNN
F 3 "" H 2850 2150 50  0000 C CNN
	1    2850 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 580748BE
P 2950 1950
F 0 "#PWR019" H 2950 1700 50  0001 C CNN
F 1 "GND" H 2950 1800 50  0000 C CNN
F 2 "" H 2950 1950 50  0000 C CNN
F 3 "" H 2950 1950 50  0000 C CNN
	1    2950 1950
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C18
U 1 1 58074DB5
P 8150 4300
F 0 "C18" H 8160 4370 50  0000 L CNN
F 1 "1u" H 8160 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8150 4300 50  0001 C CNN
F 3 "" H 8150 4300 50  0000 C CNN
	1    8150 4300
	0    1    1    0   
$EndComp
$Comp
L C_Small C19
U 1 1 58075456
P 8450 4300
F 0 "C19" H 8460 4370 50  0000 L CNN
F 1 "1u" H 8460 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8450 4300 50  0001 C CNN
F 3 "" H 8450 4300 50  0000 C CNN
	1    8450 4300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 580754F6
P 8300 4400
F 0 "#PWR020" H 8300 4150 50  0001 C CNN
F 1 "GND" H 8300 4250 50  0000 C CNN
F 2 "" H 8300 4400 50  0000 C CNN
F 3 "" H 8300 4400 50  0000 C CNN
	1    8300 4400
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR021
U 1 1 580755CF
P 8600 4400
F 0 "#PWR021" H 8600 4250 50  0001 C CNN
F 1 "-2V5" H 8600 4540 50  0000 C CNN
F 2 "" H 8600 4400 50  0000 C CNN
F 3 "" H 8600 4400 50  0000 C CNN
	1    8600 4400
	-1   0    0    1   
$EndComp
$Comp
L +2V5 #PWR022
U 1 1 58075665
P 8000 4400
F 0 "#PWR022" H 8000 4250 50  0001 C CNN
F 1 "+2V5" H 8000 4540 50  0000 C CNN
F 2 "" H 8000 4400 50  0000 C CNN
F 3 "" H 8000 4400 50  0000 C CNN
	1    8000 4400
	-1   0    0    1   
$EndComp
$Comp
L C_Small C13
U 1 1 58075867
P 8750 4150
F 0 "C13" H 8760 4220 50  0000 L CNN
F 1 "1u" H 8760 4070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8750 4150 50  0001 C CNN
F 3 "" H 8750 4150 50  0000 C CNN
	1    8750 4150
	0    1    1    0   
$EndComp
$Comp
L C_Small C16
U 1 1 58076106
P 9000 4150
F 0 "C16" H 9010 4220 50  0000 L CNN
F 1 "1u" H 9010 4070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9000 4150 50  0001 C CNN
F 3 "" H 9000 4150 50  0000 C CNN
	1    9000 4150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C17
U 1 1 580766A5
P 9200 4150
F 0 "C17" H 9210 4220 50  0000 L CNN
F 1 "1u" H 9210 4070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9200 4150 50  0001 C CNN
F 3 "" H 9200 4150 50  0000 C CNN
	1    9200 4150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR023
U 1 1 58076749
P 9300 4000
F 0 "#PWR023" H 9300 3850 50  0001 C CNN
F 1 "+3V3" H 9300 4140 50  0000 C CNN
F 2 "" H 9300 4000 50  0000 C CNN
F 3 "" H 9300 4000 50  0000 C CNN
	1    9300 4000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR024
U 1 1 58076CF5
P 9200 4250
F 0 "#PWR024" H 9200 4000 50  0001 C CNN
F 1 "GND" H 9200 4100 50  0000 C CNN
F 2 "" H 9200 4250 50  0000 C CNN
F 3 "" H 9200 4250 50  0000 C CNN
	1    9200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5050 9900 5050
Wire Wire Line
	10000 4750 10000 6150
Wire Wire Line
	10000 4750 10100 4750
Wire Wire Line
	10000 5350 10100 5350
Connection ~ 10000 5050
Wire Wire Line
	10100 5150 10000 5150
Connection ~ 10000 5150
Wire Wire Line
	10100 4950 10000 4950
Connection ~ 10000 4950
Wire Wire Line
	1800 3200 3450 3200
Wire Wire Line
	5950 3300 1800 3300
Wire Wire Line
	6500 3400 1800 3400
Wire Wire Line
	1800 3500 7300 3500
Wire Wire Line
	10000 6150 10100 6150
Connection ~ 10000 5350
Wire Wire Line
	10100 5950 10000 5950
Connection ~ 10000 5950
Wire Wire Line
	2450 2500 2250 2500
Wire Wire Line
	2450 750  2450 2550
Wire Wire Line
	2250 2500 2250 2900
Connection ~ 2450 2500
Wire Wire Line
	1800 3000 2350 3000
Wire Wire Line
	2350 3000 2350 2800
Wire Wire Line
	2350 2800 2650 2800
Wire Wire Line
	2450 2750 2450 2850
Connection ~ 2450 2800
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
	1400 6850 2100 6850
Wire Wire Line
	2100 6850 2100 6050
Wire Wire Line
	2100 6500 2050 6500
Wire Wire Line
	3100 6600 3050 6600
Wire Wire Line
	3050 6600 3050 6850
Wire Wire Line
	3050 6850 3750 6850
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
Wire Wire Line
	4000 6300 5250 6300
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
Wire Wire Line
	4600 6600 4600 6500
Connection ~ 4600 6500
Wire Wire Line
	4800 6100 4800 6600
Wire Wire Line
	4650 5950 4600 5950
Wire Wire Line
	4600 5950 4600 5600
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
Wire Wire Line
	3450 4950 6350 4950
Connection ~ 6350 6000
Wire Wire Line
	600  6300 600  5600
Connection ~ 950  5600
Wire Wire Line
	600  6500 600  6950
Connection ~ 950  6950
Wire Wire Line
	5950 2250 5950 3300
Wire Wire Line
	6500 2250 6500 3400
Wire Wire Line
	7050 3500 7050 2250
Wire Wire Line
	7150 3200 7150 2250
Connection ~ 7050 3500
Wire Wire Line
	8000 2900 7750 2900
Wire Wire Line
	7750 2900 7750 2800
Wire Wire Line
	7750 2800 7500 2800
Wire Wire Line
	7600 2800 7600 2850
Wire Wire Line
	7600 3050 7600 3100
Wire Wire Line
	7500 3100 7750 3100
Wire Wire Line
	7750 3100 7750 3000
Wire Wire Line
	7750 3000 8000 3000
Wire Wire Line
	8000 2800 7800 2800
Wire Wire Line
	7800 2800 7800 2700
Wire Wire Line
	7800 2700 7500 2700
Wire Wire Line
	7600 2700 7600 2650
Wire Wire Line
	8000 2700 7850 2700
Wire Wire Line
	7850 2700 7850 2400
Wire Wire Line
	7850 2400 7500 2400
Wire Wire Line
	7600 2400 7600 2450
Wire Wire Line
	7600 3250 7600 3200
Wire Wire Line
	7500 3200 7800 3200
Wire Wire Line
	7800 3200 7800 3100
Wire Wire Line
	7800 3100 8000 3100
Wire Wire Line
	8000 3200 7850 3200
Wire Wire Line
	7850 3200 7850 3500
Wire Wire Line
	7850 3500 7500 3500
Wire Wire Line
	7600 3500 7600 3450
Connection ~ 7600 3500
Wire Wire Line
	7150 3200 7300 3200
Connection ~ 7600 3200
Connection ~ 7600 3100
Connection ~ 7600 2800
Connection ~ 7600 2700
Connection ~ 7600 2400
Wire Wire Line
	7300 3100 6500 3100
Connection ~ 6500 3100
Wire Wire Line
	7300 2800 6600 2800
Wire Wire Line
	6600 2800 6600 2250
Wire Wire Line
	7300 2700 5950 2700
Connection ~ 5950 2700
Wire Wire Line
	7300 2400 6050 2400
Wire Wire Line
	6050 2400 6050 2250
Wire Wire Line
	5100 1150 5100 1750
Wire Wire Line
	3500 1700 5100 1700
Wire Wire Line
	3650 1700 3650 1400
Wire Wire Line
	3650 1400 3750 1400
Wire Wire Line
	4650 1400 5100 1400
Connection ~ 5100 1400
Wire Wire Line
	4900 1300 4650 1300
Wire Wire Line
	4900 850  4900 1300
Wire Wire Line
	2450 850  4900 850 
Connection ~ 2450 850 
Wire Wire Line
	4650 1200 4900 1200
Connection ~ 4900 1200
Wire Wire Line
	3650 1300 3750 1300
Wire Wire Line
	3650 850  3650 1300
Connection ~ 3650 850 
Wire Wire Line
	3750 1200 3650 1200
Connection ~ 3650 1200
Wire Wire Line
	3350 1100 3750 1100
Wire Wire Line
	3500 1200 3500 1100
Connection ~ 3500 1100
Wire Wire Line
	3500 1400 3500 1450
Wire Wire Line
	3500 1650 3500 1700
Connection ~ 3650 1700
Connection ~ 5100 1700
Wire Wire Line
	5100 1950 5100 2300
Wire Wire Line
	5000 2050 5300 2050
Wire Wire Line
	4800 2050 4650 2050
Wire Wire Line
	4650 1900 4650 2100
Wire Wire Line
	4650 1900 4350 1900
Wire Wire Line
	4350 1900 4350 1950
Connection ~ 4650 2050
Wire Wire Line
	4250 2800 4250 2850
Wire Wire Line
	4250 2850 5100 2850
Wire Wire Line
	4650 2850 4650 2550
Wire Wire Line
	4650 2300 4650 2350
Wire Wire Line
	4050 3100 4050 2800
Connection ~ 4050 3100
Wire Wire Line
	5100 2500 5100 2900
Connection ~ 4650 2850
Connection ~ 5100 2850
Connection ~ 5100 2050
Wire Wire Line
	2850 3100 2850 2250
Connection ~ 2850 3100
Wire Wire Line
	2850 1600 2850 850 
Connection ~ 2850 850 
Wire Wire Line
	2850 1800 2850 2050
Wire Wire Line
	2950 1950 2850 1950
Connection ~ 2850 1950
Wire Wire Line
	8700 3950 8700 3900
Wire Wire Line
	7950 3950 8700 3950
Wire Wire Line
	7950 3300 7950 3950
Wire Wire Line
	7950 3300 8000 3300
Wire Wire Line
	8000 3400 7950 3400
Connection ~ 7950 3400
Wire Wire Line
	8600 3900 8600 4400
Connection ~ 8600 3950
Wire Wire Line
	8900 4300 8900 3900
Wire Wire Line
	8900 4150 8850 4150
Wire Wire Line
	8650 4150 8650 4000
Wire Wire Line
	8650 4000 8800 4000
Wire Wire Line
	8800 4000 8800 3900
Wire Wire Line
	9000 4050 9000 3900
Wire Wire Line
	9200 4000 9300 4000
Wire Wire Line
	9200 3900 9200 4050
Wire Wire Line
	9100 3900 9100 3950
Wire Wire Line
	9100 3950 9200 3950
Connection ~ 9200 3950
Connection ~ 9200 4000
Wire Wire Line
	8550 4300 9000 4300
Wire Wire Line
	8250 4300 8350 4300
Wire Wire Line
	8300 4400 8300 4300
Connection ~ 8300 4300
Wire Wire Line
	8050 4300 8000 4300
Wire Wire Line
	8000 4050 8000 4400
Wire Wire Line
	8000 4050 8500 4050
Wire Wire Line
	8500 4050 8500 3900
Connection ~ 8000 4300
Connection ~ 8600 4300
Wire Wire Line
	9000 4300 9000 4250
Connection ~ 8900 4300
Connection ~ 8900 4150
$Comp
L C_Small C5
U 1 1 58078BF1
P 8900 1900
F 0 "C5" H 8910 1970 50  0000 L CNN
F 1 "1u" H 8910 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8900 1900 50  0001 C CNN
F 3 "" H 8900 1900 50  0000 C CNN
	1    8900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2000 8900 2200
$Comp
L GND #PWR025
U 1 1 58079052
P 8900 1800
F 0 "#PWR025" H 8900 1550 50  0001 C CNN
F 1 "GND" H 8900 1650 50  0000 C CNN
F 2 "" H 8900 1800 50  0000 C CNN
F 3 "" H 8900 1800 50  0000 C CNN
	1    8900 1800
	-1   0    0    1   
$EndComp
NoConn ~ 9100 2200
$Comp
L GND #PWR026
U 1 1 580791C3
P 9000 2200
F 0 "#PWR026" H 9000 1950 50  0001 C CNN
F 1 "GND" H 9000 2050 50  0000 C CNN
F 2 "" H 9000 2200 50  0000 C CNN
F 3 "" H 9000 2200 50  0000 C CNN
	1    9000 2200
	-1   0    0    1   
$EndComp
$Comp
L R_Small R11
U 1 1 580792FA
P 9350 2150
F 0 "R11" H 9380 2170 50  0000 L CNN
F 1 "50" H 9380 2110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 9350 2150 50  0001 C CNN
F 3 "" H 9350 2150 50  0000 C CNN
	1    9350 2150
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR027
U 1 1 58079C0A
P 8800 2200
F 0 "#PWR027" H 8800 2050 50  0001 C CNN
F 1 "+3V3" H 8800 2340 50  0000 C CNN
F 2 "" H 8800 2200 50  0000 C CNN
F 3 "" H 8800 2200 50  0000 C CNN
	1    8800 2200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 58079FD7
P 8350 2150
F 0 "R10" H 8380 2170 50  0000 L CNN
F 1 "470" H 8380 2110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8350 2150 50  0001 C CNN
F 3 "" H 8350 2150 50  0000 C CNN
	1    8350 2150
	0    1    1    0   
$EndComp
$Comp
L R_Small R8
U 1 1 5807A2D4
P 8350 1950
F 0 "R8" H 8380 1970 50  0000 L CNN
F 1 "470" H 8380 1910 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8350 1950 50  0001 C CNN
F 3 "" H 8350 1950 50  0000 C CNN
	1    8350 1950
	0    1    1    0   
$EndComp
$Comp
L R_Small R7
U 1 1 5807A3B7
P 8350 1750
F 0 "R7" H 8380 1770 50  0000 L CNN
F 1 "470" H 8380 1710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8350 1750 50  0001 C CNN
F 3 "" H 8350 1750 50  0000 C CNN
	1    8350 1750
	0    1    1    0   
$EndComp
$Comp
L R_Small R6
U 1 1 5807A4A1
P 8350 1550
F 0 "R6" H 8380 1570 50  0000 L CNN
F 1 "470" H 8380 1510 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8350 1550 50  0001 C CNN
F 3 "" H 8350 1550 50  0000 C CNN
	1    8350 1550
	0    1    1    0   
$EndComp
$Comp
L R_Small R4
U 1 1 5807A58A
P 8350 1350
F 0 "R4" H 8380 1370 50  0000 L CNN
F 1 "470" H 8380 1310 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8350 1350 50  0001 C CNN
F 3 "" H 8350 1350 50  0000 C CNN
	1    8350 1350
	0    1    1    0   
$EndComp
$Comp
L R_Small R2
U 1 1 5807A676
P 8350 1150
F 0 "R2" H 8380 1170 50  0000 L CNN
F 1 "470" H 8380 1110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8350 1150 50  0001 C CNN
F 3 "" H 8350 1150 50  0000 C CNN
	1    8350 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 1550 8500 2200
Wire Wire Line
	8500 2150 8450 2150
Wire Wire Line
	8500 1550 8450 1550
Connection ~ 8500 2150
Wire Wire Line
	8600 1350 8600 2200
Wire Wire Line
	8600 1950 8450 1950
Wire Wire Line
	8600 1350 8450 1350
Connection ~ 8600 1950
Wire Wire Line
	8700 1150 8700 2200
Wire Wire Line
	8700 1750 8450 1750
Wire Wire Line
	8700 1150 8450 1150
Connection ~ 8700 1750
Wire Wire Line
	8250 1150 8200 1150
Wire Wire Line
	8200 1150 8200 1550
Wire Wire Line
	8200 1550 8250 1550
Wire Wire Line
	8150 1350 8250 1350
Connection ~ 8200 1350
Wire Wire Line
	8250 1750 8200 1750
Wire Wire Line
	8200 1750 8200 2150
Wire Wire Line
	8200 2150 8250 2150
Wire Wire Line
	8150 1950 8250 1950
Connection ~ 8200 1950
$Comp
L +3V3 #PWR028
U 1 1 5807B5B5
P 8150 1350
F 0 "#PWR028" H 8150 1200 50  0001 C CNN
F 1 "+3V3" H 8150 1490 50  0000 C CNN
F 2 "" H 8150 1350 50  0000 C CNN
F 3 "" H 8150 1350 50  0000 C CNN
	1    8150 1350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR029
U 1 1 5807B872
P 8150 1950
F 0 "#PWR029" H 8150 1700 50  0001 C CNN
F 1 "GND" H 8150 1800 50  0000 C CNN
F 2 "" H 8150 1950 50  0000 C CNN
F 3 "" H 8150 1950 50  0000 C CNN
	1    8150 1950
	0    1    1    0   
$EndComp
Text Notes 7550 1000 0    60   ~ 0
ADC is configured via population of these resistors
$Comp
L +3V3 #PWR030
U 1 1 5807C0BC
P 9850 3450
F 0 "#PWR030" H 9850 3300 50  0001 C CNN
F 1 "+3V3" H 9850 3590 50  0000 C CNN
F 2 "" H 9850 3450 50  0000 C CNN
F 3 "" H 9850 3450 50  0000 C CNN
	1    9850 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 3200 10600 3200
Wire Wire Line
	10600 3100 9700 3100
Wire Wire Line
	9700 3000 10600 3000
Wire Wire Line
	9700 2900 10600 2900
Wire Wire Line
	10600 2800 9700 2800
Wire Wire Line
	9250 2150 9200 2150
Wire Wire Line
	9200 2150 9200 2200
Wire Wire Line
	9450 2150 9800 2150
Wire Wire Line
	9800 2150 9800 2700
Wire Wire Line
	9800 2700 10600 2700
Text Label 9950 2600 0    60   ~ 0
TACH
Wire Wire Line
	9950 2600 10600 2600
$Comp
L GND #PWR031
U 1 1 5807E809
P 10600 3400
F 0 "#PWR031" H 10600 3150 50  0001 C CNN
F 1 "GND" H 10600 3250 50  0000 C CNN
F 2 "" H 10600 3400 50  0000 C CNN
F 3 "" H 10600 3400 50  0000 C CNN
	1    10600 3400
	0    1    1    0   
$EndComp
Text Label 9950 2700 0    60   ~ 0
f_ADC
Text Label 9950 2800 0    60   ~ 0
/CS
Text Label 9950 2900 0    60   ~ 0
SCLK
Text Label 9950 3000 0    60   ~ 0
MISO
Text Label 9950 3100 0    60   ~ 0
MOSI
Text Label 9950 3200 0    60   ~ 0
/DRDY
Connection ~ 9850 3400
$Comp
L D_Schottky_Small D1
U 1 1 580D3F39
P 2000 2900
F 0 "D1" H 1850 2950 50  0000 L CNN
F 1 "SMS240" H 1850 2800 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 2000 2900 50  0001 C CNN
F 3 "" V 2000 2900 50  0000 C CNN
	1    2000 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 2900 1800 2900
Wire Wire Line
	2250 2900 2100 2900
Wire Wire Line
	2100 3100 4150 3100
$Comp
L D_Schottky_Small D2
U 1 1 580D5EA2
P 2000 3100
F 0 "D2" H 2050 3150 50  0000 L CNN
F 1 "SMS240" H 2050 3050 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 2000 3100 50  0001 C CNN
F 3 "" V 2000 3100 50  0000 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3100 1800 3100
$Comp
L CONN_01X10 P12
U 1 1 580D6FB4
P 10800 3050
F 0 "P12" H 10800 3600 50  0000 C CNN
F 1 "CONN_01X10" V 10900 3050 50  0000 C CNN
F 2 "SCUBE:SMD_pinheader_1x10" H 10800 3050 50  0001 C CNN
F 3 "" H 10800 3050 50  0000 C CNN
	1    10800 3050
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D3
U 1 1 580D943C
P 10350 3500
F 0 "D3" H 10200 3550 50  0000 L CNN
F 1 "SMS240" H 10000 3450 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 10350 3500 50  0001 C CNN
F 3 "" V 10350 3500 50  0000 C CNN
	1    10350 3500
	1    0    0    -1  
$EndComp
Text Notes 9550 3900 0    39   ~ 0
Diode is fine since operating voltage can be down to\n1.65 V and MCU accepts down to 0.6*VCC as HIGH
Wire Wire Line
	9700 3300 10600 3300
Wire Wire Line
	9850 3450 9850 3400
Text Label 9950 3300 0    60   ~ 0
/DONE
Wire Wire Line
	10600 3500 10450 3500
Wire Wire Line
	10250 3500 10050 3500
Wire Wire Line
	10050 3500 10050 3400
Wire Wire Line
	10050 3400 9700 3400
NoConn ~ 1800 3600
NoConn ~ 1800 3700
NoConn ~ 1800 3800
$EndSCHEMATC
