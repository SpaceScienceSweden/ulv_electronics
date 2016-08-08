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
L CONN_01X10 P4
U 1 1 578F7676
P 2750 3350
F 0 "P4" H 2750 3900 50  0000 C CNN
F 1 "CONN_01X10" V 2850 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x10" H 2750 3350 50  0001 C CNN
F 3 "" H 2750 3350 50  0000 C CNN
	1    2750 3350
	-1   0    0    -1  
$EndComp
$Comp
L +9V #PWR01
U 1 1 578F7A47
P 3300 2900
F 0 "#PWR01" H 3300 2750 50  0001 C CNN
F 1 "+9V" H 3300 3040 50  0000 C CNN
F 2 "" H 3300 2900 50  0000 C CNN
F 3 "" H 3300 2900 50  0000 C CNN
	1    3300 2900
	0    1    -1   0   
$EndComp
$Comp
L -9VA #PWR02
U 1 1 578F7A63
P 3300 3100
F 0 "#PWR02" H 3300 2975 50  0001 C CNN
F 1 "-9VA" H 3300 3250 50  0000 C CNN
F 2 "" H 3300 3100 50  0000 C CNN
F 3 "" H 3300 3100 50  0000 C CNN
	1    3300 3100
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 578F7A91
P 3100 3000
F 0 "#PWR03" H 3100 2750 50  0001 C CNN
F 1 "GND" H 3100 2850 50  0000 C CNN
F 2 "" H 3100 3000 50  0000 C CNN
F 3 "" H 3100 3000 50  0000 C CNN
	1    3100 3000
	0    -1   1    0   
$EndComp
Text Label 3200 3200 2    60   ~ 0
TACH
Text Label 3200 3300 2    60   ~ 0
OUT1
Text Label 3200 3400 2    60   ~ 0
OUT2
Text Label 3200 3500 2    60   ~ 0
OUT3
Text Label 3200 3600 2    60   ~ 0
A0
Text Label 3200 3700 2    60   ~ 0
A1
Text Label 3200 3800 2    60   ~ 0
REF
$Sheet
S 5000 3200 750  400 
U 5790C9D7
F0 "channel1" 60
F1 "channel.sch" 60
F2 "X" I L 5000 3300 60 
F3 "Y" I L 5000 3400 60 
F4 "DEMOD" I R 5750 3300 60 
F5 "BIAS" I L 5000 3500 60 
$EndSheet
$Sheet
S 5000 3850 750  400 
U 5790D7DB
F0 "channel2" 60
F1 "channel.sch" 60
F2 "X" I L 5000 3950 60 
F3 "Y" I L 5000 4050 60 
F4 "DEMOD" I R 5750 3950 60 
F5 "BIAS" I L 5000 4150 60 
$EndSheet
$Sheet
S 5000 4500 750  400 
U 5790D9C8
F0 "channel3" 60
F1 "channel.sch" 60
F2 "X" I L 5000 4600 60 
F3 "Y" I L 5000 4700 60 
F4 "DEMOD" I R 5750 4600 60 
F5 "BIAS" I L 5000 4800 60 
$EndSheet
$Comp
L C_Small C1
U 1 1 5790F00D
P 3550 1800
F 0 "C1" H 3560 1870 50  0000 L CNN
F 1 "100n" H 3560 1720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3550 1800 50  0001 C CNN
F 3 "" H 3550 1800 50  0000 C CNN
	1    3550 1800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5790F359
P 3550 2100
F 0 "C2" H 3560 2170 50  0000 L CNN
F 1 "100n" H 3560 2020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3550 2100 50  0001 C CNN
F 3 "" H 3550 2100 50  0000 C CNN
	1    3550 2100
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR04
U 1 1 5790F50C
P 3550 2300
F 0 "#PWR04" H 3550 2175 50  0001 C CNN
F 1 "-9VA" H 3550 2450 50  0000 C CNN
F 2 "" H 3550 2300 50  0000 C CNN
F 3 "" H 3550 2300 50  0000 C CNN
	1    3550 2300
	-1   0    0    1   
$EndComp
$Comp
L +9V #PWR05
U 1 1 5790F696
P 3550 1600
F 0 "#PWR05" H 3550 1450 50  0001 C CNN
F 1 "+9V" H 3550 1740 50  0000 C CNN
F 2 "" H 3550 1600 50  0000 C CNN
F 3 "" H 3550 1600 50  0000 C CNN
	1    3550 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5790F7AA
