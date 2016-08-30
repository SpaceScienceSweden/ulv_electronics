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
LIBS:demodulator2-cache
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
$Sheet
S 4100 2800 750  400 
U 5790C9D7
F0 "channel1" 60
F1 "channel.sch" 60
F2 "Xa" I L 4100 2900 60 
F3 "Y" I L 4100 3100 60 
F4 "DEMOD" I R 4850 2900 60 
F5 "Xb" I L 4100 3000 60 
$EndSheet
$Sheet
S 4100 3450 750  400 
U 5790D7DB
F0 "channel2" 60
F1 "channel.sch" 60
F2 "Xa" I L 4100 3550 60 
F3 "Y" I L 4100 3750 60 
F4 "DEMOD" I R 4850 3550 60 
F5 "Xb" I L 4100 3650 60 
$EndSheet
$Sheet
S 4100 4100 750  400 
U 5790D9C8
F0 "channel3" 60
F1 "channel.sch" 60
F2 "Xa" I L 4100 4200 60 
F3 "Y" I L 4100 4400 60 
F4 "DEMOD" I R 4850 4200 60 
F5 "Xb" I L 4100 4300 60 
$EndSheet
$Comp
L C_Small C1
U 1 1 5790F00D
P 9450 1700
F 0 "C1" H 9460 1770 50  0000 L CNN
F 1 "100n" H 9460 1620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9450 1700 50  0001 C CNN
F 3 "" H 9450 1700 50  0000 C CNN
	1    9450 1700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5790F359
P 9450 2000
F 0 "C2" H 9460 2070 50  0000 L CNN
F 1 "100n" H 9460 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9450 2000 50  0001 C CNN
F 3 "" H 9450 2000 50  0000 C CNN
	1    9450 2000
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR01
U 1 1 5790F50C
P 9450 2200
F 0 "#PWR01" H 9450 2075 50  0001 C CNN
F 1 "-9VA" H 9450 2350 50  0000 C CNN
F 2 "" H 9450 2200 50  0000 C CNN
F 3 "" H 9450 2200 50  0000 C CNN
	1    9450 2200
	-1   0    0    1   
$EndComp
$Comp
L +9V #PWR02
U 1 1 5790F696
P 9450 1500
F 0 "#PWR02" H 9450 1350 50  0001 C CNN
F 1 "+9V" H 9450 1640 50  0000 C CNN
F 2 "" H 9450 1500 50  0000 C CNN
F 3 "" H 9450 1500 50  0000 C CNN
	1    9450 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5790F7AA
P 9300 1850
F 0 "#PWR03" H 9300 1600 50  0001 C CNN
F 1 "GND" H 9300 1700 50  0000 C CNN
F 2 "" H 9300 1850 50  0000 C CNN
F 3 "" H 9300 1850 50  0000 C CNN
	1    9300 1850
	0    1    1    0   
$EndComp
Text Notes 9250 1250 0    60   ~ 0
LM6211 caps
Text Label 4900 2900 0    60   ~ 0
DEMOD1
Text Label 4900 3550 0    60   ~ 0
DEMOD2
Text Label 4900 4200 0    60   ~ 0
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
P 5650 5500
F 0 "U1" H 5650 5700 60  0000 C CNN
F 1 "L78L33" H 5650 5600 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 5650 5500 60  0001 C CNN
F 3 "" H 5650 5500 60  0000 C CNN
	1    5650 5500
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR04
U 1 1 57917A3E
P 4550 5500
F 0 "#PWR04" H 4550 5350 50  0001 C CNN
F 1 "+9V" H 4550 5640 50  0000 C CNN
F 2 "" H 4550 5500 50  0000 C CNN
F 3 "" H 4550 5500 50  0000 C CNN
	1    4550 5500
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C3
U 1 1 57917AAE
P 5100 5700
F 0 "C3" H 5110 5770 50  0000 L CNN
F 1 "100n" H 5110 5620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5100 5700 50  0001 C CNN
F 3 "" H 5100 5700 50  0000 C CNN
	1    5100 5700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 57917BA0
P 6200 5700
F 0 "C4" H 6210 5770 50  0000 L CNN
F 1 "100n" H 6210 5620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6200 5700 50  0001 C CNN
F 3 "" H 6200 5700 50  0000 C CNN
	1    6200 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 57917D0C
