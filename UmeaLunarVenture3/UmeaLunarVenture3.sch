EESchema Schematic File Version 2
LIBS:scube
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
Wire Wire Line
	14400 3850 14400 50  
Text Notes 9750 6900 0    60   ~ 0
T = THYRISTOR\nZD = ZENER DIODE
Text Notes 7050 6800 0    60   ~ 0
Step-Down Circuit with Crowbar \nLM2576HVT (+12V, +5V, -5V)
Wire Wire Line
	7450 1950 7500 1950
Wire Wire Line
	7450 1350 7450 2600
Wire Wire Line
	7500 1600 7450 1600
Connection ~ 7450 1600
Connection ~ 7450 1950
$Comp
L CP_Small C15
U 1 1 5772BC79
P 7600 1600
F 0 "C15" H 7700 1600 39  0000 L CNN
F 1 "100 nF" H 7650 1550 31  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7600 1600 50  0001 C CNN
F 3 "" H 7600 1600 50  0000 C CNN
	1    7600 1600
	0    -1   1    0   
$EndComp
$Comp
L ZENERsmall D1
U 1 1 5772BCEE
P 7600 1950
F 0 "D1" H 7600 2050 50  0000 C CNN
F 1 "ZD +15V" H 7600 1850 31  0000 C CNN
F 2 "scube:SOT-23_Handsoldering-Swapped_Pads" H 7600 1950 50  0001 C CNN
F 3 "" H 7600 1950 50  0000 C CNN
	1    7600 1950
	1    0    0    1   
$EndComp
$Comp
L R_Small R5
U 1 1 5772BD5D
P 7950 1950
F 0 "R5" H 7980 1970 50  0000 L CNN
F 1 "1k Ohm" H 7980 1910 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7950 1950 50  0001 C CNN
F 3 "" H 7950 1950 50  0000 C CNN
	1    7950 1950
	0    -1   -1   0   
$EndComp
$Comp
L CP_Small C17
U 1 1 5772BDD4
P 7950 2150
F 0 "C17" H 8050 2150 39  0000 L CNN
F 1 "47 nF" H 8000 2100 31  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7950 2150 50  0001 C CNN
F 3 "" H 7950 2150 50  0000 C CNN
	1    7950 2150
	0    -1   1    0   
$EndComp
$Comp
L THYRISTOR T1
U 1 1 5772BE53
P 3050 1500
F 0 "T1" H 3050 1600 50  0000 C CNN
F 1 "T" H 3050 1400 31  0000 C CNN
F 2 "scube:SOT-223-KAG" H 3050 1500 50  0001 C CNN
F 3 "" H 3050 1500 50  0000 C CNN
	1    3050 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 1950 7850 1950
Wire Wire Line
	7800 1950 7800 2500
Connection ~ 7800 1950
Wire Wire Line
	7850 2150 7800 2150
Connection ~ 7800 2150
Wire Wire Line
	8100 1550 8100 2150
Wire Wire Line
	8100 1950 8050 1950
Wire Wire Line
	8100 2150 8050 2150
Connection ~ 8100 2150
Connection ~ 8100 1950
NoConn ~ 2100 3750
$Comp
L MCP16311/2 U1
U 1 1 5773BED8
P 4850 1600
F 0 "U1" H 5000 1400 39  0000 C CNN
F 1 "MCP16311/2" H 4600 2000 39  0000 C CNN
F 2 "SCUBE:MSOP-8_3x3mm_Pitch0.65mm_thinpads" H 4850 1600 60  0001 C CNN
F 3 "" H 4850 1600 60  0000 C CNN
	1    4850 1600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5773C708
P 3950 1600
F 0 "C3" H 3960 1670 50  0000 L CNN
F 1 "10 uF" H 3960 1520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3950 1600 50  0001 C CNN
F 3 "" H 3950 1600 50  0000 C CNN
	1    3950 1600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5773C98A
