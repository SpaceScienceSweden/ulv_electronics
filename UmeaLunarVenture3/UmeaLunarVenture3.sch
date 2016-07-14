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
LIBS:UmeaLunarVenture3-cache
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
Text Notes 9850 7100 0    60   ~ 0
T = THYRISTOR\nZD = ZENER DIODE
Text Notes 7150 7000 0    60   ~ 0
Step-Down Circuit with Crowbar \nLM2576HVT (+12V, +5V, -5V)
Wire Wire Line
	7950 2500 8000 2500
Wire Wire Line
	7950 1900 7950 3150
Wire Wire Line
	8000 2150 7950 2150
Connection ~ 7950 2150
Connection ~ 7950 2500
$Comp
L CP_Small C15
U 1 1 5772BC79
P 8100 2150
F 0 "C15" V 8000 2150 39  0000 L CNN
F 1 "100 nF" V 8200 2100 31  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8100 2150 50  0001 C CNN
F 3 "" H 8100 2150 50  0000 C CNN
	1    8100 2150
	0    -1   1    0   
$EndComp
$Comp
L ZENERsmall D1
U 1 1 5772BCEE
P 8100 2500
F 0 "D1" H 8100 2600 50  0000 C CNN
F 1 "ZD +15V" H 8100 2400 31  0000 C CNN
F 2 "scube:SOT-23_Handsoldering-Swapped_Pads" H 8100 2500 50  0001 C CNN
F 3 "" H 8100 2500 50  0000 C CNN
	1    8100 2500
	1    0    0    1   
$EndComp
$Comp
L R_Small R5
U 1 1 5772BD5D
P 8450 2500
F 0 "R5" V 8600 2500 50  0000 L CNN
F 1 "1k Ohm" V 8550 2350 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8450 2500 50  0001 C CNN
F 3 "" H 8450 2500 50  0000 C CNN
	1    8450 2500
	0    -1   -1   0   
$EndComp
$Comp
L CP_Small C17
U 1 1 5772BDD4
P 8450 2700
F 0 "C17" V 8550 2700 39  0000 L CNN
F 1 "47 nF" V 8550 2550 31  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8450 2700 50  0001 C CNN
F 3 "" H 8450 2700 50  0000 C CNN
	1    8450 2700
	0    -1   1    0   
$EndComp
$Comp
L THYRISTOR T1
U 1 1 5772BE53
P 3550 2050
F 0 "T1" H 3550 2150 50  0000 C CNN
F 1 "T" H 3550 1950 31  0000 C CNN
F 2 "scube:SOT-223-KAG" H 3550 2050 50  0001 C CNN
F 3 "" H 3550 2050 50  0000 C CNN
	1    3550 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 2500 8350 2500
Wire Wire Line
	8300 2500 8300 3050
Connection ~ 8300 2500
Wire Wire Line
	8350 2700 8300 2700
Connection ~ 8300 2700
Wire Wire Line
	8600 2100 8600 2700
Wire Wire Line
	8600 2500 8550 2500
Wire Wire Line
	8600 2700 8550 2700
Connection ~ 8600 2700
Connection ~ 8600 2500
NoConn ~ 2600 4300
$Comp
L MCP16311/2 U1
U 1 1 5773BED8
P 5350 2150
F 0 "U1" H 5500 1950 39  0000 C CNN
F 1 "MCP16311/2" H 5100 2550 39  0000 C CNN
F 2 "SCUBE:MSOP-8_3x3mm_Pitch0.65mm_thinpads" H 5350 2150 60  0001 C CNN
F 3 "" H 5350 2150 60  0000 C CNN
	1    5350 2150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5773C708
P 4450 2150
F 0 "C3" H 4460 2220 50  0000 L CNN
F 1 "10 uF" H 4460 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4450 2150 50  0001 C CNN
F 3 "" H 4450 2150 50  0000 C CNN
	1    4450 2150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5773C98A