P 3400 1950
F 0 "#PWR06" H 3400 1700 50  0001 C CNN
F 1 "GND" H 3400 1800 50  0000 C CNN
F 2 "" H 3400 1950 50  0000 C CNN
F 3 "" H 3400 1950 50  0000 C CNN
	1    3400 1950
	0    1    1    0   
$EndComp
Text Notes 3350 1350 0    60   ~ 0
LM6172 caps
Text Notes 4300 2250 0    60   ~ 0
For picking whether the LO\nis TACH or generated by CPU
$Comp
L +9V #PWR07
U 1 1 579114CF
P 7800 1900
F 0 "#PWR07" H 7800 1750 50  0001 C CNN
F 1 "+9V" H 7800 2040 50  0000 C CNN
F 2 "" H 7800 1900 50  0000 C CNN
F 3 "" H 7800 1900 50  0000 C CNN
	1    7800 1900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 5791155F
P 8400 2000
F 0 "#PWR08" H 8400 1750 50  0001 C CNN
F 1 "GND" H 8400 1850 50  0000 C CNN
F 2 "" H 8400 2000 50  0000 C CNN
F 3 "" H 8400 2000 50  0000 C CNN
	1    8400 2000
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR09
U 1 1 579115EF
P 7800 2100
F 0 "#PWR09" H 7800 1975 50  0001 C CNN
F 1 "-9VA" H 7800 2250 50  0000 C CNN
F 2 "" H 7800 2100 50  0000 C CNN
F 3 "" H 7800 2100 50  0000 C CNN
	1    7800 2100
	0    -1   -1   0   
$EndComp
Text Label 8050 2900 0    60   ~ 0
LO
Text Label 8050 2200 0    60   ~ 0
TACH
Text Label 8050 2300 0    60   ~ 0
OUT1
Text Label 8050 2400 0    60   ~ 0
OUT2
Text Label 8050 2500 0    60   ~ 0
OUT3
Text Label 8050 2600 0    60   ~ 0
A0
Text Label 8050 2700 0    60   ~ 0
A1
Text Label 8050 2800 0    60   ~ 0
REF
Text Label 8050 3000 0    60   ~ 0
DEMOD1
Text Label 8050 3100 0    60   ~ 0
DEMOD2
Text Label 8050 3200 0    60   ~ 0
DEMOD3
$Comp
L MCP3428 U2
U 1 1 57916CFD
P 7250 5300
F 0 "U2" H 7250 5800 60  0000 C CNN
F 1 "MCP3428" H 7250 5700 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 7300 5300 60  0001 C CNN
F 3 "" H 7300 5300 60  0000 C CNN
	1    7250 5300
	1    0    0    -1  
$EndComp
$Comp
L L78L33 U1
U 1 1 57917877
P 3700 5300
F 0 "U1" H 3700 5500 60  0000 C CNN
F 1 "L78L33" H 3700 5400 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 3700 5300 60  0001 C CNN
F 3 "" H 3700 5300 60  0000 C CNN
	1    3700 5300
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR010
U 1 1 57917A3E
P 2600 5300
F 0 "#PWR010" H 2600 5150 50  0001 C CNN
F 1 "+9V" H 2600 5440 50  0000 C CNN
F 2 "" H 2600 5300 50  0000 C CNN
F 3 "" H 2600 5300 50  0000 C CNN
	1    2600 5300
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C3
U 1 1 57917AAE
P 3150 5500
F 0 "C3" H 3160 5570 50  0000 L CNN
F 1 "100n" H 3160 5420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3150 5500 50  0001 C CNN
F 3 "" H 3150 5500 50  0000 C CNN
	1    3150 5500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 57917BA0
P 4250 5500
F 0 "C4" H 4260 5570 50  0000 L CNN
F 1 "100n" H 4260 5420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4250 5500 50  0001 C CNN
F 3 "" H 4250 5500 50  0000 C CNN
	1    4250 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 57917D0C
P 3700 5850
F 0 "#PWR011" H 3700 5600 50  0001 C CNN
F 1 "GND" H 3700 5700 50  0000 C CNN
F 2 "" H 3700 5850 50  0000 C CNN
F 3 "" H 3700 5850 50  0000 C CNN
	1    3700 5850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 579180DC