P 4350 1950
F 0 "C5" H 4360 2020 50  0000 L CNN
F 1 "1 uF" H 4360 1870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4350 1950 50  0001 C CNN
F 3 "" H 4350 1950 50  0000 C CNN
	1    4350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1650 4350 1650
Wire Wire Line
	4350 1650 4350 1850
$Comp
L GND #PWR01
U 1 1 5773CA3C
P 4850 2050
F 0 "#PWR01" H 4850 1800 50  0001 C CNN
F 1 "GND" H 4850 1900 50  0000 C CNN
F 2 "" H 4850 2050 50  0000 C CNN
F 3 "" H 4850 2050 50  0000 C CNN
	1    4850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1900 4850 2050
$Comp
L GND #PWR02
U 1 1 5773CAD4
P 4350 2150
F 0 "#PWR02" H 4350 1900 50  0001 C CNN
F 1 "GND" H 4350 2000 50  0000 C CNN
F 2 "" H 4350 2150 50  0000 C CNN
F 3 "" H 4350 2150 50  0000 C CNN
	1    4350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2050 4350 2150
$Comp
L GND #PWR03
U 1 1 5773CB66
P 3800 1850
F 0 "#PWR03" H 3800 1600 50  0001 C CNN
F 1 "GND" H 3800 1700 50  0000 C CNN
F 2 "" H 3800 1850 50  0000 C CNN
F 3 "" H 3800 1850 50  0000 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5773CC72
P 6100 1800
F 0 "R2" H 6130 1820 50  0000 L CNN
F 1 "10 kOhm" H 6130 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6100 1800 50  0001 C CNN
F 3 "" H 6100 1800 50  0000 C CNN
	1    6100 1800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 5773CD00
P 6100 1500
F 0 "R1" H 6130 1520 50  0000 L CNN
F 1 "140 kOhm" H 6130 1460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6100 1500 50  0001 C CNN
F 3 "" H 6100 1500 50  0000 C CNN
	1    6100 1500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 5773CD96
P 5400 1100
F 0 "C7" H 5410 1170 50  0000 L CNN
F 1 "100 nF" H 5410 1020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5400 1100 50  0001 C CNN
F 3 "" H 5400 1100 50  0000 C CNN
	1    5400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1350 5600 1350
Wire Wire Line
	5400 1350 5400 1200
Wire Wire Line
	4850 1000 4850 1100
$Comp
L L_Small L1
U 1 1 5773CF09
P 5700 1350
F 0 "L1" H 5730 1390 50  0000 L CNN
F 1 "56 uH" H 5730 1310 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 5700 1350 50  0001 C CNN
F 3 "" H 5700 1350 50  0000 C CNN
	1    5700 1350
	0    -1   -1   0   
$EndComp
Connection ~ 5400 1350
Wire Wire Line
	6100 1350 6100 1400
Wire Wire Line
	6100 1600 6100 1700
Wire Wire Line
	5200 1650 6100 1650
Connection ~ 6100 1650
$Comp
L GND #PWR04
U 1 1 5773D3C1
P 6100 2050
F 0 "#PWR04" H 6100 1800 50  0001 C CNN
F 1 "GND" H 6100 1900 50  0000 C CNN
F 2 "" H 6100 2050 50  0000 C CNN
F 3 "" H 6100 2050 50  0000 C CNN
	1    6100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2050 6100 1900
Connection ~ 6100 1350
$Comp
L F_Small F1
U 1 1 5773D783
P 3350 1900
F 0 "F1" H 3310 1960 50  0000 L CNN
F 1 "Fuse 1.5A" H 3200 1800 47  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" H 3350 1900 50  0001 C CNN
F 3 "" H 3350 1900 50  0000 C CNN
	1    3350 1900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5773DCF2
P 8100 1550
F 0 "#PWR05" H 8100 1300 50  0001 C CNN
F 1 "GND" H 8100 1400 50  0000 C CNN
F 2 "" H 8100 1550 50  0000 C CNN
F 3 "" H 8100 1550 50  0000 C CNN
	1    8100 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 1000 5400 1000