P 5650 6050
F 0 "#PWR05" H 5650 5800 50  0001 C CNN
F 1 "GND" H 5650 5900 50  0000 C CNN
F 2 "" H 5650 6050 50  0000 C CNN
F 3 "" H 5650 6050 50  0000 C CNN
	1    5650 6050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5791830C
P 9350 4050
F 0 "C5" H 9360 4120 50  0000 L CNN
F 1 "100n" H 9360 3970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9350 4050 50  0001 C CNN
F 3 "" H 9350 4050 50  0000 C CNN
	1    9350 4050
	1    0    0    -1  
$EndComp
Text Notes 8550 2950 0    60   ~ 0
Bias voltage generator, 1.024 V\nAdded during demod, subtracted in ADC\nISL21010 can only sink 1 mA, so buffer\nit with an OP
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
L +3.3VADC #PWR06
U 1 1 5791BA44
P 6200 5400
F 0 "#PWR06" H 6350 5350 50  0001 C CNN
F 1 "+3.3VADC" H 6200 5500 50  0000 C CNN
F 2 "" H 6200 5400 50  0000 C CNN
F 3 "" H 6200 5400 50  0000 C CNN
	1    6200 5400
	1    0    0    -1  
$EndComp
$Comp
L +3.3VADC #PWR07
U 1 1 5791C6E5
P 8600 5200
F 0 "#PWR07" H 8750 5150 50  0001 C CNN
F 1 "+3.3VADC" H 8600 5300 50  0000 C CNN
F 2 "" H 8600 5200 50  0000 C CNN
F 3 "" H 8600 5200 50  0000 C CNN
	1    8600 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5791C99D
P 8650 5850
F 0 "#PWR08" H 8650 5600 50  0001 C CNN
F 1 "GND" H 8650 5700 50  0000 C CNN
F 2 "" H 8650 5850 50  0000 C CNN
F 3 "" H 8650 5850 50  0000 C CNN
	1    8650 5850
	1    0    0    -1  
$EndComp
Text Label 4250 6650 3    60   ~ 0
SDA
Text Label 4150 6650 3    60   ~ 0
SCL
$Comp
L C_Small C18
U 1 1 579219AA
P 9700 1700
F 0 "C18" H 9710 1770 50  0000 L CNN
F 1 "100n" H 9710 1620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9700 1700 50  0001 C CNN
F 3 "" H 9700 1700 50  0000 C CNN
	1    9700 1700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C19
U 1 1 57921A48
P 9700 2000
F 0 "C19" H 9710 2070 50  0000 L CNN
F 1 "100n" H 9710 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9700 2000 50  0001 C CNN
F 3 "" H 9700 2000 50  0000 C CNN
	1    9700 2000
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR09
U 1 1 57922CA4
P 8800 3300
F 0 "#PWR09" H 8800 3150 50  0001 C CNN
F 1 "+9V" H 8800 3440 50  0000 C CNN
F 2 "" H 8800 3300 50  0000 C CNN
F 3 "" H 8800 3300 50  0000 C CNN
	1    8800 3300
	-1   0    0    -1  
$EndComp
$Comp
L -9VA #PWR010
U 1 1 57922D24
P 8800 4000
F 0 "#PWR010" H 8800 3875 50  0001 C CNN
F 1 "-9VA" H 8800 4150 50  0000 C CNN
F 2 "" H 8800 4000 50  0000 C CNN
F 3 "" H 8800 4000 50  0000 C CNN
	1    8800 4000
	1    0    0    1   
$EndComp
$Comp
L C_Small C20
U 1 1 579253E8
P 10450 4050
F 0 "C20" H 10460 4120 50  0000 L CNN
F 1 "100n" H 10460 3970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10450 4050 50  0001 C CNN
F 3 "" H 10450 4050 50  0000 C CNN
	1    10450 4050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 579A482C
P 4850 5700
F 0 "C22" H 4860 5770 50  0000 L CNN
F 1 "100n" H 4860 5620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4850 5700 50  0001 C CNN
F 3 "" H 4850 5700 50  0000 C CNN
	1    4850 5700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C21
U 1 1 579A48C3
P 4600 5700
F 0 "C21" H 4610 5770 50  0000 L CNN
F 1 "100n" H 4610 5620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4600 5700 50  0001 C CNN
F 3 "" H 4600 5700 50  0000 C CNN
	1    4600 5700
	1    0    0    -1  
