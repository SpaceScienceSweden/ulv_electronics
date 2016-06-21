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
LIBS:ulv_fieldmill-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L CONN_01X03 P3
U 1 1 573F0CDE
P 1200 1850
F 0 "P3" H 1200 2050 50  0000 C CNN
F 1 "CONN_01X03" V 1300 1850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1200 1850 50  0001 C CNN
F 3 "" H 1200 1850 50  0000 C CNN
	1    1200 1850
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 573F0D2E
P 1450 2050
F 0 "#PWR1" H 1450 1800 50  0001 C CNN
F 1 "GND" H 1450 1900 50  0000 C CNN
F 2 "" H 1450 2050 50  0000 C CNN
F 3 "" H 1450 2050 50  0000 C CNN
	1    1450 2050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 573F14C7
P 1650 1850
F 0 "C3" H 1660 1920 50  0000 L CNN
F 1 "1u" H 1660 1770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1650 1850 50  0001 C CNN
F 3 "" H 1650 1850 50  0000 C CNN
	1    1650 1850
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P1
U 1 1 573F26A7
P 4250 2000
F 0 "P1" H 4250 2100 50  0000 C CNN
F 1 "CONN_01X01" H 4550 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4250 2000 50  0001 C CNN
F 3 "" H 4250 2000 50  0000 C CNN
	1    4250 2000
	-1   0    0    1   
$EndComp
$Comp
L OPA2604 U1
U 1 1 57607AFF
P 5100 2150
F 0 "U1" H 5400 2600 60  0000 C CNN
F 1 "OPA2604" H 5400 2500 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 5200 2150 60  0001 C CNN
F 3 "" H 5200 2150 60  0000 C CNN
	1    5100 2150
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 57607BCA
P 5150 1350
F 0 "R1" H 5180 1370 50  0000 L CNN
F 1 "100M" H 5180 1310 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 5150 1350 50  0001 C CNN
F 3 "" H 5150 1350 50  0000 C CNN
	1    5150 1350
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR16
U 1 1 57607CAB
P 5150 2450
F 0 "#PWR16" H 5150 2325 50  0001 C CNN
F 1 "-9VA" H 5150 2600 50  0000 C CNN
F 2 "" H 5150 2450 50  0000 C CNN
F 3 "" H 5150 2450 50  0000 C CNN
	1    5150 2450
	-1   0    0    1   
$EndComp
$Comp
L +9VA #PWR15
U 1 1 57607CCF
P 5150 1850
F 0 "#PWR15" H 5150 1725 50  0001 C CNN
F 1 "+9VA" H 5150 2000 50  0000 C CNN
F 2 "" H 5150 1850 50  0000 C CNN
F 3 "" H 5150 1850 50  0000 C CNN
	1    5150 1850
	1    0    0    -1  
$EndComp
$Comp
L +9VA #PWR2
U 1 1 57607D17
P 1650 1550
F 0 "#PWR2" H 1650 1425 50  0001 C CNN
F 1 "+9VA" H 1650 1700 50  0000 C CNN
F 2 "" H 1650 1550 50  0000 C CNN
F 3 "" H 1650 1550 50  0000 C CNN
	1    1650 1550
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR3
U 1 1 57607D3B
P 1650 2150
F 0 "#PWR3" H 1650 2025 50  0001 C CNN
F 1 "-9VA" H 1650 2300 50  0000 C CNN
F 2 "" H 1650 2150 50  0000 C CNN
F 3 "" H 1650 2150 50  0000 C CNN
	1    1650 2150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR11
U 1 1 57607ECF
P 4800 2300
F 0 "#PWR11" H 4800 2050 50  0001 C CNN
F 1 "GND" H 4800 2150 50  0000 C CNN
F 2 "" H 4800 2300 50  0000 C CNN
F 3 "" H 4800 2300 50  0000 C CNN
	1    4800 2300
	0    1    1    0   
$EndComp
$Comp
L C_Small C1
U 1 1 57607F87
P 5150 1150
F 0 "C1" H 5160 1220 50  0000 L CNN
F 1 "1p5" H 5160 1070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5150 1150 50  0001 C CNN
F 3 "" H 5150 1150 50  0000 C CNN
	1    5150 1150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 5760847E