Wire Wire Line
	7700 1600 8100 1600
Connection ~ 8100 1600
Text Notes 3950 6400 0    60   ~ 0
Vout +12V, @ 1A
Text Notes 4700 6300 0    60   ~ 0
Vout +5V, @ 1A
Wire Wire Line
	2100 4150 2300 4150
Wire Wire Line
	2100 4250 2200 4250
$Comp
L C_Small C1
U 1 1 57746225
P 3650 1600
F 0 "C1" H 3660 1670 50  0000 L CNN
F 1 "10 uF" H 3660 1520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3650 1600 50  0001 C CNN
F 3 "" H 3650 1600 50  0000 C CNN
	1    3650 1600
	1    0    0    -1  
$EndComp
$Comp
L MAX660 U3
U 1 1 5775095B
P 6550 4600
F 0 "U3" H 6550 4350 60  0000 C CNN
F 1 "MAX660" H 6550 4950 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6500 4600 60  0001 C CNN
F 3 "" H 6500 4600 60  0000 C CNN
	1    6550 4600
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C14
U 1 1 57750B9B
P 7100 5000
F 0 "C14" H 7110 5070 50  0000 L CNN
F 1 "150 uF" H 7110 4920 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeC_EIA-6032_HandSoldering" H 7100 5000 50  0001 C CNN
F 3 "" H 7100 5000 50  0000 C CNN
	1    7100 5000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 57750CBA
P 7400 4600
F 0 "#PWR06" H 7400 4350 50  0001 C CNN
F 1 "GND" H 7400 4450 50  0000 C CNN
F 2 "" H 7400 4600 50  0000 C CNN
F 3 "" H 7400 4600 50  0000 C CNN
	1    7400 4600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 57750F08
P 7100 5300
F 0 "#PWR07" H 7100 5050 50  0001 C CNN
F 1 "GND" H 7100 5150 50  0000 C CNN
F 2 "" H 7100 5300 50  0000 C CNN
F 3 "" H 7100 5300 50  0000 C CNN
	1    7100 5300
	1    0    0    -1  
$EndComp
Text Notes 5150 6200 0    60   ~ 0
Vout -5V, @ 1A
NoConn ~ 2100 3850
$Comp
L GND #PWR08
U 1 1 577A8439
P 5350 1500
F 0 "#PWR08" H 5350 1250 50  0001 C CNN
F 1 "GND" H 5350 1350 50  0000 C CNN
F 2 "" H 5350 1500 50  0000 C CNN
F 3 "" H 5350 1500 50  0000 C CNN
	1    5350 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 1500 5200 1500
$Comp
L GND #PWR09
U 1 1 577A8BB8
P 3050 1000
F 0 "#PWR09" H 3050 750 50  0001 C CNN
F 1 "GND" H 3050 850 50  0000 C CNN
F 2 "" H 3050 1000 50  0000 C CNN
F 3 "" H 3050 1000 50  0000 C CNN
	1    3050 1000
	-1   0    0    1   
$EndComp
$Comp
L SCUBE40 P1
U 1 1 577A98F2
P 1650 3450
F 0 "P1" H 1700 3900 60  0000 C CNN
F 1 "SCUBE40" H 1700 3800 60  0000 C CNN
F 2 "scube:scube40" H 1550 3300 60  0001 C CNN
F 3 "" H 1550 3300 60  0000 C CNN
	1    1650 3450
	-1   0    0    -1  
$EndComp
NoConn ~ 2100 3950
NoConn ~ 2100 4050
NoConn ~ 2100 3650
NoConn ~ 2100 3550
$Comp
L GND #PWR010
U 1 1 577A9DAF
P 2350 3450
F 0 "#PWR010" H 2350 3200 50  0001 C CNN
F 1 "GND" H 2350 3300 50  0000 C CNN
F 2 "" H 2350 3450 50  0000 C CNN
F 3 "" H 2350 3450 50  0000 C CNN
	1    2350 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 3450 2100 3450
Wire Wire Line
	7800 2500 8300 2500