P 4700 5450
F 0 "R1" H 4730 5470 50  0000 L CNN
F 1 "10k" H 4730 5410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4700 5450 50  0001 C CNN
F 3 "" H 4700 5450 50  0000 C CNN
	1    4700 5450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 57918282
P 4700 5750
F 0 "R2" H 4730 5770 50  0000 L CNN
F 1 "10k" H 4730 5710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4700 5750 50  0001 C CNN
F 3 "" H 4700 5750 50  0000 C CNN
	1    4700 5750
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5791830C
P 5000 5750
F 0 "C5" H 5010 5820 50  0000 L CNN
F 1 "100n" H 5010 5670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5000 5750 50  0001 C CNN
F 3 "" H 5000 5750 50  0000 C CNN
	1    5000 5750
	1    0    0    -1  
$EndComp
Text Notes 4500 6300 0    60   ~ 0
Bias voltage generator\nRoughly 1.1 V\nAdded during demod, subtracted in ADC
Text Notes 6950 4700 0    60   ~ 0
Vref = 2.048 V
$Comp
L CONN_01X06 P5
U 1 1 5791B693
P 8900 5550
F 0 "P5" H 8900 5900 50  0000 C CNN
F 1 "Adr conf" V 9000 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 8900 5550 50  0001 C CNN
F 3 "" H 8900 5550 50  0000 C CNN
	1    8900 5550
	1    0    0    -1  
$EndComp
$Comp
L +3.3VADC #PWR012
U 1 1 5791BA44
P 4300 4900
F 0 "#PWR012" H 4450 4850 50  0001 C CNN
F 1 "+3.3VADC" H 4300 5000 50  0000 C CNN
F 2 "" H 4300 4900 50  0000 C CNN
F 3 "" H 4300 4900 50  0000 C CNN
	1    4300 4900
	1    0    0    -1  
$EndComp
$Comp
L +3.3VADC #PWR013
U 1 1 5791BCF5
P 6550 6200
F 0 "#PWR013" H 6700 6150 50  0001 C CNN
F 1 "+3.3VADC" H 6550 6300 50  0000 C CNN
F 2 "" H 6550 6200 50  0000 C CNN
F 3 "" H 6550 6200 50  0000 C CNN
	1    6550 6200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR014
U 1 1 5791C0C9
P 6200 5400
F 0 "#PWR014" H 6200 5150 50  0001 C CNN
F 1 "GND" H 6200 5250 50  0000 C CNN
F 2 "" H 6200 5400 50  0000 C CNN
F 3 "" H 6200 5400 50  0000 C CNN
	1    6200 5400
	0    1    1    0   
$EndComp
$Comp
L +3.3VADC #PWR015
U 1 1 5791C6E5
P 8600 5200
F 0 "#PWR015" H 8750 5150 50  0001 C CNN
F 1 "+3.3VADC" H 8600 5300 50  0000 C CNN
F 2 "" H 8600 5200 50  0000 C CNN
F 3 "" H 8600 5200 50  0000 C CNN
	1    8600 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5791C99D
P 8650 5850
F 0 "#PWR016" H 8650 5600 50  0001 C CNN
F 1 "GND" H 8650 5700 50  0000 C CNN
F 2 "" H 8650 5850 50  0000 C CNN
F 3 "" H 8650 5850 50  0000 C CNN
	1    8650 5850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 5791CFDD
P 6700 5950
F 0 "R3" H 6730 5970 50  0000 L CNN
F 1 "10k" H 6730 5910 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6700 5950 50  0001 C CNN
F 3 "" H 6700 5950 50  0000 C CNN
	1    6700 5950
	1    0    0    -1  
$EndComp
Text Label 8050 3300 0    60   ~ 0
SDA
Text Label 8050 3400 0    60   ~ 0
SCL
$Comp
L CONN_01X16 P3
U 1 1 5791F2D3
P 8600 2650
F 0 "P3" H 8600 3500 50  0000 C CNN
F 1 "CONN_01X16" V 8700 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x16" H 8600 2650 50  0001 C CNN
F 3 "" H 8600 2650 50  0000 C CNN
	1    8600 2650
	1    0    0    -1  