P 4850 2400
F 0 "C5" H 4860 2470 50  0000 L CNN
F 1 "1 uF" H 4860 2320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4850 2400 50  0001 C CNN
F 3 "" H 4850 2400 50  0000 C CNN
	1    4850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2200 4850 2200
$Comp
L GND #PWR01
U 1 1 5773CA3C
P 5350 2600
F 0 "#PWR01" H 5350 2350 50  0001 C CNN
F 1 "GND" H 5350 2450 50  0000 C CNN
F 2 "" H 5350 2600 50  0000 C CNN
F 3 "" H 5350 2600 50  0000 C CNN
	1    5350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2450 5350 2600
$Comp
L GND #PWR02
U 1 1 5773CAD4
P 4850 2600
F 0 "#PWR02" H 4850 2350 50  0001 C CNN
F 1 "GND" H 4850 2450 50  0000 C CNN
F 2 "" H 4850 2600 50  0000 C CNN
F 3 "" H 4850 2600 50  0000 C CNN
	1    4850 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5773CB66
P 4300 2600
F 0 "#PWR03" H 4300 2350 50  0001 C CNN
F 1 "GND" H 4300 2450 50  0000 C CNN
F 2 "" H 4300 2600 50  0000 C CNN
F 3 "" H 4300 2600 50  0000 C CNN
	1    4300 2600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5773CC72
P 6600 2350
F 0 "R2" H 6650 2400 50  0000 L CNN
F 1 "10 kOhm" H 6650 2300 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6600 2350 50  0001 C CNN
F 3 "" H 6600 2350 50  0000 C CNN
	1    6600 2350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 5773CD00
P 6600 2050
F 0 "R1" H 6650 2100 50  0000 L CNN
F 1 "140 kOhm" H 6650 2000 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6600 2050 50  0001 C CNN
F 3 "" H 6600 2050 50  0000 C CNN
	1    6600 2050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 5773CD96
P 5900 1650
F 0 "C7" H 5910 1720 50  0000 L CNN
F 1 "100 nF" H 5910 1570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5900 1650 50  0001 C CNN
F 3 "" H 5900 1650 50  0000 C CNN
	1    5900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1900 6100 1900
Wire Wire Line
	5900 1900 5900 1750
Wire Wire Line
	5350 1550 5350 1650
$Comp
L L_Small L1
U 1 1 5773CF09
P 6200 1900
F 0 "L1" V 6300 1800 50  0000 L CNN
F 1 "56 uH" V 6150 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 6200 1900 50  0001 C CNN
F 3 "" H 6200 1900 50  0000 C CNN
	1    6200 1900
	0    -1   -1   0   
$EndComp
Connection ~ 5900 1900
Wire Wire Line
	6600 1900 6600 1950
Wire Wire Line
	6600 2150 6600 2250
Wire Wire Line
	5700 2200 6600 2200
Connection ~ 6600 2200
$Comp
L GND #PWR04
U 1 1 5773D3C1
P 6600 2600
F 0 "#PWR04" H 6600 2350 50  0001 C CNN
F 1 "GND" H 6600 2450 50  0000 C CNN
F 2 "" H 6600 2600 50  0000 C CNN
F 3 "" H 6600 2600 50  0000 C CNN
	1    6600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2600 6600 2450
Connection ~ 6600 1900
$Comp
L F_Small F1
U 1 1 5773D783
P 3850 2450
F 0 "F1" H 3810 2510 50  0000 L CNN
F 1 "Fuse 1.5A" H 3700 2350 47  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" H 3850 2450 50  0001 C CNN
F 3 "" H 3850 2450 50  0000 C CNN
	1    3850 2450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5773DCF2
P 8600 2100
F 0 "#PWR05" H 8600 1850 50  0001 C CNN
F 1 "GND" H 8600 1950 50  0000 C CNN
F 2 "" H 8600 2100 50  0000 C CNN
F 3 "" H 8600 2100 50  0000 C CNN
	1    8600 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 1550 5900 1550
Wire Wire Line
	8200 2150 8600 2150