Wire Wire Line
	3050 1300 3050 1000
Wire Wire Line
	3350 1300 3350 1800
Wire Wire Line
	3350 1700 3050 1700
Wire Wire Line
	3650 1700 3650 1850
Wire Wire Line
	3650 1850 3950 1850
Wire Wire Line
	3950 1850 3950 1700
Connection ~ 3800 1850
Wire Wire Line
	3650 1500 3650 1400
Wire Wire Line
	3650 1400 3950 1400
Wire Wire Line
	3950 1400 3950 1500
Wire Wire Line
	3350 1300 4400 1300
Wire Wire Line
	3800 1300 3800 1400
Connection ~ 3800 1400
Connection ~ 3350 1700
Wire Wire Line
	4400 1300 4400 1500
Wire Wire Line
	4400 1500 4500 1500
Connection ~ 3800 1300
Wire Wire Line
	4500 1350 4400 1350
Connection ~ 4400 1350
Wire Wire Line
	5800 1350 7450 1350
$Comp
L C_Small C12
U 1 1 577ABC39
P 6850 1650
F 0 "C12" H 6860 1720 50  0000 L CNN
F 1 "10 uF" H 6860 1570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6850 1650 50  0001 C CNN
F 3 "" H 6850 1650 50  0000 C CNN
	1    6850 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 577ABC3F
P 6700 1900
F 0 "#PWR011" H 6700 1650 50  0001 C CNN
F 1 "GND" H 6700 1750 50  0000 C CNN
F 2 "" H 6700 1900 50  0000 C CNN
F 3 "" H 6700 1900 50  0000 C CNN
	1    6700 1900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C10
U 1 1 577ABC45
P 6550 1650
F 0 "C10" H 6560 1720 50  0000 L CNN
F 1 "10 uF" H 6560 1570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6550 1650 50  0001 C CNN
F 3 "" H 6550 1650 50  0000 C CNN
	1    6550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1750 6550 1900
Wire Wire Line
	6550 1900 6850 1900
Wire Wire Line
	6850 1900 6850 1750
Connection ~ 6700 1900
Wire Wire Line
	6550 1550 6550 1450
Wire Wire Line
	6550 1450 6850 1450
Wire Wire Line
	6850 1450 6850 1550
Wire Wire Line
	6700 1350 6700 1450
Connection ~ 6700 1450
Connection ~ 6700 1350
Wire Wire Line
	8300 2500 8300 900 
Wire Wire Line
	8300 900  3150 900 
Wire Wire Line
	3150 900  3150 1400
Wire Wire Line
	7450 2600 8500 2600
Wire Wire Line
	8500 2600 8500 6400
Wire Wire Line
	7450 3700 7500 3700
Wire Wire Line
	7450 3100 7450 4400
Wire Wire Line
	7500 3350 7450 3350
Connection ~ 7450 3350
Connection ~ 7450 3700
$Comp
L CP_Small C16
U 1 1 577AC69D
P 7600 3350
F 0 "C16" H 7700 3350 39  0000 L CNN
F 1 "100 nF" H 7650 3300 31  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7600 3350 50  0001 C CNN
F 3 "" H 7600 3350 50  0000 C CNN
	1    7600 3350
	0    -1   1    0   
$EndComp
$Comp
L ZENERsmall D2
U 1 1 577AC6A3
P 7600 3700
F 0 "D2" H 7600 3800 50  0000 C CNN
F 1 "ZD +5.6V" H 7600 3600 31  0000 C CNN
F 2 "scube:SOT-23_Handsoldering-Swapped_Pads" H 7600 3700 50  0001 C CNN
F 3 "" H 7600 3700 50  0000 C CNN
	1    7600 3700
	1    0    0    1   
$EndComp
$Comp
L R_Small R6
U 1 1 577AC6A9
P 7950 3700
F 0 "R6" H 7980 3720 50  0000 L CNN
F 1 "1k Ohm" H 7980 3660 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7950 3700 50  0001 C CNN
F 3 "" H 7950 3700 50  0000 C CNN
	1    7950 3700
	0    -1   -1   0   