P 4250 3650
F 0 "P2" H 4250 3750 50  0000 C CNN
F 1 "CONN_01X01" H 4550 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4250 3650 50  0001 C CNN
F 3 "" H 4250 3650 50  0000 C CNN
	1    4250 3650
	-1   0    0    1   
$EndComp
$Comp
L OPA2604 U1
U 2 1 57608484
P 5100 3800
F 0 "U1" H 5400 4250 60  0000 C CNN
F 1 "OPA2604" H 5400 4150 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 5200 3800 60  0001 C CNN
F 3 "" H 5200 3800 60  0000 C CNN
	2    5100 3800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5760848A
P 5150 3000
F 0 "R2" H 5180 3020 50  0000 L CNN
F 1 "100M" H 5180 2960 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 5150 3000 50  0001 C CNN
F 3 "" H 5150 3000 50  0000 C CNN
	1    5150 3000
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR18
U 1 1 57608490
P 5150 4100
F 0 "#PWR18" H 5150 3975 50  0001 C CNN
F 1 "-9VA" H 5150 4250 50  0000 C CNN
F 2 "" H 5150 4100 50  0000 C CNN
F 3 "" H 5150 4100 50  0000 C CNN
	1    5150 4100
	-1   0    0    1   
$EndComp
$Comp
L +9VA #PWR17
U 1 1 57608496
P 5150 3500
F 0 "#PWR17" H 5150 3375 50  0001 C CNN
F 1 "+9VA" H 5150 3650 50  0000 C CNN
F 2 "" H 5150 3500 50  0000 C CNN
F 3 "" H 5150 3500 50  0000 C CNN
	1    5150 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 5760849C
P 4800 3950
F 0 "#PWR12" H 4800 3700 50  0001 C CNN
F 1 "GND" H 4800 3800 50  0000 C CNN
F 2 "" H 4800 3950 50  0000 C CNN
F 3 "" H 4800 3950 50  0000 C CNN
	1    4800 3950
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 576084A2
P 5150 2800
F 0 "C2" H 5160 2870 50  0000 L CNN
F 1 "1p5" H 5160 2720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5150 2800 50  0001 C CNN
F 3 "" H 5150 2800 50  0000 C CNN
	1    5150 2800
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 57608593
P 2150 1850
F 0 "C4" H 2160 1920 50  0000 L CNN
F 1 "220n" H 2160 1770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2150 1850 50  0001 C CNN
F 3 "" H 2150 1850 50  0000 C CNN
	1    2150 1850
	-1   0    0    1   
$EndComp
$Comp
L C_Small C5
U 1 1 576091D6
P 2150 2150
F 0 "C5" H 2160 2220 50  0000 L CNN
F 1 "220n" H 2160 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0000 C CNN
	1    2150 2150
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 57611F39
P 1150 5350
F 0 "P6" H 1150 5450 50  0000 C CNN
F 1 "CONN_01X01" H 1450 5350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 1150 5350 50  0001 C CNN
F 3 "" H 1150 5350 50  0000 C CNN
	1    1150 5350
	-1   0    0    1   
$EndComp
$Comp
L OPA2604 U2
U 1 1 57611F3F
P 2000 5500
F 0 "U2" H 2300 5950 60  0000 C CNN
F 1 "OPA2604" H 2300 5850 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 2100 5500 60  0001 C CNN
F 3 "" H 2100 5500 60  0000 C CNN
	1    2000 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 57611F45
P 2050 4700
F 0 "R3" H 2080 4720 50  0000 L CNN
F 1 "100M" H 2080 4660 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 2050 4700 50  0001 C CNN
F 3 "" H 2050 4700 50  0000 C CNN
	1    2050 4700
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR7
U 1 1 57611F4B
P 2050 5800
F 0 "#PWR7" H 2050 5675 50  0001 C CNN
F 1 "-9VA" H 2050 5950 50  0000 C CNN
F 2 "" H 2050 5800 50  0000 C CNN
F 3 "" H 2050 5800 50  0000 C CNN
	1    2050 5800
	-1   0    0    1   