$EndComp
Text Label 4900 5200 3    60   ~ 0
BIAS
$Comp
L C_Small C18
U 1 1 579219AA
P 3800 1800
F 0 "C18" H 3810 1870 50  0000 L CNN
F 1 "100n" H 3810 1720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3800 1800 50  0001 C CNN
F 3 "" H 3800 1800 50  0000 C CNN
	1    3800 1800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C19
U 1 1 57921A48
P 3800 2100
F 0 "C19" H 3810 2170 50  0000 L CNN
F 1 "100n" H 3810 2020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3800 2100 50  0001 C CNN
F 3 "" H 3800 2100 50  0000 C CNN
	1    3800 2100
	1    0    0    -1  
$EndComp
$Comp
L OPA2604 U7
U 2 1 5792297D
P 9350 4300
F 0 "U7" H 9650 4750 60  0000 C CNN
F 1 "LM6172" H 9650 4650 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 9450 4300 60  0001 C CNN
F 3 "" H 9450 4300 60  0000 C CNN
	2    9350 4300
	-1   0    0    -1  
$EndComp
$Comp
L +9V #PWR017
U 1 1 57922CA4
P 9300 4000
F 0 "#PWR017" H 9300 3850 50  0001 C CNN
F 1 "+9V" H 9300 4140 50  0000 C CNN
F 2 "" H 9300 4000 50  0000 C CNN
F 3 "" H 9300 4000 50  0000 C CNN
	1    9300 4000
	-1   0    0    -1  
$EndComp
$Comp
L -9VA #PWR018
U 1 1 57922D24
P 9300 4600
F 0 "#PWR018" H 9300 4475 50  0001 C CNN
F 1 "-9VA" H 9300 4750 50  0000 C CNN
F 2 "" H 9300 4600 50  0000 C CNN
F 3 "" H 9300 4600 50  0000 C CNN
	1    9300 4600
	1    0    0    1   
$EndComp
$Comp
L CONN_01X03 P1
U 1 1 57924985
P 4650 2450
F 0 "P1" H 4650 2650 50  0000 C CNN
F 1 "CONN_01X03" V 4750 2450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4650 2450 50  0001 C CNN
F 3 "" H 4650 2450 50  0000 C CNN
	1    4650 2450
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C20
U 1 1 579253E8
P 6300 5550
F 0 "C20" H 6310 5620 50  0000 L CNN
F 1 "100n" H 6310 5470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6300 5550 50  0001 C CNN
F 3 "" H 6300 5550 50  0000 C CNN
	1    6300 5550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 579A482C
P 2900 5500
F 0 "C22" H 2910 5570 50  0000 L CNN
F 1 "100n" H 2910 5420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2900 5500 50  0001 C CNN
F 3 "" H 2900 5500 50  0000 C CNN
	1    2900 5500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C21
U 1 1 579A48C3
P 2650 5500
F 0 "C21" H 2660 5570 50  0000 L CNN
F 1 "100n" H 2660 5420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2650 5500 50  0001 C CNN
F 3 "" H 2650 5500 50  0000 C CNN
	1    2650 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 579A55D6
P 4500 5300
F 0 "R10" H 4530 5320 50  0000 L CNN
F 1 "10k" H 4530 5260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4500 5300 50  0001 C CNN
F 3 "" H 4500 5300 50  0000 C CNN
	1    4500 5300
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R16
U 1 1 57A64CCE
P 3700 3650
F 0 "R16" H 3730 3670 50  0000 L CNN
F 1 "100k" H 3730 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3700 3650 50  0001 C CNN
F 3 "" H 3700 3650 50  0000 C CNN
	1    3700 3650
	1    0    0    -1  
$EndComp
$Comp
L R_Small R17
U 1 1 57A655B7
P 3950 3650
F 0 "R17" H 3980 3670 50  0000 L CNN
F 1 "100k" H 3980 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3950 3650 50  0001 C CNN
F 3 "" H 3950 3650 50  0000 C CNN
	1    3950 3650
	1    0    0    -1  
$EndComp
$Comp
L R_Small R18
U 1 1 57A65660
P 4200 3650
F 0 "R18" H 4230 3670 50  0000 L CNN
F 1 "100k" H 4230 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4200 3650 50  0001 C CNN
F 3 "" H 4200 3650 50  0000 C CNN
	1    4200 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 57A658B2
