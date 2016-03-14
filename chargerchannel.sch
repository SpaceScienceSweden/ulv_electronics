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
LIBS:ulv_power-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 8350 3750 2    60   Output ~ 0
VSYS
Text HLabel 8350 2350 2    60   Input ~ 0
RUN
$Comp
L LTC4121-4.2 U1
U 1 1 56DC5B05
P 5300 3650
AR Path="/56DC5239/56DC5B05" Ref="U1"  Part="1" 
AR Path="/56DC97B6/56DC5B05" Ref="U2"  Part="1" 
AR Path="/56DC9DE8/56DC5B05" Ref="U3"  Part="1" 
AR Path="/56DC9DEE/56DC5B05" Ref="U4"  Part="1" 
F 0 "U1" H 5300 3550 60  0000 C CNN
F 1 "LTC4121-4.2" H 5350 3700 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-16-1EP_3x3mm_Pitch0.5mm" H 5300 3650 60  0001 C CNN
F 3 "" H 5300 3650 60  0000 C CNN
F 4 "Linear Technologies" H 5300 3650 60  0001 C CNN "Mfg. Name"
F 5 "LTC4121EUD-4.2#PBF" H 5300 3650 60  0001 C CNN "Mfg. Part Number"
F 6 "LTC4121EUD-4.2#PBF-ND" H 5300 3650 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.se/product-detail/en/linear-technology/LTC4121EUD-4.2%23PBF/LTC4121EUD-4.2%23PBF-ND/5125447" H 5300 3650 60  0001 C CNN "1st Distrib. Link"
	1    5300 3650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 56DC5F55
P 3650 3700
AR Path="/56DC5239/56DC5F55" Ref="C1"  Part="1" 
AR Path="/56DC97B6/56DC5F55" Ref="C6"  Part="1" 
AR Path="/56DC9DE8/56DC5F55" Ref="C11"  Part="1" 
AR Path="/56DC9DEE/56DC5F55" Ref="C16"  Part="1" 
F 0 "C1" H 3660 3770 50  0000 L CNN
F 1 "2.2uF" H 3660 3620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3650 3700 60  0001 C CNN
F 3 "" H 3650 3700 60  0000 C CNN
	1    3650 3700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 56DC5FEB
P 3650 4150
AR Path="/56DC5239/56DC5FEB" Ref="#PWR02"  Part="1" 
AR Path="/56DC97B6/56DC5FEB" Ref="#PWR011"  Part="1" 
AR Path="/56DC9DE8/56DC5FEB" Ref="#PWR021"  Part="1" 
AR Path="/56DC9DEE/56DC5FEB" Ref="#PWR031"  Part="1" 
F 0 "#PWR02" H 3650 3900 50  0001 C CNN
F 1 "GND" H 3650 4000 50  0000 C CNN
F 2 "" H 3650 4150 60  0000 C CNN
F 3 "" H 3650 4150 60  0000 C CNN
	1    3650 4150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 56DC602F
P 4000 3800
AR Path="/56DC5239/56DC602F" Ref="C2"  Part="1" 
AR Path="/56DC97B6/56DC602F" Ref="C7"  Part="1" 
AR Path="/56DC9DE8/56DC602F" Ref="C12"  Part="1" 
AR Path="/56DC9DEE/56DC602F" Ref="C17"  Part="1" 
F 0 "C2" H 4010 3870 50  0000 L CNN
F 1 "22nF" H 4010 3720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4000 3800 60  0001 C CNN
F 3 "" H 4000 3800 60  0000 C CNN
	1    4000 3800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 56DC62AD
P 4900 2950
AR Path="/56DC5239/56DC62AD" Ref="#PWR03"  Part="1" 
AR Path="/56DC97B6/56DC62AD" Ref="#PWR013"  Part="1" 
AR Path="/56DC9DE8/56DC62AD" Ref="#PWR023"  Part="1" 
AR Path="/56DC9DEE/56DC62AD" Ref="#PWR033"  Part="1" 
F 0 "#PWR03" H 4900 2700 50  0001 C CNN
F 1 "GND" H 4900 2800 50  0000 C CNN
F 2 "" H 4900 2950 60  0000 C CNN
F 3 "" H 4900 2950 60  0000 C CNN
	1    4900 2950
	-1   0    0    1   