$EndComp
$Comp
L +9VA #PWR6
U 1 1 57611F51
P 2050 5200
F 0 "#PWR6" H 2050 5075 50  0001 C CNN
F 1 "+9VA" H 2050 5350 50  0000 C CNN
F 2 "" H 2050 5200 50  0000 C CNN
F 3 "" H 2050 5200 50  0000 C CNN
	1    2050 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 57611F57
P 1700 5650
F 0 "#PWR4" H 1700 5400 50  0001 C CNN
F 1 "GND" H 1700 5500 50  0000 C CNN
F 2 "" H 1700 5650 50  0000 C CNN
F 3 "" H 1700 5650 50  0000 C CNN
	1    1700 5650
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 57611F5D
P 2050 4500
F 0 "C6" H 2060 4570 50  0000 L CNN
F 1 "1p5" H 2060 4420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2050 4500 50  0001 C CNN
F 3 "" H 2050 4500 50  0000 C CNN
	1    2050 4500
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P7
U 1 1 57611F70
P 1150 7000
F 0 "P7" H 1150 7100 50  0000 C CNN
F 1 "CONN_01X01" H 1450 7000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 1150 7000 50  0001 C CNN
F 3 "" H 1150 7000 50  0000 C CNN
	1    1150 7000
	-1   0    0    1   
$EndComp
$Comp
L OPA2604 U2
U 2 1 57611F76
P 2000 7150
F 0 "U2" H 2300 7600 60  0000 C CNN
F 1 "OPA2604" H 2300 7500 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 2100 7150 60  0001 C CNN
F 3 "" H 2100 7150 60  0000 C CNN
	2    2000 7150
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 57611F7C
P 2050 6350
F 0 "R4" H 2080 6370 50  0000 L CNN
F 1 "100M" H 2080 6310 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 2050 6350 50  0001 C CNN
F 3 "" H 2050 6350 50  0000 C CNN
	1    2050 6350
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR9
U 1 1 57611F82
P 2050 7450
F 0 "#PWR9" H 2050 7325 50  0001 C CNN
F 1 "-9VA" H 2050 7600 50  0000 C CNN
F 2 "" H 2050 7450 50  0000 C CNN
F 3 "" H 2050 7450 50  0000 C CNN
	1    2050 7450
	-1   0    0    1   
$EndComp
$Comp
L +9VA #PWR8
U 1 1 57611F88
P 2050 6850
F 0 "#PWR8" H 2050 6725 50  0001 C CNN
F 1 "+9VA" H 2050 7000 50  0000 C CNN
F 2 "" H 2050 6850 50  0000 C CNN
F 3 "" H 2050 6850 50  0000 C CNN
	1    2050 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 57611F8E
P 1700 7300
F 0 "#PWR5" H 1700 7050 50  0001 C CNN
F 1 "GND" H 1700 7150 50  0000 C CNN
F 2 "" H 1700 7300 50  0000 C CNN
F 3 "" H 1700 7300 50  0000 C CNN
	1    1700 7300
	0    1    1    0   
$EndComp
$Comp
L C_Small C7
U 1 1 57611F94
P 2050 6150
F 0 "C7" H 2060 6220 50  0000 L CNN
F 1 "1p5" H 2060 6070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2050 6150 50  0001 C CNN
F 3 "" H 2050 6150 50  0000 C CNN
	1    2050 6150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P10
U 1 1 576124D1
P 4300 5450
F 0 "P10" H 4300 5550 50  0000 C CNN
F 1 "CONN_01X01" H 4600 5450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4300 5450 50  0001 C CNN
F 3 "" H 4300 5450 50  0000 C CNN
	1    4300 5450
	-1   0    0    1   
$EndComp
$Comp
L OPA2604 U3
U 1 1 576124D7
P 5150 5600
F 0 "U3" H 5450 6050 60  0000 C CNN
F 1 "OPA2604" H 5450 5950 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 5250 5600 60  0001 C CNN
F 3 "" H 5250 5600 60  0000 C CNN
	1    5150 5600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 576124DD