$EndComp
$Comp
L R_Small R11
U 1 1 57A6C239
P 5450 2900
F 0 "R11" H 5480 2920 50  0000 L CNN
F 1 "10k" H 5480 2860 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5450 2900 50  0001 C CNN
F 3 "" H 5450 2900 50  0000 C CNN
	1    5450 2900
	0    1    1    0   
$EndComp
$Comp
L R_Small R12
U 1 1 57A6C728
P 5450 3550
F 0 "R12" H 5480 3570 50  0000 L CNN
F 1 "10k" H 5480 3510 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5450 3550 50  0001 C CNN
F 3 "" H 5450 3550 50  0000 C CNN
	1    5450 3550
	0    1    1    0   
$EndComp
$Comp
L R_Small R13
U 1 1 57A6C9E1
P 5450 4200
F 0 "R13" H 5480 4220 50  0000 L CNN
F 1 "10k" H 5480 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5450 4200 50  0001 C CNN
F 3 "" H 5450 4200 50  0000 C CNN
	1    5450 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR011
U 1 1 57A6ECBD
P 9950 4350
F 0 "#PWR011" H 9950 4100 50  0001 C CNN
F 1 "GND" H 9950 4200 50  0000 C CNN
F 2 "" H 9950 4350 50  0000 C CNN
F 3 "" H 9950 4350 50  0000 C CNN
	1    9950 4350
	1    0    0    -1  
$EndComp
$Comp
L SCUBE40 P2
U 1 1 57A65B71
P 750 6450
F 0 "P2" H 700 5500 60  0000 C CNN
F 1 "SCUBE40" H 700 7800 60  0000 C CNN
F 2 "SCUBE:scube40_no_holes" H 650 6300 60  0001 C CNN
F 3 "" H 650 6300 60  0000 C CNN
	1    750  6450
	-1   0    0    -1  
$EndComp
$Comp
L SCUBE40 P2
U 2 1 57A65C4C
P 3450 7450
F 0 "P2" H 3400 6500 60  0000 C CNN
F 1 "SCUBE40" H 3400 8800 60  0000 C CNN
F 2 "SCUBE:scube40_no_holes" H 3350 7300 60  0001 C CNN
F 3 "" H 3350 7300 60  0000 C CNN
	2    3450 7450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 57A65F75
P 1200 6250
F 0 "#PWR012" H 1200 6000 50  0001 C CNN
F 1 "GND" H 1200 6100 50  0000 C CNN
F 2 "" H 1200 6250 50  0000 C CNN
F 3 "" H 1200 6250 50  0000 C CNN
	1    1200 6250
	0    -1   -1   0   
$EndComp
$Comp
L +9V #PWR013
U 1 1 57A66015
P 1200 6950
F 0 "#PWR013" H 1200 6800 50  0001 C CNN
F 1 "+9V" H 1200 7090 50  0000 C CNN
F 2 "" H 1200 6950 50  0000 C CNN
F 3 "" H 1200 6950 50  0000 C CNN
	1    1200 6950
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR014
U 1 1 57A660B5
P 1350 7050
F 0 "#PWR014" H 1350 6925 50  0001 C CNN
F 1 "-9VA" H 1350 7200 50  0000 C CNN
F 2 "" H 1350 7050 50  0000 C CNN
F 3 "" H 1350 7050 50  0000 C CNN
	1    1350 7050
	0    1    1    0   
$EndComp
Text Notes 4350 5200 0    60   ~ 0
Use linear 3.3 V regulator to reduce noise.\n3.3 V on the bus is switched..
$Comp
L +3.3VADC #PWR015
U 1 1 57A76ACF
P 10450 3700
F 0 "#PWR015" H 10600 3650 50  0001 C CNN
F 1 "+3.3VADC" H 10450 3800 50  0000 C CNN
F 2 "" H 10450 3700 50  0000 C CNN
F 3 "" H 10450 3700 50  0000 C CNN
	1    10450 3700
	1    0    0    -1  
$EndComp
$Comp
L LM6211MF U4
U 1 1 57A8AB7F
P 8800 3650
F 0 "U4" H 9050 3950 60  0000 C CNN
F 1 "LM6211MF" H 9100 3800 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 8800 3650 60  0001 C CNN
F 3 "" H 8800 3650 60  0000 C CNN
	1    8800 3650
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C23
U 1 1 57A8B721
P 9950 1700
F 0 "C23" H 9960 1770 50  0000 L CNN
F 1 "100n" H 9960 1620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9950 1700 50  0001 C CNN
F 3 "" H 9950 1700 50  0000 C CNN
	1    9950 1700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C25