P 3700 3750
F 0 "#PWR019" H 3700 3500 50  0001 C CNN
F 1 "GND" H 3700 3600 50  0000 C CNN
F 2 "" H 3700 3750 50  0000 C CNN
F 3 "" H 3700 3750 50  0000 C CNN
	1    3700 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 57A6593E
P 3950 3750
F 0 "#PWR020" H 3950 3500 50  0001 C CNN
F 1 "GND" H 3950 3600 50  0000 C CNN
F 2 "" H 3950 3750 50  0000 C CNN
F 3 "" H 3950 3750 50  0000 C CNN
	1    3950 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 57A659CA
P 4200 3750
F 0 "#PWR021" H 4200 3500 50  0001 C CNN
F 1 "GND" H 4200 3600 50  0000 C CNN
F 2 "" H 4200 3750 50  0000 C CNN
F 3 "" H 4200 3750 50  0000 C CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R20
U 1 1 57A65AFC
P 4650 4850
F 0 "R20" H 4680 4870 50  0000 L CNN
F 1 "100k" H 4680 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4650 4850 50  0001 C CNN
F 3 "" H 4650 4850 50  0000 C CNN
	1    4650 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 57A65C8D
P 4650 4950
F 0 "#PWR022" H 4650 4700 50  0001 C CNN
F 1 "GND" H 4650 4800 50  0000 C CNN
F 2 "" H 4650 4950 50  0000 C CNN
F 3 "" H 4650 4950 50  0000 C CNN
	1    4650 4950
	1    0    0    -1  
$EndComp
Text Label 9950 4450 2    60   ~ 0
BIAS
$Comp
L R_Small R11
U 1 1 57A6C239
P 6100 3500
F 0 "R11" H 6130 3520 50  0000 L CNN
F 1 "82k" H 6130 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6100 3500 50  0001 C CNN
F 3 "" H 6100 3500 50  0000 C CNN
	1    6100 3500
	-1   0    0    1   
$EndComp
$Comp
L R_Small R14
U 1 1 57A6C62F
P 7350 3450
F 0 "R14" H 7380 3470 50  0000 L CNN
F 1 "8k2" H 7380 3410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7350 3450 50  0001 C CNN
F 3 "" H 7350 3450 50  0000 C CNN
	1    7350 3450
	-1   0    0    1   
$EndComp
$Comp
L R_Small R12
U 1 1 57A6C728
P 6000 3150
F 0 "R12" H 6030 3170 50  0000 L CNN
F 1 "82k" H 6030 3110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6000 3150 50  0001 C CNN
F 3 "" H 6000 3150 50  0000 C CNN
	1    6000 3150
	-1   0    0    1   
$EndComp
$Comp
L R_Small R13
U 1 1 57A6C9E1
P 6300 4100
F 0 "R13" H 6330 4120 50  0000 L CNN
F 1 "82k" H 6330 4060 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6300 4100 50  0001 C CNN
F 3 "" H 6300 4100 50  0000 C CNN
	1    6300 4100
	-1   0    0    1   
$EndComp
$Comp
L R_Small R19
U 1 1 57A6CC85
P 7050 3450
F 0 "R19" H 7080 3470 50  0000 L CNN
F 1 "8k2" H 7080 3410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7050 3450 50  0001 C CNN
F 3 "" H 7050 3450 50  0000 C CNN
	1    7050 3450
	-1   0    0    1   
$EndComp
$Comp
L R_Small R15
U 1 1 57A6CD3D
P 7650 3450
F 0 "R15" H 7680 3470 50  0000 L CNN
F 1 "8k2" H 7680 3410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7650 3450 50  0001 C CNN
F 3 "" H 7650 3450 50  0000 C CNN
	1    7650 3450
	-1   0    0    1   
$EndComp
Text Notes 6750 4300 0    60   ~ 0
^Divides demod volt\nrange to 0.18 to 1.82 V
Text Notes 8900 3650 0    60   ~ 0
BIAS buffer
Text Notes 6900 6050 0    60   ~ 0
NOTE: SDA pull-up, may not be\nnecessary if CPU board has one
Wire Wire Line
	6000 3000 6000 3050
Wire Wire Line
	6000 3300 6000 3250
Wire Wire Line
	6100 3400 6100 3100
Wire Wire Line
	6100 3950 6100 3600