$EndComp
$Comp
L C_Small C3
U 1 1 56DC640E
P 4250 4000
AR Path="/56DC5239/56DC640E" Ref="C3"  Part="1" 
AR Path="/56DC97B6/56DC640E" Ref="C8"  Part="1" 
AR Path="/56DC9DE8/56DC640E" Ref="C13"  Part="1" 
AR Path="/56DC9DEE/56DC640E" Ref="C18"  Part="1" 
F 0 "C3" H 4260 4070 50  0000 L CNN
F 1 "10uF" H 4260 3920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4250 4000 60  0001 C CNN
F 3 "" H 4250 4000 60  0000 C CNN
	1    4250 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56DC648D
P 4250 4100
AR Path="/56DC5239/56DC648D" Ref="#PWR04"  Part="1" 
AR Path="/56DC97B6/56DC648D" Ref="#PWR014"  Part="1" 
AR Path="/56DC9DE8/56DC648D" Ref="#PWR024"  Part="1" 
AR Path="/56DC9DEE/56DC648D" Ref="#PWR034"  Part="1" 
F 0 "#PWR04" H 4250 3850 50  0001 C CNN
F 1 "GND" H 4250 3950 50  0000 C CNN
F 2 "" H 4250 4100 60  0000 C CNN
F 3 "" H 4250 4100 60  0000 C CNN
	1    4250 4100
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 56DC65AC
P 5000 4650
AR Path="/56DC5239/56DC65AC" Ref="R3"  Part="1" 
AR Path="/56DC97B6/56DC65AC" Ref="R11"  Part="1" 
AR Path="/56DC9DE8/56DC65AC" Ref="R19"  Part="1" 
AR Path="/56DC9DEE/56DC65AC" Ref="R27"  Part="1" 
F 0 "R3" H 5030 4670 50  0000 L CNN
F 1 "10.0k" H 5030 4610 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5000 4650 60  0001 C CNN
F 3 "" H 5000 4650 60  0000 C CNN
	1    5000 4650
	0    1    1    0   
$EndComp
$Comp
L R_Small R4
U 1 1 56DC65F7
P 5250 4850
AR Path="/56DC5239/56DC65F7" Ref="R4"  Part="1" 
AR Path="/56DC97B6/56DC65F7" Ref="R12"  Part="1" 
AR Path="/56DC9DE8/56DC65F7" Ref="R20"  Part="1" 
AR Path="/56DC9DEE/56DC65F7" Ref="R28"  Part="1" 
F 0 "R4" H 5280 4870 50  0000 L CNN
F 1 "1.67k" H 5280 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5250 4850 60  0001 C CNN
F 3 "" H 5250 4850 60  0000 C CNN
	1    5250 4850
	1    0    0    -1  
$EndComp
Text Notes 4750 5300 0    60   ~ 0
V_MP = V_OC * 0.7
$Comp
L GND #PWR05
U 1 1 56DC670D
P 5250 5050
AR Path="/56DC5239/56DC670D" Ref="#PWR05"  Part="1" 
AR Path="/56DC97B6/56DC670D" Ref="#PWR015"  Part="1" 
AR Path="/56DC9DE8/56DC670D" Ref="#PWR025"  Part="1" 
AR Path="/56DC9DEE/56DC670D" Ref="#PWR035"  Part="1" 
F 0 "#PWR05" H 5250 4800 50  0001 C CNN
F 1 "GND" H 5250 4900 50  0000 C CNN
F 2 "" H 5250 5050 60  0000 C CNN
F 3 "" H 5250 5050 60  0000 C CNN
	1    5250 5050
	1    0    0    -1  