U 1 1 57A8B8A2
P 9950 2000
F 0 "C25" H 9960 2070 50  0000 L CNN
F 1 "100n" H 9960 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9950 2000 50  0001 C CNN
F 3 "" H 9950 2000 50  0000 C CNN
	1    9950 2000
	1    0    0    -1  
$EndComp
$Comp
L ISL21010 U10
U 1 1 57A8E334
P 9950 3800
F 0 "U10" H 9950 4000 60  0000 C CNN
F 1 "ISL21010" H 9950 3900 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9950 3800 60  0001 C CNN
F 3 "" H 9950 3800 60  0000 C CNN
	1    9950 3800
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X10 P?
U 1 1 57BCE6A0
P 1050 4000
F 0 "P?" H 1050 4550 50  0000 C CNN
F 1 "CONN_01X10" V 1150 4000 50  0000 C CNN
F 2 "" H 1050 4000 50  0000 C CNN
F 3 "" H 1050 4000 50  0000 C CNN
	1    1050 4000
	-1   0    0    -1  
$EndComp
$Comp
L +9V #PWR?
U 1 1 57BCEBF0
P 1250 3550
F 0 "#PWR?" H 1250 3400 50  0001 C CNN
F 1 "+9V" H 1250 3690 50  0000 C CNN
F 2 "" H 1250 3550 50  0000 C CNN
F 3 "" H 1250 3550 50  0000 C CNN
	1    1250 3550
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR?
U 1 1 57BCEC9E
P 1250 3750
F 0 "#PWR?" H 1250 3625 50  0001 C CNN
F 1 "-9VA" H 1250 3900 50  0000 C CNN
F 2 "" H 1250 3750 50  0000 C CNN
F 3 "" H 1250 3750 50  0000 C CNN
	1    1250 3750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57BCED4C
P 1500 3650
F 0 "#PWR?" H 1500 3400 50  0001 C CNN
F 1 "GND" H 1500 3500 50  0000 C CNN
F 2 "" H 1500 3650 50  0000 C CNN
F 3 "" H 1500 3650 50  0000 C CNN
	1    1500 3650
	0    -1   -1   0   
$EndComp
Text Label 1700 3850 2    60   ~ 0
TACH
Text Label 1700 3950 2    60   ~ 0
OUT1
Text Label 1700 4050 2    60   ~ 0
OUT2
Text Label 1700 4150 2    60   ~ 0
OUT3
Text Label 1700 4250 2    60   ~ 0
A0
Text Label 1700 4350 2    60   ~ 0
A1
Text Label 1700 4450 2    60   ~ 0
REF
$Comp
L GND #PWR?
U 1 1 57BD02E4
P 1700 4600
F 0 "#PWR?" H 1700 4350 50  0001 C CNN
F 1 "GND" H 1700 4450 50  0000 C CNN
F 2 "" H 1700 4600 50  0000 C CNN
F 3 "" H 1700 4600 50  0000 C CNN
	1    1700 4600
	1    0    0    -1  
$EndComp
Text Label 1900 3800 1    60   ~ 0
TACHa
Text Label 2100 3800 1    60   ~ 0
TACHb
Connection ~ 4850 6000
Wire Wire Line
	4850 5800 4850 6000
Connection ~ 5100 6000
Wire Wire Line
	4600 5800 4600 6000
Connection ~ 4850 5500
Wire Wire Line
	4850 5500 4850 5600
Connection ~ 4600 5500
Wire Wire Line
	4600 5600 4600 5500
Connection ~ 9450 1550
Wire Wire Line
	9700 1550 9700 1600
Wire Wire Line
	9450 1550 9700 1550
Wire Wire Line
	9700 1550 9950 1550
Wire Wire Line
	9450 1500 9450 1550
Wire Wire Line
	9450 1550 9450 1600
Connection ~ 9450 2150
Wire Wire Line
	9700 2150 9700 2100
Wire Wire Line
	9450 2150 9700 2150
Wire Wire Line
	9700 2150 9950 2150
Wire Wire Line
	9450 2100 9450 2150