$EndComp
$Comp
L CP_Small C18
U 1 1 577AC6AF
P 7950 3900
F 0 "C18" H 8050 3900 39  0000 L CNN
F 1 "47 nF" H 8000 3850 31  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7950 3900 50  0001 C CNN
F 3 "" H 7950 3900 50  0000 C CNN
	1    7950 3900
	0    -1   1    0   
$EndComp
$Comp
L THYRISTOR T2
U 1 1 577AC6B5
P 3050 3250
F 0 "T2" H 3050 3350 50  0000 C CNN
F 1 "T" H 3050 3150 31  0000 C CNN
F 2 "scube:SOT-223-KAG" H 3050 3250 50  0001 C CNN
F 3 "" H 3050 3250 50  0000 C CNN
	1    3050 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 3700 7850 3700
Wire Wire Line
	7800 3700 7800 4250
Connection ~ 7800 3700
Wire Wire Line
	7850 3900 7800 3900
Connection ~ 7800 3900
Wire Wire Line
	8100 3300 8100 3900
Wire Wire Line
	8100 3700 8050 3700
Wire Wire Line
	8100 3900 8050 3900
Connection ~ 8100 3900
Connection ~ 8100 3700
$Comp
L MCP16311/2 U2
U 1 1 577AC6C9
P 4850 3350
F 0 "U2" H 5000 3150 39  0000 C CNN
F 1 "MCP16311/2" H 4600 3750 39  0000 C CNN
F 2 "SCUBE:MSOP-8_3x3mm_Pitch0.65mm_thinpads" H 4850 3350 60  0001 C CNN
F 3 "" H 4850 3350 60  0000 C CNN
	1    4850 3350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 577AC6CF
P 3950 3350
F 0 "C4" H 3960 3420 50  0000 L CNN
F 1 "10 uF" H 3960 3270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3950 3350 50  0001 C CNN
F 3 "" H 3950 3350 50  0000 C CNN
	1    3950 3350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 577AC6D5
P 4350 3700
F 0 "C6" H 4360 3770 50  0000 L CNN
F 1 "1 uF" H 4360 3620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4350 3700 50  0001 C CNN
F 3 "" H 4350 3700 50  0000 C CNN
	1    4350 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3400 4350 3400
Wire Wire Line
	4350 3400 4350 3600
$Comp
L GND #PWR012
U 1 1 577AC6DD
P 4850 3800
F 0 "#PWR012" H 4850 3550 50  0001 C CNN
F 1 "GND" H 4850 3650 50  0000 C CNN
F 2 "" H 4850 3800 50  0000 C CNN
F 3 "" H 4850 3800 50  0000 C CNN
	1    4850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3650 4850 3800
$Comp
L GND #PWR013
U 1 1 577AC6E4
P 4350 3900
F 0 "#PWR013" H 4350 3650 50  0001 C CNN
F 1 "GND" H 4350 3750 50  0000 C CNN
F 2 "" H 4350 3900 50  0000 C CNN
F 3 "" H 4350 3900 50  0000 C CNN
	1    4350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3800 4350 3900
$Comp
L GND #PWR014
U 1 1 577AC6EB
P 3800 3600
F 0 "#PWR014" H 3800 3350 50  0001 C CNN
F 1 "GND" H 3800 3450 50  0000 C CNN
F 2 "" H 3800 3600 50  0000 C CNN
F 3 "" H 3800 3600 50  0000 C CNN
	1    3800 3600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 577AC6F1
P 6100 3550
F 0 "R4" H 6130 3570 50  0000 L CNN
F 1 "10 kOhm" H 6130 3510 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6100 3550 50  0001 C CNN
F 3 "" H 6100 3550 50  0000 C CNN
	1    6100 3550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 577AC6F7