$EndComp
$Comp
L L_Small L1
U 1 1 56DC6B00
P 4900 4450
AR Path="/56DC5239/56DC6B00" Ref="L1"  Part="1" 
AR Path="/56DC97B6/56DC6B00" Ref="L2"  Part="1" 
AR Path="/56DC9DE8/56DC6B00" Ref="L3"  Part="1" 
AR Path="/56DC9DEE/56DC6B00" Ref="L4"  Part="1" 
F 0 "L1" H 4930 4490 50  0000 L CNN
F 1 "12uH" H 4930 4410 50  0000 L CNN
F 2 "Bourns:SDE0805A" H 4900 4450 60  0001 C CNN
F 3 "http://www.bourns.com/docs/Product-Datasheets/SDE0805A.pdf" H 4900 4450 60  0001 C CNN
F 4 "Bourns" H 4900 4450 60  0001 C CNN "Mfg. Name"
F 5 "SDE0805A-120M" H 4900 4450 60  0001 C CNN "Mfg. Part Number"
F 6 "SDE0805A-120MCT-ND" H 4900 4450 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.se/product-detail/en/bourns-inc/SDE0805A-120M/SDE0805A-120MCT-ND/5031077" H 4900 4450 60  0001 C CNN "1st Distrib. Link"
	1    4900 4450
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky_Small D1
U 1 1 56DC6E34
P 3600 2350
AR Path="/56DC5239/56DC6E34" Ref="D1"  Part="1" 
AR Path="/56DC97B6/56DC6E34" Ref="D3"  Part="1" 
AR Path="/56DC9DE8/56DC6E34" Ref="D5"  Part="1" 
AR Path="/56DC9DEE/56DC6E34" Ref="D7"  Part="1" 
F 0 "D1" H 3550 2430 50  0000 L CNN
F 1 "D_Schottky_Small" H 3320 2270 50  0001 L CNN
F 2 "Diodes_SMD:SMA_Standard" V 3600 2350 60  0001 C CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/CD00001323.pdf" V 3600 2350 60  0001 C CNN
F 4 "ST" H 3600 2350 60  0001 C CNN "Mfg. Name"
F 5 "STPS1L30A" H 3600 2350 60  0001 C CNN "Mfg. Part Number"
F 6 "497-6577-1-ND" H 3600 2350 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.se/product-detail/en/stmicroelectronics/STPS1L30A/497-6577-1-ND/1865323" H 3600 2350 60  0001 C CNN "1st Distrib. Link"
	1    3600 2350
	-1   0    0    1   
$EndComp
Text Notes 5350 4550 0    60   ~ 0
1.5 MHz switching frequency
Text Notes 2550 5300 0    60   ~ 0
V_MAX = 8V\nL_SW >= (V_MAX - V_FLOAT) * V_FLOAT /\n(f_OSC * V_MAX * (30% * I_CHG))\n= 11.1 µH
Text Notes 2550 4800 0    60   ~ 0
IN filter cap must not be too large,\nor VOC sampling will not work correctly
$Comp
L C_Small C5
U 1 1 56DC787D
P 7150 4000
AR Path="/56DC5239/56DC787D" Ref="C5"  Part="1" 
AR Path="/56DC97B6/56DC787D" Ref="C10"  Part="1" 
AR Path="/56DC9DE8/56DC787D" Ref="C15"  Part="1" 
AR Path="/56DC9DEE/56DC787D" Ref="C20"  Part="1" 
F 0 "C5" H 7160 4070 50  0000 L CNN
F 1 "22uF" H 7160 3920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7150 4000 60  0001 C CNN
F 3 "" H 7150 4000 60  0000 C CNN
	1    7150 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56DC7925
P 7150 4200
AR Path="/56DC5239/56DC7925" Ref="#PWR06"  Part="1" 
AR Path="/56DC97B6/56DC7925" Ref="#PWR017"  Part="1" 
AR Path="/56DC9DE8/56DC7925" Ref="#PWR027"  Part="1" 
AR Path="/56DC9DEE/56DC7925" Ref="#PWR037"  Part="1" 
F 0 "#PWR06" H 7150 3950 50  0001 C CNN
F 1 "GND" H 7150 4050 50  0000 C CNN
F 2 "" H 7150 4200 60  0000 C CNN
F 3 "" H 7150 4200 60  0000 C CNN
	1    7150 4200
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GSD Q1
U 1 1 56DC7C4C
P 6450 3700
AR Path="/56DC5239/56DC7C4C" Ref="Q1"  Part="1" 
AR Path="/56DC97B6/56DC7C4C" Ref="Q2"  Part="1" 
AR Path="/56DC9DE8/56DC7C4C" Ref="Q3"  Part="1" 
AR Path="/56DC9DEE/56DC7C4C" Ref="Q4"  Part="1" 
F 0 "Q1" V 6300 3800 50  0000 R CNN
F 1 "SI2343DS" V 6300 3650 50  0000 R CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23" H 6650 3800 29  0001 C CNN
F 3 "" H 6450 3700 60  0000 C CNN
	1    6450 3700
	0    -1   1    0   
$EndComp
Wire Wire Line
	5150 2350 5150 2950
Wire Wire Line
	3650 3500 4500 3500
Wire Wire Line
	3650 3500 3650 3600
Wire Wire Line
	3650 4150 3650 3800
Wire Wire Line
	4100 3800 4500 3800
Wire Wire Line
	3850 3600 4500 3600
Wire Wire Line
	3850 3600 3850 3800