Wire Wire Line
	9450 2150 9450 2200
Connection ~ 9700 1850
Wire Wire Line
	9700 1800 9700 1850
Wire Wire Line
	9700 1850 9700 1900
Wire Wire Line
	9300 1850 9450 1850
Wire Wire Line
	9450 1850 9700 1850
Wire Wire Line
	9700 1850 9950 1850
Connection ~ 8050 5000
Wire Wire Line
	8050 5000 7750 5000
Connection ~ 7900 5100
Wire Wire Line
	7900 5100 7750 5100
Wire Wire Line
	6700 5600 6750 5600
Connection ~ 8650 5800
Wire Wire Line
	8700 5800 8650 5800
Wire Wire Line
	8650 5500 8700 5500
Wire Wire Line
	8650 5500 8650 5800
Wire Wire Line
	8650 5800 8650 5850
Connection ~ 8600 5300
Wire Wire Line
	8700 5300 8600 5300
Wire Wire Line
	8600 5600 8700 5600
Wire Wire Line
	8600 5200 8600 5300
Wire Wire Line
	8600 5300 8600 5600
Wire Wire Line
	6050 5500 6200 5500
Wire Wire Line
	6200 5500 6750 5500
Wire Wire Line
	8550 5700 8700 5700
Wire Wire Line
	8550 5500 8550 5700
Wire Wire Line
	7750 5500 8550 5500
Wire Wire Line
	8700 5400 7750 5400
Wire Wire Line
	7900 5300 7750 5300
Wire Wire Line
	6450 5200 6750 5200
Wire Wire Line
	6700 5000 6750 5000
Connection ~ 6600 5100
Wire Wire Line
	8050 5200 7750 5200
Wire Wire Line
	8050 3150 8050 3650
Wire Wire Line
	8050 3650 8050 4750
Wire Wire Line
	8050 4750 8050 5000
Wire Wire Line
	8050 5000 8050 5200
Wire Wire Line
	6600 4750 6600 5100
Wire Wire Line
	6600 5100 6600 5300
Wire Wire Line
	6600 5300 6750 5300
Wire Wire Line
	6600 5100 6750 5100
Connection ~ 6200 5500
Connection ~ 5100 5500
Wire Wire Line
	5100 5500 5100 5600
Wire Wire Line
	4550 5500 4600 5500
Wire Wire Line
	4600 5500 4850 5500
Wire Wire Line
	4850 5500 5100 5500
Wire Wire Line
	5100 5500 5250 5500
Wire Wire Line
	5100 6000 5100 5800
Connection ~ 5650 6000
Wire Wire Line
	4600 6000 4850 6000
Wire Wire Line
	4850 6000 5100 6000
Wire Wire Line
	5100 6000 5650 6000
Wire Wire Line
	5650 6000 6200 6000
Wire Wire Line
	6200 6000 6450 6000
Wire Wire Line
	5650 5950 5650 6000
Wire Wire Line
	5650 6000 5650 6050
Wire Wire Line
	6200 5400 6200 5500
Wire Wire Line
	6200 5500 6200 5600
Wire Wire Line
	4850 2900 5350 2900
Wire Wire Line
	4850 3550 5350 3550
Wire Wire Line
	4850 4200 5350 4200
Connection ~ 9450 1850
Wire Wire Line
	9450 1800 9450 1850
Wire Wire Line
	9450 1850 9450 1900
Wire Wire Line
	7900 4200 7900 5100
Wire Wire Line
	7900 5100 7900 5300
Wire Wire Line
	1350 7050 1200 7050
Wire Wire Line
	6700 5600 6700 6500
Wire Wire Line
	6200 6000 6200 5800
Wire Wire Line
	6750 5400 6450 5400
Wire Wire Line
	6450 5400 6450 6000
Connection ~ 6200 6000
Connection ~ 8250 3650
Wire Wire Line
	9350 3500 9250 3500
Wire Wire Line
	9350 3050 9350 3500
Wire Wire Line
	8250 3050 9350 3050
Wire Wire Line
	8250 3650 8250 3050
Wire Wire Line
	9950 1800 9950 1850
Wire Wire Line
	9950 1850 9950 1900
Connection ~ 9950 1850
Connection ~ 9700 1550
Wire Wire Line
	9950 1550 9950 1600
Wire Wire Line
	9950 2150 9950 2100