Connection ~ 8600 2150
Text Notes 4650 6400 0    60   ~ 0
Vout +12V, @ 1A
Text Notes 5200 6300 0    60   ~ 0
Vout +5V, @ 1A
Wire Wire Line
	2600 4700 2800 4700
Wire Wire Line
	2600 4800 2700 4800
$Comp
L C_Small C1
U 1 1 57746225
P 4150 2150
F 0 "C1" H 4160 2220 50  0000 L CNN
F 1 "10 uF" H 4160 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4150 2150 50  0001 C CNN
F 3 "" H 4150 2150 50  0000 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
$Comp
L MAX660 U3
U 1 1 5775095B
P 7050 5150
F 0 "U3" H 7050 4900 60  0000 C CNN
F 1 "MAX660" H 7050 5500 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7000 5150 60  0001 C CNN
F 3 "" H 7000 5150 60  0000 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
$Comp
L CP1_Small C14
U 1 1 57750B9B
P 7600 5550
F 0 "C14" H 7610 5620 50  0000 L CNN
F 1 "150 uF" H 7610 5470 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeC_EIA-6032_HandSoldering" H 7600 5550 50  0001 C CNN
F 3 "" H 7600 5550 50  0000 C CNN
	1    7600 5550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 57750CBA
P 7900 5150
F 0 "#PWR06" H 7900 4900 50  0001 C CNN
F 1 "GND" H 7900 5000 50  0000 C CNN
F 2 "" H 7900 5150 50  0000 C CNN
F 3 "" H 7900 5150 50  0000 C CNN
	1    7900 5150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 57750F08
P 7600 5850
F 0 "#PWR07" H 7600 5600 50  0001 C CNN
F 1 "GND" H 7600 5700 50  0000 C CNN
F 2 "" H 7600 5850 50  0000 C CNN
F 3 "" H 7600 5850 50  0000 C CNN
	1    7600 5850
	1    0    0    -1  
$EndComp
Text Notes 5650 6200 0    60   ~ 0
Vout -5V, @ 1A
NoConn ~ 2600 4400
$Comp
L GND #PWR08
U 1 1 577A8439
P 5850 2600
F 0 "#PWR08" H 5850 2350 50  0001 C CNN
F 1 "GND" H 5850 2450 50  0000 C CNN
F 2 "" H 5850 2600 50  0000 C CNN
F 3 "" H 5850 2600 50  0000 C CNN
	1    5850 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2050 5700 2050
$Comp
L GND #PWR09
U 1 1 577A8BB8
P 3550 1550
F 0 "#PWR09" H 3550 1300 50  0001 C CNN
F 1 "GND" H 3550 1400 50  0000 C CNN
F 2 "" H 3550 1550 50  0000 C CNN
F 3 "" H 3550 1550 50  0000 C CNN
	1    3550 1550
	-1   0    0    1   
$EndComp
$Comp
L SCUBE40 P1
U 1 1 577A98F2
P 2150 4000
F 0 "P1" H 2200 4450 60  0000 C CNN
F 1 "SCUBE40" H 2200 4350 60  0000 C CNN
F 2 "scube:scube40" H 2050 3850 60  0001 C CNN
F 3 "" H 2050 3850 60  0000 C CNN
	1    2150 4000
	-1   0    0    -1  
$EndComp
NoConn ~ 2600 4500
NoConn ~ 2600 4600
NoConn ~ 2600 4200
NoConn ~ 2600 4100
$Comp
L GND #PWR010
U 1 1 577A9DAF
P 2850 4000
F 0 "#PWR010" H 2850 3750 50  0001 C CNN
F 1 "GND" H 2850 3850 50  0000 C CNN
F 2 "" H 2850 4000 50  0000 C CNN
F 3 "" H 2850 4000 50  0000 C CNN
	1    2850 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 4000 2600 4000
Wire Wire Line
	8300 3050 8800 3050
Wire Wire Line
	3550 1850 3550 1550
Wire Wire Line
	3850 1850 3850 2350
Wire Wire Line
	3850 2250 3550 2250
Wire Wire Line
	4150 2250 4150 2400
Wire Wire Line
	4150 2400 4450 2400