Wire Wire Line
	3850 3800 3900 3800
Wire Wire Line
	4200 3700 4500 3700
Wire Wire Line
	5250 4350 5250 4750
Wire Wire Line
	5100 4650 5250 4650
Connection ~ 5250 4650
Wire Wire Line
	4250 3900 4250 3700
Connection ~ 4250 3700
Wire Wire Line
	4900 4650 4450 4650
Wire Wire Line
	4450 4650 4450 3700
Connection ~ 4450 3700
Wire Wire Line
	5350 4350 5350 4550
Wire Wire Line
	5350 4550 3800 4550
Wire Wire Line
	3800 4550 3800 3500
Connection ~ 3800 3500
Wire Wire Line
	5250 4950 5250 5050
Wire Wire Line
	5150 4350 5150 5000
Wire Wire Line
	5150 5000 5250 5000
Connection ~ 5250 5000
Wire Wire Line
	5000 4450 5450 4450
Wire Wire Line
	5450 4450 5450 4350
Wire Wire Line
	4800 4450 4150 4450
Wire Wire Line
	4150 4450 4150 3800
Connection ~ 4150 3800
Wire Wire Line
	3300 2350 3500 2350
Wire Wire Line
	4200 2350 4200 3700
Wire Wire Line
	6650 3800 7150 3800
Connection ~ 7150 3800
Wire Wire Line
	7150 4200 7150 4100
Connection ~ 7150 3750
Wire Wire Line
	7150 3750 7850 3750
Wire Wire Line
	8350 3750 8050 3750
Wire Wire Line
	6250 3800 6150 3800
Wire Wire Line
	7150 3450 6300 3450
Wire Wire Line
	6300 3450 6300 3700
Wire Wire Line
	6300 3700 6150 3700
Wire Wire Line
	5350 2950 5350 2750
Wire Wire Line
	5350 2750 6450 2750
Wire Wire Line
	6450 2750 6450 3500
$Comp
L R_Small R8
U 1 1 56DC7F9A
P 6700 3200
AR Path="/56DC5239/56DC7F9A" Ref="R8"  Part="1" 
AR Path="/56DC97B6/56DC7F9A" Ref="R16"  Part="1" 
AR Path="/56DC9DE8/56DC7F9A" Ref="R24"  Part="1" 
AR Path="/56DC9DEE/56DC7F9A" Ref="R32"  Part="1" 
F 0 "R8" H 6730 3220 50  0000 L CNN
F 1 "49.9k" H 6730 3160 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6700 3200 60  0001 C CNN
F 3 "" H 6700 3200 60  0000 C CNN
	1    6700 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3200 6450 3200
Connection ~ 6450 3200
Wire Wire Line
	6800 3200 8250 3200
$Comp
L R_Small R6
U 1 1 56DC81E3
P 6450 4000
AR Path="/56DC5239/56DC81E3" Ref="R6"  Part="1" 
AR Path="/56DC97B6/56DC81E3" Ref="R14"  Part="1" 
AR Path="/56DC9DE8/56DC81E3" Ref="R22"  Part="1" 
AR Path="/56DC9DEE/56DC81E3" Ref="R30"  Part="1" 
F 0 "R6" H 6480 4020 50  0000 L CNN
F 1 "470k" H 6480 3960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6450 4000 60  0001 C CNN
F 3 "" H 6450 4000 60  0000 C CNN
	1    6450 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 4000 6200 4000
Wire Wire Line
	6200 3800 6200 4100
Connection ~ 6200 3800
Wire Wire Line
	6550 4000 6700 4000
Wire Wire Line
	6700 4000 6700 3800
Connection ~ 6700 3800
$Comp
L C_Small C4
U 1 1 56DC84CE
P 6200 4200
AR Path="/56DC5239/56DC84CE" Ref="C4"  Part="1" 
AR Path="/56DC97B6/56DC84CE" Ref="C9"  Part="1" 
AR Path="/56DC9DE8/56DC84CE" Ref="C14"  Part="1" 
AR Path="/56DC9DEE/56DC84CE" Ref="C19"  Part="1" 
F 0 "C4" H 6210 4270 50  0000 L CNN
F 1 "4.7uF" H 6210 4120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6200 4200 60  0001 C CNN
F 3 "" H 6200 4200 60  0000 C CNN
	1    6200 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 56DC8573