P 5200 4800
F 0 "R5" H 5230 4820 50  0000 L CNN
F 1 "100M" H 5230 4760 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 5200 4800 50  0001 C CNN
F 3 "" H 5200 4800 50  0000 C CNN
	1    5200 4800
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR20
U 1 1 576124E3
P 5200 5900
F 0 "#PWR20" H 5200 5775 50  0001 C CNN
F 1 "-9VA" H 5200 6050 50  0000 C CNN
F 2 "" H 5200 5900 50  0000 C CNN
F 3 "" H 5200 5900 50  0000 C CNN
	1    5200 5900
	-1   0    0    1   
$EndComp
$Comp
L +9VA #PWR19
U 1 1 576124E9
P 5200 5300
F 0 "#PWR19" H 5200 5175 50  0001 C CNN
F 1 "+9VA" H 5200 5450 50  0000 C CNN
F 2 "" H 5200 5300 50  0000 C CNN
F 3 "" H 5200 5300 50  0000 C CNN
	1    5200 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 576124EF
P 4850 5750
F 0 "#PWR13" H 4850 5500 50  0001 C CNN
F 1 "GND" H 4850 5600 50  0000 C CNN
F 2 "" H 4850 5750 50  0000 C CNN
F 3 "" H 4850 5750 50  0000 C CNN
	1    4850 5750
	0    1    1    0   
$EndComp
$Comp
L C_Small C8
U 1 1 576124F5
P 5200 4600
F 0 "C8" H 5210 4670 50  0000 L CNN
F 1 "1p5" H 5210 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5200 4600 50  0001 C CNN
F 3 "" H 5200 4600 50  0000 C CNN
	1    5200 4600
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P11
U 1 1 57612508
P 4300 7100
F 0 "P11" H 4300 7200 50  0000 C CNN
F 1 "CONN_01X01" H 4600 7100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 4300 7100 50  0001 C CNN
F 3 "" H 4300 7100 50  0000 C CNN
	1    4300 7100
	-1   0    0    1   
$EndComp
$Comp
L OPA2604 U3
U 2 1 5761250E
P 5150 7250
F 0 "U3" H 5450 7700 60  0000 C CNN
F 1 "OPA2604" H 5450 7600 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 5250 7250 60  0001 C CNN
F 3 "" H 5250 7250 60  0000 C CNN
	2    5150 7250
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 57612514
P 5200 6450
F 0 "R6" H 5230 6470 50  0000 L CNN
F 1 "100M" H 5230 6410 50  0000 L CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" H 5200 6450 50  0001 C CNN
F 3 "" H 5200 6450 50  0000 C CNN
	1    5200 6450
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR22
U 1 1 5761251A
P 5200 7550
F 0 "#PWR22" H 5200 7425 50  0001 C CNN
F 1 "-9VA" H 5200 7700 50  0000 C CNN
F 2 "" H 5200 7550 50  0000 C CNN
F 3 "" H 5200 7550 50  0000 C CNN
	1    5200 7550
	-1   0    0    1   
$EndComp
$Comp
L +9VA #PWR21
U 1 1 57612520
P 5200 6950
F 0 "#PWR21" H 5200 6825 50  0001 C CNN
F 1 "+9VA" H 5200 7100 50  0000 C CNN
F 2 "" H 5200 6950 50  0000 C CNN
F 3 "" H 5200 6950 50  0000 C CNN
	1    5200 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 57612526
P 4850 7400
F 0 "#PWR14" H 4850 7150 50  0001 C CNN
F 1 "GND" H 4850 7250 50  0000 C CNN
F 2 "" H 4850 7400 50  0000 C CNN
F 3 "" H 4850 7400 50  0000 C CNN
	1    4850 7400
	0    1    1    0   
$EndComp
$Comp
L C_Small C9
U 1 1 5761252C
P 5200 6250
F 0 "C9" H 5210 6320 50  0000 L CNN
F 1 "1p5" H 5210 6170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5200 6250 50  0001 C CNN
F 3 "" H 5200 6250 50  0000 C CNN
	1    5200 6250
	0    1    1    0   
$EndComp
$Comp
L C_Small C10
U 1 1 576135A8
P 2450 1850
F 0 "C10" H 2460 1920 50  0000 L CNN
F 1 "220n" H 2460 1770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2450 1850 50  0001 C CNN
F 3 "" H 2450 1850 50  0000 C CNN
	1    2450 1850
	-1   0    0    1   