Connection ~ 9700 2150
Wire Wire Line
	10450 3700 10450 3800
Wire Wire Line
	10450 3800 10450 3950
Wire Wire Line
	10400 3800 10450 3800
Connection ~ 10450 3800
Wire Wire Line
	9250 3800 9350 3800
Wire Wire Line
	9350 3800 9500 3800
Wire Wire Line
	9350 3800 9350 3950
Connection ~ 9350 3800
Wire Wire Line
	9350 4150 9350 4300
Wire Wire Line
	9350 4300 9950 4300
Wire Wire Line
	9950 4300 10450 4300
Wire Wire Line
	10450 4300 10450 4150
Wire Wire Line
	9950 4250 9950 4300
Wire Wire Line
	9950 4300 9950 4350
Connection ~ 9950 4300
Wire Wire Line
	1500 3650 1250 3650
Wire Wire Line
	1200 5850 1800 5850
Wire Wire Line
	1800 5850 1800 4250
Wire Wire Line
	1800 4250 1250 4250
Wire Wire Line
	1250 4350 1900 4350
Wire Wire Line
	1900 4350 1900 5950
Wire Wire Line
	1900 5950 1200 5950
Wire Wire Line
	1700 4600 1700 4450
Wire Wire Line
	1700 4450 1250 4450
Wire Wire Line
	1250 3850 2000 3850
Wire Wire Line
	2000 3850 2000 3500
Wire Wire Line
	1900 3500 1900 4250
Wire Wire Line
	1250 3950 2300 3950
Wire Wire Line
	2300 3950 2300 3500
Wire Wire Line
	1250 4050 2600 4050
Wire Wire Line
	2600 4050 2600 3500
Wire Wire Line
	1250 4150 2900 4150
Wire Wire Line
	2900 4150 2900 3500
Wire Wire Line
	2200 3500 2200 4250
Wire Wire Line
	2200 4250 2200 6400
Wire Wire Line
	2200 6400 4050 6400
Wire Wire Line
	4050 6400 4050 7000
Wire Wire Line
	2400 3500 2400 4350
Wire Wire Line
	2400 4350 2400 6300
Wire Wire Line
	2400 6300 3450 6300
Wire Wire Line
	3450 6300 3450 7000
Wire Wire Line
	2500 3500 2500 4450
Wire Wire Line
	2500 4450 2500 6200
Wire Wire Line
	2500 6200 3950 6200
Wire Wire Line
	3950 6200 3950 7000
Wire Wire Line
	2700 3500 2700 4550
Wire Wire Line
	2700 4550 2700 6100
Wire Wire Line
	2700 6100 3350 6100
Wire Wire Line
	3350 6100 3350 7000
Wire Wire Line
	2800 3500 2800 4650
Wire Wire Line
	2800 4650 2800 6000
Wire Wire Line
	2800 6000 3850 6000
Wire Wire Line
	3850 6000 3850 7000
Wire Wire Line
	3000 3500 3000 4750
Wire Wire Line
	3000 4750 3000 5900
Wire Wire Line
	3000 5900 3250 5900
Wire Wire Line
	3250 5900 3250 7000
Text Label 2200 3800 1    60   ~ 0
OUT1a
Text Label 2400 3800 1    60   ~ 0
OUT1b
Text Label 2500 3800 1    60   ~ 0
OUT2a
Text Label 2700 3800 1    60   ~ 0
OUT2b
Text Label 2800 3800 1    60   ~ 0
OUT3a
Text Label 3000 3800 1    60   ~ 0
OUT3b
Text Label 1650 6050 2    60   ~ 0
TACHa
Text Label 1650 6150 2    60   ~ 0
TACHb
Text GLabel 8050 3150 1    60   Input ~ 0
BIAS
Connection ~ 8050 3650
Text Label 3750 6650 3    60   ~ 0
LO
Wire Wire Line
	3750 6650 3750 7000
Wire Wire Line
	6600 4750 8050 4750
Wire Wire Line
	6700 6500 4250 6500
Wire Wire Line
	4250 6500 4250 7000
Wire Wire Line
	7750 5600 7800 5600
Wire Wire Line
	7800 5600 7800 6400
Wire Wire Line
	7800 6400 4150 6400
Wire Wire Line
	4150 6400 4150 7000
Wire Wire Line
	5550 2900 5650 2900
Wire Wire Line
	5650 2900 6700 2900