P 6200 4300
AR Path="/56DC5239/56DC8573" Ref="#PWR07"  Part="1" 
AR Path="/56DC97B6/56DC8573" Ref="#PWR018"  Part="1" 
AR Path="/56DC9DE8/56DC8573" Ref="#PWR028"  Part="1" 
AR Path="/56DC9DEE/56DC8573" Ref="#PWR038"  Part="1" 
F 0 "#PWR07" H 6200 4050 50  0001 C CNN
F 1 "GND" H 6200 4150 50  0000 C CNN
F 2 "" H 6200 4300 60  0000 C CNN
F 3 "" H 6200 4300 60  0000 C CNN
	1    6200 4300
	1    0    0    -1  
$EndComp
Connection ~ 6200 4000
NoConn ~ 6150 3500
Text Notes 6150 3400 1    60   ~ 0
TODO: NTC
$Comp
L R_Small R5
U 1 1 56DC881A
P 5600 2850
AR Path="/56DC5239/56DC881A" Ref="R5"  Part="1" 
AR Path="/56DC97B6/56DC881A" Ref="R13"  Part="1" 
AR Path="/56DC9DE8/56DC881A" Ref="R21"  Part="1" 
AR Path="/56DC9DEE/56DC881A" Ref="R29"  Part="1" 
F 0 "R5" H 5630 2870 50  0000 L CNN
F 1 "3.01k" H 5630 2810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5600 2850 60  0001 C CNN
F 3 "" H 5600 2850 60  0000 C CNN
	1    5600 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 56DC88BE
P 5800 2900
AR Path="/56DC5239/56DC88BE" Ref="#PWR08"  Part="1" 
AR Path="/56DC97B6/56DC88BE" Ref="#PWR019"  Part="1" 
AR Path="/56DC9DE8/56DC88BE" Ref="#PWR029"  Part="1" 
AR Path="/56DC9DEE/56DC88BE" Ref="#PWR039"  Part="1" 
F 0 "#PWR08" H 5800 2650 50  0001 C CNN
F 1 "GND" H 5800 2750 50  0000 C CNN
F 2 "" H 5800 2900 60  0000 C CNN
F 3 "" H 5800 2900 60  0000 C CNN
	1    5800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2900 5800 2850
Wire Wire Line
	5800 2850 5700 2850
Wire Wire Line
	5500 2850 5450 2850
Wire Wire Line
	5450 2850 5450 2950
Text Notes 5500 2700 0    60   ~ 0
3.01 k -> 400 mA
$Comp
L R_Small R7
U 1 1 56DC8BF3
P 6700 2450
AR Path="/56DC5239/56DC8BF3" Ref="R7"  Part="1" 
AR Path="/56DC97B6/56DC8BF3" Ref="R15"  Part="1" 
AR Path="/56DC9DE8/56DC8BF3" Ref="R23"  Part="1" 
AR Path="/56DC9DEE/56DC8BF3" Ref="R31"  Part="1" 
F 0 "R7" H 6730 2470 50  0000 L CNN
F 1 "49.9k" H 6730 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6700 2450 60  0001 C CNN
F 3 "" H 6700 2450 60  0000 C CNN
	1    6700 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 2450 6800 2450
Connection ~ 7150 3200
Wire Wire Line
	6600 2450 5250 2450
Wire Wire Line
	5250 2450 5250 2950
Text HLabel 8350 2900 2    60   Output ~ 0
/CHRG
Text HLabel 8350 2700 2    60   Output ~ 0
/FAULT
Wire Wire Line
	8350 2700 6550 2700
Wire Wire Line
	6550 2700 6550 2450
Connection ~ 6550 2450
Wire Wire Line
	8350 2900 6450 2900
Connection ~ 6450 2900
Wire Wire Line
	3700 2350 4400 2350
$Comp
L R_Small R1
U 1 1 56DCB209
P 4500 2350
AR Path="/56DC5239/56DCB209" Ref="R1"  Part="1" 
AR Path="/56DC97B6/56DCB209" Ref="R9"  Part="1" 
AR Path="/56DC9DE8/56DCB209" Ref="R17"  Part="1" 
AR Path="/56DC9DEE/56DCB209" Ref="R25"  Part="1" 
F 0 "R1" H 4530 2370 50  0000 L CNN
F 1 "25.5k" H 4530 2310 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4500 2350 60  0001 C CNN
F 3 "" H 4500 2350 60  0000 C CNN
	1    4500 2350
	0    1    1    0   