Wire Wire Line
	4450 2400 4450 2250
Connection ~ 4300 2400
Wire Wire Line
	4150 2050 4150 1950
Wire Wire Line
	4150 1950 4450 1950
Wire Wire Line
	4450 1950 4450 2050
Wire Wire Line
	3850 1850 4900 1850
Wire Wire Line
	4300 1850 4300 1950
Connection ~ 4300 1950
Connection ~ 3850 2250
Wire Wire Line
	4900 1850 4900 2050
Wire Wire Line
	4900 2050 5000 2050
Connection ~ 4300 1850
Wire Wire Line
	5000 1900 4900 1900
Connection ~ 4900 1900
Wire Wire Line
	6300 1900 7950 1900
$Comp
L C_Small C12
U 1 1 577ABC39
P 7550 2200
F 0 "C12" H 7560 2270 50  0000 L CNN
F 1 "10 uF" H 7560 2120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7550 2200 50  0001 C CNN
F 3 "" H 7550 2200 50  0000 C CNN
	1    7550 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 577ABC3F
P 7400 2600
F 0 "#PWR011" H 7400 2350 50  0001 C CNN
F 1 "GND" H 7400 2450 50  0000 C CNN
F 2 "" H 7400 2600 50  0000 C CNN
F 3 "" H 7400 2600 50  0000 C CNN
	1    7400 2600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C10
U 1 1 577ABC45
P 7250 2200
F 0 "C10" H 7260 2270 50  0000 L CNN
F 1 "10 uF" H 7260 2120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7250 2200 50  0001 C CNN
F 3 "" H 7250 2200 50  0000 C CNN
	1    7250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2300 7250 2450
Wire Wire Line
	7250 2450 7550 2450
Wire Wire Line
	7550 2450 7550 2300
Connection ~ 7400 2450
Wire Wire Line
	7250 2100 7250 2000
Wire Wire Line
	7250 2000 7550 2000
Wire Wire Line
	7550 2000 7550 2100
Wire Wire Line
	7400 1900 7400 2000
Connection ~ 7400 2000
Wire Wire Line
	8800 3050 8800 1450
Wire Wire Line
	8800 1450 3650 1450
Wire Wire Line
	3650 1450 3650 1950
Wire Wire Line
	7950 3150 9000 3150
Wire Wire Line
	7950 4250 8000 4250
Wire Wire Line
	7950 3650 7950 4950
Wire Wire Line
	8000 3900 7950 3900
Connection ~ 7950 3900
Connection ~ 7950 4250
$Comp
L CP_Small C16
U 1 1 577AC69D
P 8100 3900
F 0 "C16" V 8000 3900 39  0000 L CNN
F 1 "100 nF" V 8200 3850 31  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8100 3900 50  0001 C CNN
F 3 "" H 8100 3900 50  0000 C CNN
	1    8100 3900
	0    -1   1    0   
$EndComp
$Comp
L ZENERsmall D2
U 1 1 577AC6A3
P 8100 4250
F 0 "D2" H 8100 4350 50  0000 C CNN
F 1 "ZD +5.6V" H 8100 4150 31  0000 C CNN
F 2 "scube:SOT-23_Handsoldering-Swapped_Pads" H 8100 4250 50  0001 C CNN
F 3 "" H 8100 4250 50  0000 C CNN
	1    8100 4250
	1    0    0    1   
$EndComp
$Comp
L R_Small R6
U 1 1 577AC6A9
P 8450 4250
F 0 "R6" V 8600 4250 50  0000 L CNN
F 1 "1k Ohm" V 8550 4100 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8450 4250 50  0001 C CNN
F 3 "" H 8450 4250 50  0000 C CNN
	1    8450 4250
	0    -1   -1   0   
$EndComp
$Comp
L CP_Small C18
U 1 1 577AC6AF
P 8450 4450
F 0 "C18" V 8550 4450 39  0000 L CNN
F 1 "47 nF" V 8550 4300 31  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8450 4450 50  0001 C CNN
F 3 "" H 8450 4450 50  0000 C CNN
	1    8450 4450
	0    -1   1    0   