$EndComp
$Comp
L C_Small C11
U 1 1 576135AE
P 2450 2150
F 0 "C11" H 2460 2220 50  0000 L CNN
F 1 "220n" H 2460 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2450 2150 50  0001 C CNN
F 3 "" H 2450 2150 50  0000 C CNN
	1    2450 2150
	-1   0    0    1   
$EndComp
$Comp
L C_Small C12
U 1 1 5761361C
P 2750 1850
F 0 "C12" H 2760 1920 50  0000 L CNN
F 1 "220n" H 2760 1770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2750 1850 50  0001 C CNN
F 3 "" H 2750 1850 50  0000 C CNN
	1    2750 1850
	-1   0    0    1   
$EndComp
$Comp
L C_Small C13
U 1 1 57613622
P 2750 2150
F 0 "C13" H 2760 2220 50  0000 L CNN
F 1 "220n" H 2760 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2750 2150 50  0001 C CNN
F 3 "" H 2750 2150 50  0000 C CNN
	1    2750 2150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR10
U 1 1 576139CA
P 2950 2000
F 0 "#PWR10" H 2950 1750 50  0001 C CNN
F 1 "GND" H 2950 1850 50  0000 C CNN
F 2 "" H 2950 2000 50  0000 C CNN
F 3 "" H 2950 2000 50  0000 C CNN
	1    2950 2000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X06 P4
U 1 1 57614A25
P 9200 4150
F 0 "P4" H 9200 4500 50  0000 C CNN
F 1 "CONN_01X06" V 9300 4150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 9200 4150 50  0001 C CNN
F 3 "" H 9200 4150 50  0000 C CNN
	1    9200 4150
	1    0    0    1   
$EndComp
$Comp
L R_Small R7
U 1 1 57617054
P 7050 3900
F 0 "R7" H 7080 3920 50  0000 L CNN
F 1 "12k" H 7080 3860 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7050 3900 50  0001 C CNN
F 3 "" H 7050 3900 50  0000 C CNN
	1    7050 3900
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P5
U 1 1 576173F1
P 9200 3200
F 0 "P5" H 9200 3300 50  0000 C CNN
F 1 "CONN_01X01" V 9300 3200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 9200 3200 50  0001 C CNN
F 3 "" H 9200 3200 50  0000 C CNN
	1    9200 3200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 57617698
P 7250 4000
F 0 "R9" H 7280 4020 50  0000 L CNN
F 1 "12k" H 7280 3960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7250 4000 50  0001 C CNN
F 3 "" H 7250 4000 50  0000 C CNN
	1    7250 4000
	0    1    1    0   
$EndComp
$Comp
L R_Small R11
U 1 1 57617792
P 7450 4100
F 0 "R11" H 7480 4120 50  0000 L CNN
F 1 "12k" H 7480 4060 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7450 4100 50  0001 C CNN
F 3 "" H 7450 4100 50  0000 C CNN
	1    7450 4100
	0    1    1    0   
$EndComp
$Comp
L R_Small R8
U 1 1 57617829
P 7050 4200
F 0 "R8" H 7080 4220 50  0000 L CNN
F 1 "12k" H 7080 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7050 4200 50  0001 C CNN
F 3 "" H 7050 4200 50  0000 C CNN
	1    7050 4200
	0    1    1    0   
$EndComp
$Comp
L R_Small R10
U 1 1 576178BB
P 7250 4300
F 0 "R10" H 7280 4320 50  0000 L CNN
F 1 "12k" H 7280 4260 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7250 4300 50  0001 C CNN
F 3 "" H 7250 4300 50  0000 C CNN
	1    7250 4300
	0    1    1    0   
$EndComp
$Comp
L R_Small R12
U 1 1 57617948
P 7450 4400
F 0 "R12" H 7480 4420 50  0000 L CNN
F 1 "12k" H 7480 4360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7450 4400 50  0001 C CNN
F 3 "" H 7450 4400 50  0000 C CNN
	1    7450 4400
	0    1    1    0   