Wire Wire Line
	6100 3100 8400 3100
Connection ~ 3950 3400
Wire Wire Line
	3950 3550 3950 3400
Connection ~ 7350 3900
Connection ~ 8650 3900
Wire Wire Line
	7050 3900 8650 3900
Wire Wire Line
	7900 3200 7900 5300
Wire Wire Line
	6700 3000 6700 5000
Wire Wire Line
	6450 3100 6450 5200
Wire Wire Line
	2950 2900 3300 2900
Wire Wire Line
	3300 3100 2950 3100
Wire Wire Line
	3100 3000 2950 3000
Wire Wire Line
	2950 3400 4550 3400
Wire Wire Line
	2950 3500 4450 3500
Wire Wire Line
	2950 3600 3200 3600
Wire Wire Line
	2950 3700 3200 3700
Wire Wire Line
	2950 3800 3200 3800
Wire Wire Line
	2950 3300 5000 3300
Wire Wire Line
	4550 3950 5000 3950
Wire Wire Line
	4550 3400 4550 3950
Wire Wire Line
	4450 4600 5000 4600
Wire Wire Line
	4450 3500 4450 4600
Wire Wire Line
	4650 2650 4650 4750
Wire Wire Line
	4650 3400 5000 3400
Wire Wire Line
	4650 4050 5000 4050
Connection ~ 4650 3400
Wire Wire Line
	4650 4700 5000 4700
Connection ~ 4650 4050
Wire Wire Line
	3550 1900 3550 2000
Connection ~ 3550 1950
Wire Wire Line
	2950 3200 4550 3200
Wire Wire Line
	4550 3200 4550 2650
Wire Wire Line
	7800 2100 8400 2100
Wire Wire Line
	7800 1900 8400 1900
Wire Wire Line
	8050 2200 8400 2200
Wire Wire Line
	8400 2300 8050 2300
Wire Wire Line
	8050 2400 8400 2400
Wire Wire Line
	8400 2500 8050 2500
Wire Wire Line
	8050 2600 8400 2600
Wire Wire Line
	8400 2700 8050 2700
Wire Wire Line
	8050 2800 8400 2800
Wire Wire Line
	6300 4600 5750 4600
Wire Wire Line
	6100 3950 5750 3950
Wire Wire Line
	5750 3300 6000 3300
Wire Wire Line
	6000 3000 8400 3000
Wire Wire Line
	6300 3200 8400 3200
Wire Wire Line
	4750 2900 8400 2900
Wire Wire Line
	4250 5400 4250 5300
Wire Wire Line
	3700 5750 3700 5850
Wire Wire Line
	4250 5600 4250 5950
Wire Wire Line
	2650 5800 4250 5800
Connection ~ 3700 5800
Wire Wire Line
	3150 5800 3150 5600
Wire Wire Line
	2600 5300 3300 5300
Wire Wire Line
	3150 5300 3150 5400
Connection ~ 3150 5300
Wire Wire Line
	5000 5600 5000 5650
Wire Wire Line
	4700 5600 5000 5600
Wire Wire Line
	4700 5550 4700 5650
Connection ~ 4250 5300
Wire Wire Line
	4700 5850 4700 5950
Wire Wire Line
	5000 5950 5000 5850
Connection ~ 4250 5800
Connection ~ 4700 5950
Connection ~ 4700 5600
Wire Wire Line
	4900 3500 4900 5600
Wire Wire Line
	4900 4800 5000 4800
Connection ~ 4900 5600
Wire Wire Line
	5000 3500 4900 3500
Connection ~ 4900 4800
Wire Wire Line
	5000 4150 4900 4150
Connection ~ 4900 4150
Wire Wire Line
	4900 5100 6750 5100
Connection ~ 4900 5100
Wire Wire Line
	6550 5300 6750 5300
Wire Wire Line
	6550 5100 6550 5300
Connection ~ 6550 5100
Wire Wire Line
	6600 5100 6600 4450
Wire Wire Line
	6600 4450 7950 4450
Wire Wire Line
	7950 4450 7950 5200
Wire Wire Line
	7950 5200 7750 5200
Connection ~ 6600 5100
Wire Wire Line
	6700 5000 6750 5000
Connection ~ 6700 3000
Wire Wire Line
	6450 5200 6750 5200
Wire Wire Line
	7900 5300 7750 5300