$EndComp
$Comp
L THYRISTOR T2
U 1 1 577AC6B5
P 3550 3800
F 0 "T2" H 3550 3900 50  0000 C CNN
F 1 "T" H 3550 3700 31  0000 C CNN
F 2 "scube:SOT-223-KAG" H 3550 3800 50  0001 C CNN
F 3 "" H 3550 3800 50  0000 C CNN
	1    3550 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4250 8350 4250
Wire Wire Line
	8300 4250 8300 4800
Connection ~ 8300 4250
Wire Wire Line
	8350 4450 8300 4450
Connection ~ 8300 4450
Wire Wire Line
	8600 3850 8600 4450
Wire Wire Line
	8600 4250 8550 4250
Wire Wire Line
	8600 4450 8550 4450
Connection ~ 8600 4450
Connection ~ 8600 4250
$Comp
L MCP16311/2 U2
U 1 1 577AC6C9
P 5350 3900
F 0 "U2" H 5500 3700 39  0000 C CNN
F 1 "MCP16311/2" H 5100 4300 39  0000 C CNN
F 2 "SCUBE:MSOP-8_3x3mm_Pitch0.65mm_thinpads" H 5350 3900 60  0001 C CNN
F 3 "" H 5350 3900 60  0000 C CNN
	1    5350 3900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 577AC6CF
P 4450 3900
F 0 "C4" H 4460 3970 50  0000 L CNN
F 1 "10 uF" H 4460 3820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4450 3900 50  0001 C CNN
F 3 "" H 4450 3900 50  0000 C CNN
	1    4450 3900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 577AC6D5
P 4850 4150
F 0 "C6" H 4860 4220 50  0000 L CNN
F 1 "1 uF" H 4860 4070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4850 4150 50  0001 C CNN
F 3 "" H 4850 4150 50  0000 C CNN
	1    4850 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3950 4850 3950
$Comp
L GND #PWR012
U 1 1 577AC6DD
P 5350 4350
F 0 "#PWR012" H 5350 4100 50  0001 C CNN
F 1 "GND" H 5350 4200 50  0000 C CNN
F 2 "" H 5350 4350 50  0000 C CNN
F 3 "" H 5350 4350 50  0000 C CNN
	1    5350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4200 5350 4350
$Comp
L GND #PWR013
U 1 1 577AC6E4
P 4850 4350
F 0 "#PWR013" H 4850 4100 50  0001 C CNN
F 1 "GND" H 4850 4200 50  0000 C CNN
F 2 "" H 4850 4350 50  0000 C CNN
F 3 "" H 4850 4350 50  0000 C CNN
	1    4850 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 577AC6EB
P 4300 4350
F 0 "#PWR014" H 4300 4100 50  0001 C CNN
F 1 "GND" H 4300 4200 50  0000 C CNN
F 2 "" H 4300 4350 50  0000 C CNN
F 3 "" H 4300 4350 50  0000 C CNN
	1    4300 4350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 577AC6F1
P 6600 4100
F 0 "R4" H 6650 4150 50  0000 L CNN
F 1 "10 kOhm" H 6650 4050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6600 4100 50  0001 C CNN
F 3 "" H 6600 4100 50  0000 C CNN
	1    6600 4100
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 577AC6F7
P 6600 3800
F 0 "R3" H 6650 3850 50  0000 L CNN
F 1 "52.3 kOhm" H 6650 3750 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6600 3800 50  0001 C CNN
F 3 "" H 6600 3800 50  0000 C CNN
	1    6600 3800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 577AC6FD
P 5900 3400
F 0 "C8" H 5910 3470 50  0000 L CNN
F 1 "100 nF" H 5910 3320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5900 3400 50  0001 C CNN
F 3 "" H 5900 3400 50  0000 C CNN
	1    5900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3650 6100 3650
Wire Wire Line
	5900 3650 5900 3500
Wire Wire Line
	5350 3300 5350 3400