Wire Wire Line
	8050 3650 8250 3650
Wire Wire Line
	8250 3650 8350 3650
Wire Wire Line
	5550 3550 5650 3550
Wire Wire Line
	5650 3550 6450 3550
Wire Wire Line
	5550 4200 5650 4200
Wire Wire Line
	5650 4200 7900 4200
Wire Wire Line
	6700 2900 6700 5000
Wire Wire Line
	6450 3550 6450 5200
Wire Wire Line
	2200 4250 3300 4250
Wire Wire Line
	3300 4250 3300 2900
Wire Wire Line
	3300 2900 4100 2900
Connection ~ 2200 4250
Wire Wire Line
	2400 4350 3400 4350
Wire Wire Line
	3400 4350 3400 3000
Wire Wire Line
	3400 3000 4100 3000
Connection ~ 2400 4350
Wire Wire Line
	2500 4450 3500 4450
Wire Wire Line
	3500 4450 3500 3550
Wire Wire Line
	3500 3550 4100 3550
Connection ~ 2500 4450
Wire Wire Line
	2700 4550 3600 4550
Wire Wire Line
	3600 4550 3600 3650
Wire Wire Line
	3600 3650 4100 3650
Connection ~ 2700 4550
Wire Wire Line
	2800 4650 3700 4650
Wire Wire Line
	3700 4650 3700 4200
Wire Wire Line
	3700 4200 4100 4200
Connection ~ 2800 4650
Wire Wire Line
	3000 4750 3800 4750
Wire Wire Line
	3800 4750 3800 4300
Wire Wire Line
	3800 4300 4100 4300
Connection ~ 3000 4750
$Comp
L CONN_01X12 P?
U 1 1 57BEB0FE
P 2450 3300
F 0 "P?" H 2450 3950 50  0000 C CNN
F 1 "CONN_01X12" V 2550 3300 50  0000 C CNN
F 2 "" H 2450 3300 50  0000 C CNN
F 3 "" H 2450 3300 50  0000 C CNN
	1    2450 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 4250 2000 4250
Connection ~ 8050 4750
Wire Wire Line
	1200 6050 2000 6050
Wire Wire Line
	1200 6150 2100 6150
Wire Wire Line
	2000 6050 2000 4250
Wire Wire Line
	2100 6150 2100 3500
Text GLabel 1300 5750 2    60   Input ~ 0
CHANNEL
Wire Wire Line
	1300 5750 1200 5750
$Comp
L ADG1219 U?
U 1 1 57C60899
P 3100 1700
F 0 "U?" H 3100 2100 60  0000 C CNN
F 1 "ADG1219" H 3100 1950 60  0000 C CNN
F 2 "" H 3100 1700 60  0000 C CNN
F 3 "" H 3100 1700 60  0000 C CNN
	1    3100 1700
	1    0    0    -1  
$EndComp
Text Label 3800 1550 2    60   ~ 0
LO
Wire Wire Line
	3800 1550 3550 1550
$Comp
L +3.3VADC #PWR?
U 1 1 57C60F59
P 2300 1550
F 0 "#PWR?" H 2450 1500 50  0001 C CNN
F 1 "+3.3VADC" H 2300 1650 50  0000 C CNN
F 2 "" H 2300 1550 50  0000 C CNN
F 3 "" H 2300 1550 50  0000 C CNN
	1    2300 1550
	0    -1   -1   0   
$EndComp
$Comp
L +9V #PWR?
U 1 1 57C60FED
P 2650 1650
F 0 "#PWR?" H 2650 1500 50  0001 C CNN
F 1 "+9V" H 2650 1790 50  0000 C CNN
F 2 "" H 2650 1650 50  0000 C CNN
F 3 "" H 2650 1650 50  0000 C CNN
	1    2650 1650
	0    -1   -1   0   
$EndComp
$Comp
L -9VA #PWR?
U 1 1 57C61081
P 2650 1850
F 0 "#PWR?" H 2650 1725 50  0001 C CNN
F 1 "-9VA" H 2650 2000 50  0000 C CNN
F 2 "" H 2650 1850 50  0000 C CNN
F 3 "" H 2650 1850 50  0000 C CNN
	1    2650 1850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57C61115