$EndComp
$Comp
L R_Small R13
U 1 1 576181F2
P 7600 3750
F 0 "R13" H 7630 3770 50  0000 L CNN
F 1 "12k" H 7630 3710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7600 3750 50  0001 C CNN
F 3 "" H 7600 3750 50  0000 C CNN
	1    7600 3750
	-1   0    0    1   
$EndComp
$Comp
L R_Small R14
U 1 1 5761829D
P 7800 3750
F 0 "R14" H 7830 3770 50  0000 L CNN
F 1 "12k" H 7830 3710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 7800 3750 50  0001 C CNN
F 3 "" H 7800 3750 50  0000 C CNN
	1    7800 3750
	-1   0    0    1   
$EndComp
$Comp
L R_Small R18
U 1 1 57618337
P 8600 3750
F 0 "R18" H 8630 3770 50  0000 L CNN
F 1 "12k" H 8630 3710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8600 3750 50  0001 C CNN
F 3 "" H 8600 3750 50  0000 C CNN
	1    8600 3750
	-1   0    0    1   
$EndComp
$Comp
L R_Small R15
U 1 1 576183CE
P 8000 3750
F 0 "R15" H 8030 3770 50  0000 L CNN
F 1 "12k" H 8030 3710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8000 3750 50  0001 C CNN
F 3 "" H 8000 3750 50  0000 C CNN
	1    8000 3750
	-1   0    0    1   
$EndComp
$Comp
L R_Small R16
U 1 1 5761847C
P 8200 3750
F 0 "R16" H 8230 3770 50  0000 L CNN
F 1 "12k" H 8230 3710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8200 3750 50  0001 C CNN
F 3 "" H 8200 3750 50  0000 C CNN
	1    8200 3750
	-1   0    0    1   
$EndComp
$Comp
L R_Small R17
U 1 1 5761864D
P 8400 3750
F 0 "R17" H 8430 3770 50  0000 L CNN
F 1 "12k" H 8430 3710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 8400 3750 50  0001 C CNN
F 3 "" H 8400 3750 50  0000 C CNN
	1    8400 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 1750 1450 1750
Wire Wire Line
	1450 1750 1450 1700
Wire Wire Line
	1650 1550 1650 1750
Connection ~ 1650 1700
Wire Wire Line
	1400 1950 1500 1950
Wire Wire Line
	1500 1950 1500 2000
Wire Wire Line
	1650 1950 1650 2150
Connection ~ 1650 2000
Wire Wire Line
	1450 2050 1450 1850
Wire Wire Line
	1450 1850 1400 1850
Wire Wire Line
	4700 1350 5050 1350
Wire Wire Line
	5250 1350 5700 1350
Wire Wire Line
	5700 1350 5700 2150
Wire Wire Line
	5550 2150 6850 2150
Wire Wire Line
	4450 2000 4800 2000
Wire Wire Line
	4700 1350 4700 2000
Connection ~ 4700 2000
Wire Wire Line
	5050 1150 4900 1150
Wire Wire Line
	4900 1150 4900 1350
Connection ~ 4900 1350
Wire Wire Line
	5250 1150 5400 1150
Wire Wire Line
	5400 1150 5400 1350
Connection ~ 5400 1350
Wire Wire Line
	4700 3000 5050 3000
Wire Wire Line
	5250 3000 5700 3000
Wire Wire Line
	5700 3000 5700 3800
Wire Wire Line
	5550 3800 6750 3800
Wire Wire Line
	4450 3650 4800 3650
Wire Wire Line
	4700 3000 4700 3650
Connection ~ 4700 3650
Wire Wire Line
	5050 2800 4900 2800
Wire Wire Line
	4900 2800 4900 3000
Connection ~ 4900 3000
Wire Wire Line
	5250 2800 5400 2800
Wire Wire Line
	5400 2800 5400 3000
Connection ~ 5400 3000
Connection ~ 5700 3800
Connection ~ 5700 2150
Wire Wire Line
	1450 1700 2750 1700
Wire Wire Line
	1600 4700 1950 4700
Wire Wire Line
	2150 4700 2600 4700
Wire Wire Line
	2600 4700 2600 5500
Wire Wire Line
	2450 5500 3500 5500
Wire Wire Line
	1350 5350 1700 5350
Wire Wire Line
	1600 4700 1600 5350