$Comp
L L_Small L2
U 1 1 577AC707
P 6200 3650
F 0 "L2" V 6300 3550 50  0000 L CNN
F 1 "22 uH" V 6150 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6200 3650 50  0001 C CNN
F 3 "" H 6200 3650 50  0000 C CNN
	1    6200 3650
	0    -1   -1   0   
$EndComp
Connection ~ 5900 3650
Wire Wire Line
	6600 3650 6600 3700
Wire Wire Line
	6600 3900 6600 4000
Wire Wire Line
	5700 3950 6600 3950
Connection ~ 6600 3950
$Comp
L GND #PWR015
U 1 1 577AC713
P 6600 4350
F 0 "#PWR015" H 6600 4100 50  0001 C CNN
F 1 "GND" H 6600 4200 50  0000 C CNN
F 2 "" H 6600 4350 50  0000 C CNN
F 3 "" H 6600 4350 50  0000 C CNN
	1    6600 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4350 6600 4200
Connection ~ 6600 3650
$Comp
L F_Small F2
U 1 1 577AC71B
P 3850 4200
F 0 "F2" H 3810 4260 50  0000 L CNN
F 1 "Fuse 1.5A" H 3700 4100 47  0000 L CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" H 3850 4200 50  0001 C CNN
F 3 "" H 3850 4200 50  0000 C CNN
	1    3850 4200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 577AC721
P 8600 3850
F 0 "#PWR016" H 8600 3600 50  0001 C CNN
F 1 "GND" H 8600 3700 50  0000 C CNN
F 2 "" H 8600 3850 50  0000 C CNN
F 3 "" H 8600 3850 50  0000 C CNN
	1    8600 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 3300 5900 3300
Wire Wire Line
	8200 3900 8600 3900
Connection ~ 8600 3900
$Comp
L C_Small C2
U 1 1 577AC72A
P 4150 3900
F 0 "C2" H 4160 3970 50  0000 L CNN
F 1 "10 uF" H 4160 3820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4150 3900 50  0001 C CNN
F 3 "" H 4150 3900 50  0000 C CNN
	1    4150 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 577AC730
P 5850 4350
F 0 "#PWR017" H 5850 4100 50  0001 C CNN
F 1 "GND" H 5850 4200 50  0000 C CNN
F 2 "" H 5850 4350 50  0000 C CNN
F 3 "" H 5850 4350 50  0000 C CNN
	1    5850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3800 5700 3800
$Comp
L GND #PWR018
U 1 1 577AC737
P 3550 3300
F 0 "#PWR018" H 3550 3050 50  0001 C CNN
F 1 "GND" H 3550 3150 50  0000 C CNN
F 2 "" H 3550 3300 50  0000 C CNN
F 3 "" H 3550 3300 50  0000 C CNN
	1    3550 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 4800 8800 4800
Wire Wire Line
	3550 3600 3550 3300
Wire Wire Line
	3850 3600 3850 4100
Wire Wire Line
	3850 4000 3550 4000
Wire Wire Line
	4150 4000 4150 4150
Wire Wire Line
	4150 4150 4450 4150
Wire Wire Line
	4450 4150 4450 4000
Connection ~ 4300 4150
Wire Wire Line
	4150 3800 4150 3700
Wire Wire Line
	4150 3700 4450 3700
Wire Wire Line
	4450 3700 4450 3800
Wire Wire Line
	3850 3600 4900 3600
Wire Wire Line
	4300 3600 4300 3700
Connection ~ 4300 3700
Connection ~ 3850 4000
Wire Wire Line
	4900 3600 4900 3800
Wire Wire Line
	4900 3800 5000 3800
Connection ~ 4300 3600
Wire Wire Line
	5000 3650 4900 3650
Connection ~ 4900 3650
Wire Wire Line
	6300 3650 7950 3650
$Comp
L C_Small C13
U 1 1 577AC759
P 7550 3950
F 0 "C13" H 7560 4020 50  0000 L CNN
F 1 "10 uF" H 7560 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7550 3950 50  0001 C CNN
F 3 "" H 7550 3950 50  0000 C CNN
	1    7550 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 577AC75F