P 6100 3250
F 0 "R3" H 6130 3270 50  0000 L CNN
F 1 "52.3 kOhm" H 6130 3210 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6100 3250 50  0001 C CNN
F 3 "" H 6100 3250 50  0000 C CNN
	1    6100 3250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 577AC6FD
P 5400 2850
F 0 "C8" H 5410 2920 50  0000 L CNN
F 1 "100 nF" H 5410 2770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5400 2850 50  0001 C CNN
F 3 "" H 5400 2850 50  0000 C CNN
	1    5400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3100 5600 3100
Wire Wire Line
	5400 3100 5400 2950
Wire Wire Line
	4850 2750 4850 2850
$Comp
L L_Small L2
U 1 1 577AC707
P 5700 3100
F 0 "L2" H 5730 3140 50  0000 L CNN
F 1 "22 uH" H 5730 3060 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5700 3100 50  0001 C CNN
F 3 "" H 5700 3100 50  0000 C CNN
	1    5700 3100
	0    -1   -1   0   
$EndComp
Connection ~ 5400 3100
Wire Wire Line
	6100 3100 6100 3150
Wire Wire Line
	6100 3350 6100 3450
Wire Wire Line
	5200 3400 6100 3400
Connection ~ 6100 3400
$Comp
L GND #PWR015
U 1 1 577AC713
P 6100 3800
F 0 "#PWR015" H 6100 3550 50  0001 C CNN
F 1 "GND" H 6100 3650 50  0000 C CNN
F 2 "" H 6100 3800 50  0000 C CNN
F 3 "" H 6100 3800 50  0000 C CNN
	1    6100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3800 6100 3650
Connection ~ 6100 3100
$Comp
L F_Small F2
U 1 1 577AC71B
P 3350 3650
F 0 "F2" H 3310 3710 50  0000 L CNN
F 1 "Fuse 1.5A" H 3200 3550 47  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" H 3350 3650 50  0001 C CNN
F 3 "" H 3350 3650 50  0000 C CNN
	1    3350 3650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 577AC721
P 8100 3300
F 0 "#PWR016" H 8100 3050 50  0001 C CNN
F 1 "GND" H 8100 3150 50  0000 C CNN
F 2 "" H 8100 3300 50  0000 C CNN
F 3 "" H 8100 3300 50  0000 C CNN
	1    8100 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 2750 5400 2750
Wire Wire Line
	7700 3350 8100 3350
Connection ~ 8100 3350
$Comp
L C_Small C2
U 1 1 577AC72A
P 3650 3350
F 0 "C2" H 3660 3420 50  0000 L CNN
F 1 "10 uF" H 3660 3270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3650 3350 50  0001 C CNN
F 3 "" H 3650 3350 50  0000 C CNN
	1    3650 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 577AC730
P 5350 3250
F 0 "#PWR017" H 5350 3000 50  0001 C CNN
F 1 "GND" H 5350 3100 50  0000 C CNN
F 2 "" H 5350 3250 50  0000 C CNN
F 3 "" H 5350 3250 50  0000 C CNN
	1    5350 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5350 3250 5200 3250
$Comp
L GND #PWR018
U 1 1 577AC737
P 3050 2750
F 0 "#PWR018" H 3050 2500 50  0001 C CNN
F 1 "GND" H 3050 2600 50  0000 C CNN
F 2 "" H 3050 2750 50  0000 C CNN
F 3 "" H 3050 2750 50  0000 C CNN
	1    3050 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 4250 8300 4250
Wire Wire Line
	3050 3050 3050 2750
Wire Wire Line
	3350 3050 3350 3550
Wire Wire Line
	3350 3450 3050 3450
Wire Wire Line
	3650 3450 3650 3600
Wire Wire Line
	3650 3600 3950 3600
Wire Wire Line
	3950 3600 3950 3450
Connection ~ 3800 3600
Wire Wire Line
	3650 3250 3650 3150
Wire Wire Line
	3650 3150 3950 3150
Wire Wire Line
	3950 3150 3950 3250
Wire Wire Line
	3350 3050 4400 3050
Wire Wire Line
	3800 3050 3800 3150