P 2450 1750
F 0 "#PWR?" H 2450 1500 50  0001 C CNN
F 1 "GND" H 2450 1600 50  0000 C CNN
F 2 "" H 2450 1750 50  0000 C CNN
F 3 "" H 2450 1750 50  0000 C CNN
	1    2450 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1750 2650 1750
Wire Wire Line
	2300 1550 2650 1550
Wire Wire Line
	4000 4400 4100 4400
Wire Wire Line
	4000 1750 4000 3100
Wire Wire Line
	4000 3100 4000 3750
Wire Wire Line
	4000 3750 4000 4400
Wire Wire Line
	4000 1750 3550 1750
Wire Wire Line
	4100 3100 4000 3100
Connection ~ 4000 3100
Wire Wire Line
	4100 3750 4000 3750
Connection ~ 4000 3750
$Comp
L ZENERsmall D?
U 1 1 57C626D7
P 4350 1600
F 0 "D?" H 4350 1700 50  0000 C CNN
F 1 "2V5" H 4350 1500 50  0000 C CNN
F 2 "" H 4350 1600 50  0000 C CNN
F 3 "" H 4350 1600 50  0000 C CNN
	1    4350 1600
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D?
U 1 1 57C62851
P 4350 1900
F 0 "D?" H 4350 2000 50  0000 C CNN
F 1 "2V5" H 4350 1800 50  0000 C CNN
F 2 "" H 4350 1900 50  0000 C CNN
F 3 "" H 4350 1900 50  0000 C CNN
	1    4350 1900
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR?
U 1 1 57C628EF
P 4350 2300
F 0 "#PWR?" H 4350 2175 50  0001 C CNN
F 1 "-9VA" H 4350 2450 50  0000 C CNN
F 2 "" H 4350 2300 50  0000 C CNN
F 3 "" H 4350 2300 50  0000 C CNN
	1    4350 2300
	-1   0    0    1   
$EndComp
$Comp
L R_Small R?
U 1 1 57C62987
P 4350 2200
F 0 "R?" H 4380 2220 50  0000 L CNN
F 1 "10k" H 4380 2160 50  0000 L CNN
F 2 "" H 4350 2200 50  0000 C CNN
F 3 "" H 4350 2200 50  0000 C CNN
	1    4350 2200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 57C62A4D
P 4350 1300
F 0 "R?" H 4380 1320 50  0000 L CNN
F 1 "10k" H 4380 1260 50  0000 L CNN
F 2 "" H 4350 1300 50  0000 C CNN
F 3 "" H 4350 1300 50  0000 C CNN
	1    4350 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57C62D2D
P 4500 1750
F 0 "#PWR?" H 4500 1500 50  0001 C CNN
F 1 "GND" H 4500 1600 50  0000 C CNN
F 2 "" H 4500 1750 50  0000 C CNN
F 3 "" H 4500 1750 50  0000 C CNN
	1    4500 1750
	0    -1   -1   0   
$EndComp
$Comp
L +9V #PWR?
U 1 1 57C6312B
P 4350 1200
F 0 "#PWR?" H 4350 1050 50  0001 C CNN
F 1 "+9V" H 4350 1340 50  0000 C CNN
F 2 "" H 4350 1200 50  0000 C CNN
F 3 "" H 4350 1200 50  0000 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1700 4350 1750
Wire Wire Line
	4350 1750 4350 1800
Wire Wire Line
	4500 1750 4350 1750
Connection ~ 4350 1750
Wire Wire Line
	4350 1400 4350 1450
Wire Wire Line
	4350 1450 4350 1500
Wire Wire Line
	4350 2000 4350 2050
Wire Wire Line
	4350 2050 4350 2100
Wire Wire Line
	4350 2050 3900 2050
Wire Wire Line
	3900 2050 3900 1850
Wire Wire Line
	3900 1850 3550 1850
Connection ~ 4350 2050
Wire Wire Line
	4350 1450 3900 1450
Wire Wire Line
	3900 1450 3900 1650
Wire Wire Line
	3900 1650 3550 1650
Connection ~ 4350 1450
Text Notes 3400 2850 0    60   ~ 0
OUTx <= 4V
Text Notes 5100 2700 0    60   ~ 0
DEMODx = BIAS +- OUTx_max*2.5/10 = 0.024 .. 2.024\nThe resistors protect the inputs of the ADC
Text Notes 2400 1200 0    60   ~ 0
Shifts LO to precision +- 2.5 V
$EndSCHEMATC