P 7400 4350
F 0 "#PWR019" H 7400 4100 50  0001 C CNN
F 1 "GND" H 7400 4200 50  0000 C CNN
F 2 "" H 7400 4350 50  0000 C CNN
F 3 "" H 7400 4350 50  0000 C CNN
	1    7400 4350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 577AC765
P 7250 3950
F 0 "C11" H 7260 4020 50  0000 L CNN
F 1 "10 uF" H 7260 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7250 3950 50  0001 C CNN
F 3 "" H 7250 3950 50  0000 C CNN
	1    7250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4050 7250 4200
Wire Wire Line
	7250 4200 7550 4200
Wire Wire Line
	7550 4200 7550 4050
Connection ~ 7400 4200
Wire Wire Line
	7250 3850 7250 3750
Wire Wire Line
	7250 3750 7550 3750
Wire Wire Line
	7550 3750 7550 3850
Wire Wire Line
	7400 3650 7400 3750
Connection ~ 7400 3750
Wire Wire Line
	8800 4800 8800 3200
Wire Wire Line
	8800 3200 3650 3200
Wire Wire Line
	3650 3200 3650 3700
Wire Wire Line
	2600 3900 2600 2850
Wire Wire Line
	2600 2850 3850 2850
Wire Wire Line
	3850 2850 3850 2550
Wire Wire Line
	3850 4300 3850 4450
Wire Wire Line
	3850 4450 3300 4450
Wire Wire Line
	3300 4450 3300 2850
Connection ~ 3300 2850
Wire Wire Line
	7500 4950 8900 4950
Connection ~ 7950 4950
NoConn ~ 7500 5050
NoConn ~ 6600 4950
$Comp
L CP1_Small C9
U 1 1 577AD0B0
P 5900 5150
F 0 "C9" H 5910 5220 50  0000 L CNN
F 1 "150 uF" H 5910 5070 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeC_EIA-6032_HandSoldering" H 5900 5150 50  0001 C CNN
F 3 "" H 5900 5150 50  0000 C CNN
	1    5900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5050 5900 5050
Wire Wire Line
	6600 5250 5900 5250
$Comp
L GND #PWR020
U 1 1 577AD303
P 6400 5350
F 0 "#PWR020" H 6400 5100 50  0001 C CNN
F 1 "GND" H 6400 5200 50  0000 C CNN
F 2 "" H 6400 5350 50  0000 C CNN
F 3 "" H 6400 5350 50  0000 C CNN
	1    6400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5150 6400 5150
Wire Wire Line
	6400 5150 6400 5350
Wire Wire Line
	7500 5250 8800 5250
Wire Wire Line
	7600 5250 7600 5450
Wire Wire Line
	7500 5150 7900 5150
Connection ~ 7600 5250
Wire Wire Line
	7600 5850 7600 5650
Wire Wire Line
	8800 5250 8800 6200
Wire Wire Line
	8800 6200 2800 6200
Wire Wire Line
	2800 6200 2800 4700
Wire Wire Line
	2700 4800 2700 6300
Wire Wire Line
	2700 6300 8900 6300
Wire Wire Line
	8900 6300 8900 4950
Wire Wire Line
	9000 3150 9000 6400
Wire Wire Line
	9000 6400 2600 6400
Wire Wire Line
	2600 6400 2600 4900
Connection ~ 7400 3650
Connection ~ 7400 1900
Wire Wire Line
	4850 2600 4850 2500
Wire Wire Line
	4850 2200 4850 2300
Wire Wire Line
	7400 2450 7400 2600
Wire Wire Line
	4300 2400 4300 2600
Wire Wire Line
	5850 2050 5850 2600
Wire Wire Line
	4850 4350 4850 4250
Wire Wire Line
	4850 3950 4850 4050
Wire Wire Line
	4300 4150 4300 4350
Wire Wire Line
	7400 4350 7400 4200
Wire Wire Line
	5850 3800 5850 4350
$EndSCHEMATC