Connection ~ 3800 3150
Connection ~ 3350 3450
Wire Wire Line
	4400 3050 4400 3250
Wire Wire Line
	4400 3250 4500 3250
Connection ~ 3800 3050
Wire Wire Line
	4500 3100 4400 3100
Connection ~ 4400 3100
Wire Wire Line
	5800 3100 7450 3100
$Comp
L C_Small C13
U 1 1 577AC759
P 6850 3400
F 0 "C13" H 6860 3470 50  0000 L CNN
F 1 "10 uF" H 6860 3320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6850 3400 50  0001 C CNN
F 3 "" H 6850 3400 50  0000 C CNN
	1    6850 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 577AC75F
P 6700 3650
F 0 "#PWR019" H 6700 3400 50  0001 C CNN
F 1 "GND" H 6700 3500 50  0000 C CNN
F 2 "" H 6700 3650 50  0000 C CNN
F 3 "" H 6700 3650 50  0000 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 577AC765
P 6550 3400
F 0 "C11" H 6560 3470 50  0000 L CNN
F 1 "10 uF" H 6560 3320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6550 3400 50  0001 C CNN
F 3 "" H 6550 3400 50  0000 C CNN
	1    6550 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3500 6550 3650
Wire Wire Line
	6550 3650 6850 3650
Wire Wire Line
	6850 3650 6850 3500
Connection ~ 6700 3650
Wire Wire Line
	6550 3300 6550 3200
Wire Wire Line
	6550 3200 6850 3200
Wire Wire Line
	6850 3200 6850 3300
Wire Wire Line
	6700 3100 6700 3200
Connection ~ 6700 3200
Connection ~ 6700 3100
Wire Wire Line
	8300 4250 8300 2650
Wire Wire Line
	8300 2650 3150 2650
Wire Wire Line
	3150 2650 3150 3150
Wire Wire Line
	2100 3350 2100 2300
Wire Wire Line
	2100 2300 3350 2300
Wire Wire Line
	3350 2300 3350 2000
Wire Wire Line
	3350 3750 3350 3900
Wire Wire Line
	3350 3900 2800 3900
Wire Wire Line
	2800 3900 2800 2300
Connection ~ 2800 2300
Wire Wire Line
	7000 4400 8400 4400
Wire Wire Line
	8400 4400 8400 6300
Connection ~ 7450 4400
NoConn ~ 7000 4500
NoConn ~ 6100 4400
$Comp
L CP1_Small C9
U 1 1 577AD0B0
P 5400 4600
F 0 "C9" H 5410 4670 50  0000 L CNN
F 1 "150 uF" H 5410 4520 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeC_EIA-6032_HandSoldering" H 5400 4600 50  0001 C CNN
F 3 "" H 5400 4600 50  0000 C CNN
	1    5400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4500 5400 4500
Wire Wire Line
	6100 4700 5400 4700
$Comp
L GND #PWR020
U 1 1 577AD303
P 5900 4800
F 0 "#PWR020" H 5900 4550 50  0001 C CNN
F 1 "GND" H 5900 4650 50  0000 C CNN
F 2 "" H 5900 4800 50  0000 C CNN
F 3 "" H 5900 4800 50  0000 C CNN
	1    5900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4600 5900 4600
Wire Wire Line
	5900 4600 5900 4800
Wire Wire Line
	7000 4700 8300 4700
Wire Wire Line
	7100 4700 7100 4900
Wire Wire Line
	7000 4600 7400 4600
Wire Wire Line
	8300 4700 8300 6200
Connection ~ 7100 4700
Wire Wire Line
	8500 6400 2100 6400
Wire Wire Line
	2100 6400 2100 4350
Wire Wire Line
	8400 6300 2200 6300
Wire Wire Line
	2200 6300 2200 4250
Wire Wire Line
	2300 4150 2300 6200
Wire Wire Line
	2300 6200 8300 6200
Wire Wire Line
	7100 5300 7100 5100
$EndSCHEMATC