Connection ~ 7900 3200
Wire Wire Line
	6200 5400 6750 5400
Wire Wire Line
	8700 5400 7750 5400
Wire Wire Line
	7750 5500 8550 5500
Wire Wire Line
	8550 5500 8550 5700
Wire Wire Line
	8550 5700 8700 5700
Wire Wire Line
	4300 5300 4300 4900
Connection ~ 4300 5300
Wire Wire Line
	6550 5500 6550 6200
Wire Wire Line
	6550 5500 6750 5500
Wire Wire Line
	4250 5950 5000 5950
Wire Wire Line
	4100 5300 4400 5300
Wire Wire Line
	8600 5200 8600 5600
Wire Wire Line
	8600 5600 8700 5600
Wire Wire Line
	8700 5300 8600 5300
Connection ~ 8600 5300
Wire Wire Line
	8650 5500 8650 5850
Wire Wire Line
	8650 5500 8700 5500
Wire Wire Line
	8700 5800 8650 5800
Connection ~ 8650 5800
Wire Wire Line
	6700 6100 6700 6050
Wire Wire Line
	6550 6100 6700 6100
Connection ~ 6550 6100
Wire Wire Line
	6700 5600 6700 5850
Wire Wire Line
	6700 5600 6750 5600
Wire Wire Line
	6700 5750 8000 5750
Wire Wire Line
	8000 5750 8000 3300
Wire Wire Line
	8000 3300 8400 3300
Connection ~ 6700 5750
Wire Wire Line
	7750 5600 8050 5600
Wire Wire Line
	8050 5600 8050 3400
Wire Wire Line
	8050 3400 8400 3400
Wire Wire Line
	7900 5100 7750 5100
Connection ~ 7900 5100
Wire Wire Line
	7750 5000 7950 5000
Connection ~ 7950 5000
Wire Wire Line
	3400 1950 3800 1950
Wire Wire Line
	3800 1900 3800 2000
Connection ~ 3800 1950
Wire Wire Line
	3550 2200 3550 2300
Wire Wire Line
	3550 2250 3800 2250
Wire Wire Line
	3800 2250 3800 2200
Connection ~ 3550 2250
Wire Wire Line
	3550 1600 3550 1700
Wire Wire Line
	3550 1650 3800 1650
Wire Wire Line
	3800 1650 3800 1700
Connection ~ 3550 1650
Wire Wire Line
	8650 4300 8900 4300
Wire Wire Line
	8650 3700 8650 4300
Wire Wire Line
	8650 3700 9750 3700
Wire Wire Line
	9750 3700 9750 4150
Wire Wire Line
	9750 4150 9650 4150
Wire Wire Line
	4750 2900 4750 2650
Wire Wire Line
	6300 5450 6300 5400
Connection ~ 6300 5400
Wire Wire Line
	6300 5650 6300 5800
Wire Wire Line
	6300 5800 6550 5800
Connection ~ 6550 5800
Wire Wire Line
	2650 5400 2650 5300
Connection ~ 2650 5300
Wire Wire Line
	2900 5300 2900 5400
Connection ~ 2900 5300
Wire Wire Line
	2650 5600 2650 5800
Connection ~ 3150 5800
Wire Wire Line
	2900 5600 2900 5800
Connection ~ 2900 5800
Wire Wire Line
	4600 5300 4700 5300
Wire Wire Line
	4700 5300 4700 5350
Wire Wire Line
	3700 3550 3700 3500
Connection ~ 3700 3500
Wire Wire Line
	4200 3550 4200 3300
Connection ~ 4200 3300
Connection ~ 4650 4700
Wire Wire Line
	9950 4450 9650 4450
Wire Wire Line
	6300 4000 6300 3200
Wire Wire Line
	6300 4200 6300 4600
Connection ~ 6450 3100
Wire Wire Line
	7650 3350 7650 3200
Connection ~ 7650 3200
Wire Wire Line
	7650 3550 7650 3900
Connection ~ 7650 3900
Wire Wire Line
	7350 3550 7350 3900
Wire Wire Line
	7350 3350 7350 3000
Connection ~ 7350 3000
Wire Wire Line
	7050 3550 7050 3900
Wire Wire Line
	7050 3350 7050 3100
Connection ~ 7050 3100
$EndSCHEMATC