Connection ~ 1600 5350
Wire Wire Line
	1950 4500 1800 4500
Wire Wire Line
	1800 4500 1800 4700
Connection ~ 1800 4700
Wire Wire Line
	2150 4500 2300 4500
Wire Wire Line
	2300 4500 2300 4700
Connection ~ 2300 4700
Wire Wire Line
	1600 6350 1950 6350
Wire Wire Line
	2150 6350 2600 6350
Wire Wire Line
	2600 6350 2600 7150
Wire Wire Line
	2450 7150 3600 7150
Wire Wire Line
	1350 7000 1700 7000
Wire Wire Line
	1600 6350 1600 7000
Connection ~ 1600 7000
Wire Wire Line
	1950 6150 1800 6150
Wire Wire Line
	1800 6150 1800 6350
Connection ~ 1800 6350
Wire Wire Line
	2150 6150 2300 6150
Wire Wire Line
	2300 6150 2300 6350
Connection ~ 2300 6350
Connection ~ 2600 7150
Connection ~ 2600 5500
Wire Wire Line
	4750 4800 5100 4800
Wire Wire Line
	5300 4800 5750 4800
Wire Wire Line
	5750 4800 5750 5600
Wire Wire Line
	5600 5600 6750 5600
Wire Wire Line
	4500 5450 4850 5450
Wire Wire Line
	4750 4800 4750 5450
Connection ~ 4750 5450
Wire Wire Line
	5100 4600 4950 4600
Wire Wire Line
	4950 4600 4950 4800
Connection ~ 4950 4800
Wire Wire Line
	5300 4600 5450 4600
Wire Wire Line
	5450 4600 5450 4800
Connection ~ 5450 4800
Wire Wire Line
	4750 6450 5100 6450
Wire Wire Line
	5300 6450 5750 6450
Wire Wire Line
	5750 6450 5750 7250
Wire Wire Line
	5600 7250 6850 7250
Wire Wire Line
	4500 7100 4850 7100
Wire Wire Line
	4750 6450 4750 7100
Connection ~ 4750 7100
Wire Wire Line
	5100 6250 4950 6250
Wire Wire Line
	4950 6250 4950 6450
Connection ~ 4950 6450
Wire Wire Line
	5300 6250 5450 6250
Wire Wire Line
	5450 6250 5450 6450
Connection ~ 5450 6450
Connection ~ 5750 7250
Connection ~ 5750 5600
Wire Wire Line
	1500 2000 1950 2000
Wire Wire Line
	1950 2000 1950 2300
Wire Wire Line
	2750 1700 2750 1750
Wire Wire Line
	2450 1750 2450 1700
Connection ~ 2450 1700
Wire Wire Line
	2150 1750 2150 1700
Connection ~ 2150 1700
Wire Wire Line
	1950 2300 2750 2300
Wire Wire Line
	2750 2300 2750 2250
Wire Wire Line
	2450 2250 2450 2300
Connection ~ 2450 2300
Wire Wire Line
	2150 2250 2150 2300
Connection ~ 2150 2300
Wire Wire Line
	2150 2000 2950 2000
Wire Wire Line
	2150 1950 2150 2050
Connection ~ 2150 2000
Wire Wire Line
	2450 1950 2450 2050
Connection ~ 2450 2000
Wire Wire Line
	2750 1950 2750 2050
Connection ~ 2750 2000
Wire Wire Line
	6850 7250 6850 4400
Wire Wire Line
	6750 5600 6750 4300
Wire Wire Line
	6750 3800 6750 4200
Wire Wire Line
	6850 2150 6850 4100
Wire Wire Line
	3600 7150 3600 4450
Wire Wire Line
	3600 4450 6650 4450
Wire Wire Line
	6650 4450 6650 4000
Wire Wire Line
	3500 5500 3500 4350
Wire Wire Line
	3500 4350 6550 4350
Wire Wire Line
	6550 4350 6550 3900
Wire Wire Line
	6550 3900 6950 3900
Wire Wire Line
	6650 4000 7150 4000
Wire Wire Line
	6850 4100 7350 4100
Wire Wire Line
	6750 4200 6950 4200
Wire Wire Line
	6750 4300 7150 4300