$EndComp
$Comp
L R_Small R2
U 1 1 56DCB252
P 4700 2550
AR Path="/56DC5239/56DCB252" Ref="R2"  Part="1" 
AR Path="/56DC97B6/56DCB252" Ref="R10"  Part="1" 
AR Path="/56DC9DE8/56DCB252" Ref="R18"  Part="1" 
AR Path="/56DC9DEE/56DCB252" Ref="R26"  Part="1" 
F 0 "R2" H 4730 2570 50  0000 L CNN
F 1 "24.5k" H 4730 2510 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4700 2550 60  0001 C CNN
F 3 "" H 4700 2550 60  0000 C CNN
	1    4700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2350 8350 2350
Connection ~ 4200 2350
$Comp
L GND #PWR09
U 1 1 56DCB472
P 4700 2650
AR Path="/56DC5239/56DCB472" Ref="#PWR09"  Part="1" 
AR Path="/56DC97B6/56DCB472" Ref="#PWR020"  Part="1" 
AR Path="/56DC9DE8/56DCB472" Ref="#PWR030"  Part="1" 
AR Path="/56DC9DEE/56DCB472" Ref="#PWR040"  Part="1" 
F 0 "#PWR09" H 4700 2400 50  0001 C CNN
F 1 "GND" H 4700 2500 50  0000 C CNN
F 2 "" H 4700 2650 60  0000 C CNN
F 3 "" H 4700 2650 60  0000 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2450 4700 2350
Connection ~ 4700 2350
Text Notes 4300 2250 0    60   ~ 0
Turn charger on when solar panel reaches 5 V\nTurn off when below 5*(2.25/2.45) = 4.6 V\nEnter low-power mode when input voltage < 0.7/2.45*5 = 1.4 V
Connection ~ 5150 2350
Text HLabel 8350 3500 2    60   Output ~ 0
VBAT
Wire Wire Line
	8350 3500 7650 3500
Connection ~ 7650 3750
Text Notes 3500 2300 0    60   ~ 0
1A max
$Comp
L D_Schottky_Small D2
U 1 1 56E5A09D
P 7950 3750
F 0 "D2" H 7900 3830 50  0000 L CNN
F 1 "D_Schottky_Small" H 7670 3670 50  0001 L CNN
F 2 "Diodes_SMD:SMA_Standard" V 7950 3750 60  0001 C CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/CD00001323.pdf" V 7950 3750 60  0001 C CNN
F 4 "ST" H 7950 3750 60  0001 C CNN "Mfg. Name"
F 5 "STPS1L30A" H 7950 3750 60  0001 C CNN "Mfg. Part Number"
F 6 "497-6577-1-ND" H 7950 3750 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.se/product-detail/en/stmicroelectronics/STPS1L30A/497-6577-1-ND/1865323" H 7950 3750 60  0001 C CNN "1st Distrib. Link"
	1    7950 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7650 3500 7650 3750
Text HLabel 3300 2350 0    60   Input ~ 0
PV_IN
Text Notes 7850 3650 0    60   ~ 0
1A max
Text HLabel 8350 1800 2    60   Input ~ 0
PV_RECT
Wire Wire Line
	8350 1800 4150 1800
Wire Wire Line
	4150 1800 4150 2350
Connection ~ 4150 2350
Wire Wire Line
	7150 3900 7150 3450
Wire Wire Line
	7150 3200 7150 2450
Wire Wire Line
	8250 3200 8250 3750
Connection ~ 8250 3750
$Comp
L D_Schottky_Small D3
U 1 1 56E5BAE8
P 5900 1450
F 0 "D3" H 5850 1530 50  0000 L CNN
F 1 "D_Schottky_Small" H 5620 1370 50  0001 L CNN
F 2 "Diodes_SMD:SMA_Standard" V 5900 1450 60  0001 C CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/CD00001323.pdf" V 5900 1450 60  0001 C CNN
F 4 "ST" H 5900 1450 60  0001 C CNN "Mfg. Name"
F 5 "STPS1L30A" H 5900 1450 60  0001 C CNN "Mfg. Part Number"
F 6 "497-6577-1-ND" H 5900 1450 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.se/product-detail/en/stmicroelectronics/STPS1L30A/497-6577-1-ND/1865323" H 5900 1450 60  0001 C CNN "1st Distrib. Link"
	1    5900 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 2350 3400 1450
Wire Wire Line
	3400 1450 5800 1450
Connection ~ 3400 2350
Wire Wire Line
	6000 1450 8050 1450
Wire Wire Line
	8050 1450 8050 3200
Connection ~ 8050 3200
$EndSCHEMATC