Wire Wire Line
	6850 4400 7350 4400
Wire Wire Line
	7550 4400 9000 4400
Wire Wire Line
	7350 4300 9000 4300
Wire Wire Line
	7150 4200 9000 4200
Wire Wire Line
	7550 4100 9000 4100
Wire Wire Line
	7350 4000 9000 4000
Wire Wire Line
	7150 3900 9000 3900
Wire Wire Line
	7600 3850 7600 3900
Connection ~ 7600 3900
Wire Wire Line
	7800 3850 7800 4000
Connection ~ 7800 4000
Wire Wire Line
	8000 3850 8000 4100
Connection ~ 8000 4100
Wire Wire Line
	8200 3850 8200 4200
Connection ~ 8200 4200
Wire Wire Line
	8400 3850 8400 4300
Connection ~ 8400 4300
Wire Wire Line
	8600 3850 8600 4400
Connection ~ 8600 4400
Wire Wire Line
	7600 3550 7600 3650
Wire Wire Line
	7800 3650 7800 3550
Connection ~ 7800 3550
Wire Wire Line
	8000 3650 8000 3550
Connection ~ 8000 3550
Wire Wire Line
	8200 3650 8200 3550
Connection ~ 8200 3550
Wire Wire Line
	8400 3650 8400 3550
Connection ~ 8400 3550
Wire Wire Line
	8600 3200 8600 3650
Connection ~ 8600 3550
$Comp
L A3506LU U4
U 1 1 5762A06A
P 8400 1800
F 0 "U4" H 8400 2000 60  0000 C CNN
F 1 "A3506LU" H 8400 1900 60  0000 C CNN
F 2 "SCUBE:3x50mil" H 8400 1800 60  0001 C CNN
F 3 "" H 8400 1800 60  0000 C CNN
	1    8400 1800
	1    0    0    -1  
$EndComp
Text Notes 8050 1450 0    60   ~ 0
Hall effect sensor
Wire Wire Line
	8300 2200 8300 2450
Wire Wire Line
	8500 2200 8500 2450
$Comp
L GND #PWR24
U 1 1 5762A661
P 8650 2400
F 0 "#PWR24" H 8650 2150 50  0001 C CNN
F 1 "GND" H 8650 2250 50  0000 C CNN
F 2 "" H 8650 2400 50  0000 C CNN
F 3 "" H 8650 2400 50  0000 C CNN
	1    8650 2400
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR23
U 1 1 5762AB78
P 8150 2400
F 0 "#PWR23" H 8150 2250 50  0001 C CNN
F 1 "+5V" H 8150 2540 50  0000 C CNN
F 2 "" H 8150 2400 50  0000 C CNN
F 3 "" H 8150 2400 50  0000 C CNN
	1    8150 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 2400 8300 2400
Connection ~ 8300 2400
$Comp
L CONN_01X03 P8
U 1 1 5762AF3F
P 8400 2650
F 0 "P8" H 8400 2850 50  0000 C CNN
F 1 "CONN_01X03" V 8500 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 8400 2650 50  0001 C CNN
F 3 "" H 8400 2650 50  0000 C CNN
	1    8400 2650
	0    -1   1    0   
$EndComp
Wire Wire Line
	8400 2200 8400 2450
Wire Wire Line
	8650 2400 8400 2400
Connection ~ 8400 2400
$Comp
L C_Small C14
U 1 1 5762C7CC
P 8850 3500
F 0 "C14" H 8860 3570 50  0000 L CNN
F 1 "1u" H 8860 3420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8850 3500 50  0001 C CNN
F 3 "" H 8850 3500 50  0000 C CNN
	1    8850 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 3200 9000 3200
Wire Wire Line
	8850 3200 8850 3400
Wire Wire Line
	8600 3550 7600 3550
Connection ~ 8850 3200
$Comp
L GND #PWR25
U 1 1 5762CF0F
P 8850 3600
F 0 "#PWR25" H 8850 3350 50  0001 C CNN
F 1 "GND" H 8850 3450 50  0000 C CNN
F 2 "" H 8850 3600 50  0000 C CNN
F 3 "" H 8850 3600 50  0000 C CNN
	1    8850 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
