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
LIBS:cpu2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L THN_30-2415 U10
U 1 1 58D7FCA5
P 6800 4350
F 0 "U10" H 6800 4650 60  0000 C CNN
F 1 "THN_30-2415" H 6800 4050 60  0000 C CNN
F 2 "SCUBE:THN_30-2415" H 6800 4300 60  0001 C CNN
F 3 "" H 6800 4300 60  0000 C CNN
	1    6800 4350
	1    0    0    -1  
$EndComp
$Comp
L RSO-2412D-Single U8
U 1 1 58D7FCC5
P 6600 1100
F 0 "U8" H 6750 450 60  0000 C CNN
F 1 "RSO-243.3" H 6700 1400 60  0000 C CNN
F 2 "SCUBE:RSO-2412D_v2" H 6600 1100 60  0001 C CNN
F 3 "" H 6600 1100 60  0000 C CNN
	1    6600 1100
	0    -1   -1   0   
$EndComp
$Comp
L RSO-2412D-Dual U9
U 1 1 58D7FD3C
P 6600 2600
F 0 "U9" H 6750 1950 60  0000 C CNN
F 1 "RSO-2405D" H 6700 2900 60  0000 C CNN
F 2 "SCUBE:RSO-2412D_v2" H 6600 2600 60  0001 C CNN
F 3 "" H 6600 2600 60  0000 C CNN
	1    6600 2600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X04 P15
U 1 1 58D809C3
P 2550 4300
F 0 "P15" H 2550 4550 50  0000 C CNN
F 1 "CONN_02X04" H 2550 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04" H 2550 3100 50  0001 C CNN
F 3 "" H 2550 3100 50  0000 C CNN
	1    2550 4300
	1    0    0    -1  
$EndComp
$Comp
L Polyfuse_Small F1
U 1 1 58D80A2E
P 3550 4150
F 0 "F1" V 3475 4150 50  0000 C CNN
F 1 "Polyfuse_Small" V 3625 4150 50  0000 C CNN
F 2 "" H 3600 3950 50  0001 L CNN
F 3 "" H 3550 4150 50  0001 C CNN
	1    3550 4150
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P14
U 1 1 58D80AB3
P 3550 3750
F 0 "P14" H 3550 3900 50  0000 C CNN
F 1 "FUSE_BYPASS" V 3650 3750 50  0000 C CNN
F 2 "SCUBE:solder_bridge_1mm" H 3550 3750 50  0001 C CNN
F 3 "" H 3550 3750 50  0000 C CNN
	1    3550 3750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR052
U 1 1 58D80E4A
P 2200 4250
F 0 "#PWR052" H 2200 4000 50  0001 C CNN
F 1 "GND" H 2200 4100 50  0000 C CNN
F 2 "" H 2200 4250 50  0000 C CNN
F 3 "" H 2200 4250 50  0000 C CNN
	1    2200 4250
	0    1    1    0   
$EndComp
$Comp
L D_TVS D3
U 1 1 58D8158D
P 3900 4450
F 0 "D3" H 3900 4550 50  0000 C CNN
F 1 "D_TVS" H 3900 4350 50  0000 C CNN
F 2 "" H 3900 4450 50  0001 C CNN
F 3 "" H 3900 4450 50  0000 C CNN
	1    3900 4450
	0    1    1    0   
$EndComp
Text GLabel 5150 4050 1    60   Input ~ 0
VIN
$Comp
L GND #PWR053
U 1 1 58D82129
P 4800 4950
F 0 "#PWR053" H 4800 4700 50  0001 C CNN
F 1 "GND" H 4800 4800 50  0000 C CNN
F 2 "" H 4800 4950 50  0000 C CNN
F 3 "" H 4800 4950 50  0000 C CNN
	1    4800 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 58D82EB1
P 8650 3150
F 0 "#PWR054" H 8650 2900 50  0001 C CNN
F 1 "GND" H 8650 3000 50  0000 C CNN
F 2 "" H 8650 3150 50  0000 C CNN
F 3 "" H 8650 3150 50  0000 C CNN
	1    8650 3150
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C15
U 1 1 58D82F97
P 7400 3000
F 0 "C15" H 7410 3070 50  0000 L CNN
F 1 "10u" H 7410 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7400 3000 50  0001 C CNN
F 3 "" H 7400 3000 50  0000 C CNN
F 4 "KEMET" H 7400 3000 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7400 3000 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7400 3000 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7400 3000 60  0001 C CNN "1st Distrib. Link"
	1    7400 3000
	1    0    0    -1  
$EndComp
Text Notes 6250 3950 0    60   ~ 0
30W\nDoes not need to be isolated\nCould potentially use a TMR 9-2415\nMax current for 2 W EC-20 = 330 mA -> 8 W per motor * 3 = 24 W
$Comp
L Q_NMOS_GDSD Q1
U 1 1 58D85522
P 5300 3100
F 0 "Q1" H 5500 3150 50  0000 L CNN
F 1 "IRLL024NPBF" H 5500 3050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 5500 3200 50  0001 C CNN
F 3 "" H 5300 3100 50  0000 C CNN
	1    5300 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR055
U 1 1 58D85607
P 5400 3400
F 0 "#PWR055" H 5400 3150 50  0001 C CNN
F 1 "GND" H 5400 3250 50  0000 C CNN
F 2 "" H 5400 3400 50  0000 C CNN
F 3 "" H 5400 3400 50  0000 C CNN
	1    5400 3400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 58D85647
P 5200 3350
F 0 "R6" H 5230 3370 50  0000 L CNN
F 1 "1M" H 5230 3310 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5200 3350 50  0001 C CNN
F 3 "" H 5200 3350 50  0000 C CNN
	1    5200 3350
	0    1    1    0   
$EndComp
$Comp
L R_Small R5
U 1 1 58D85735
P 4800 3100
F 0 "R5" H 4830 3120 50  0000 L CNN
F 1 "10k" H 4830 3060 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4800 3100 50  0001 C CNN
F 3 "" H 4800 3100 50  0000 C CNN
	1    4800 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR056
U 1 1 58D85D10
P 6250 4350
F 0 "#PWR056" H 6250 4100 50  0001 C CNN
F 1 "GND" H 6250 4200 50  0000 C CNN
F 2 "" H 6250 4350 50  0000 C CNN
F 3 "" H 6250 4350 50  0000 C CNN
	1    6250 4350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR057
U 1 1 58D85D6A
P 7800 4550
F 0 "#PWR057" H 7800 4300 50  0001 C CNN
F 1 "GND" H 7800 4400 50  0000 C CNN
F 2 "" H 7800 4550 50  0000 C CNN
F 3 "" H 7800 4550 50  0000 C CNN
	1    7800 4550
	0    -1   -1   0   
$EndComp
NoConn ~ 7350 4350
$Comp
L +24V #PWR058
U 1 1 58D85F0F
P 7800 4150
F 0 "#PWR058" H 7800 4000 50  0001 C CNN
F 1 "+24V" H 7800 4290 50  0000 C CNN
F 2 "" H 7800 4150 50  0000 C CNN
F 3 "" H 7800 4150 50  0000 C CNN
	1    7800 4150
	0    1    1    0   
$EndComp
NoConn ~ 6850 2800
$Comp
L C_Small C20
U 1 1 58D87CF0
P 7950 3000
F 0 "C20" H 7960 3070 50  0000 L CNN
F 1 "10u" H 7960 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7950 3000 50  0001 C CNN
F 3 "" H 7950 3000 50  0000 C CNN
F 4 "KEMET" H 7950 3000 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7950 3000 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7950 3000 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7950 3000 60  0001 C CNN "1st Distrib. Link"
	1    7950 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C21
U 1 1 58D87D4F
P 8250 3000
F 0 "C21" H 8260 3070 50  0000 L CNN
F 1 "10u" H 8260 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8250 3000 50  0001 C CNN
F 3 "" H 8250 3000 50  0000 C CNN
F 4 "KEMET" H 8250 3000 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 8250 3000 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 8250 3000 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 8250 3000 60  0001 C CNN "1st Distrib. Link"
	1    8250 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C27
U 1 1 58D87DB1
P 8250 3300
F 0 "C27" H 8260 3370 50  0000 L CNN
F 1 "10u" H 8260 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8250 3300 50  0001 C CNN
F 3 "" H 8250 3300 50  0000 C CNN
F 4 "KEMET" H 8250 3300 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 8250 3300 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 8250 3300 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 8250 3300 60  0001 C CNN "1st Distrib. Link"
	1    8250 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C26
U 1 1 58D87E1C
P 7950 3300
F 0 "C26" H 7960 3370 50  0000 L CNN
F 1 "10u" H 7960 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7950 3300 50  0001 C CNN
F 3 "" H 7950 3300 50  0000 C CNN
F 4 "KEMET" H 7950 3300 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7950 3300 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7950 3300 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7950 3300 60  0001 C CNN "1st Distrib. Link"
	1    7950 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C24
U 1 1 58D87E82
P 7400 3300
F 0 "C24" H 7410 3370 50  0000 L CNN
F 1 "10u" H 7410 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7400 3300 50  0001 C CNN
F 3 "" H 7400 3300 50  0000 C CNN
F 4 "KEMET" H 7400 3300 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7400 3300 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7400 3300 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7400 3300 60  0001 C CNN "1st Distrib. Link"
	1    7400 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C16
U 1 1 58D88051
P 7150 3000
F 0 "C16" H 7160 3070 50  0000 L CNN
F 1 "10u" H 7160 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7150 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0000 C CNN
F 4 "KEMET" H 7150 3000 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7150 3000 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7150 3000 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7150 3000 60  0001 C CNN "1st Distrib. Link"
	1    7150 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C23
U 1 1 58D880B9
P 7150 3300
F 0 "C23" H 7160 3370 50  0000 L CNN
F 1 "10u" H 7160 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7150 3300 50  0001 C CNN
F 3 "" H 7150 3300 50  0000 C CNN
F 4 "KEMET" H 7150 3300 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7150 3300 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7150 3300 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7150 3300 60  0001 C CNN "1st Distrib. Link"
	1    7150 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C18
U 1 1 58D8842E
P 7700 3000
F 0 "C18" H 7710 3070 50  0000 L CNN
F 1 "10u" H 7710 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7700 3000 50  0001 C CNN
F 3 "" H 7700 3000 50  0000 C CNN
F 4 "KEMET" H 7700 3000 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7700 3000 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7700 3000 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7700 3000 60  0001 C CNN "1st Distrib. Link"
	1    7700 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C25
U 1 1 58D88512
P 7700 3300
F 0 "C25" H 7710 3370 50  0000 L CNN
F 1 "10u" H 7710 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7700 3300 50  0001 C CNN
F 3 "" H 7700 3300 50  0000 C CNN
F 4 "KEMET" H 7700 3300 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7700 3300 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7700 3300 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7700 3300 60  0001 C CNN "1st Distrib. Link"
	1    7700 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C28
U 1 1 58D88583
P 8500 3300
F 0 "C28" H 8510 3370 50  0000 L CNN
F 1 "10u" H 8510 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8500 3300 50  0001 C CNN
F 3 "" H 8500 3300 50  0000 C CNN
F 4 "KEMET" H 8500 3300 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 8500 3300 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 8500 3300 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 8500 3300 60  0001 C CNN "1st Distrib. Link"
	1    8500 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 58D885FB
P 8500 3000
F 0 "C22" H 8510 3070 50  0000 L CNN
F 1 "10u" H 8510 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8500 3000 50  0001 C CNN
F 3 "" H 8500 3000 50  0000 C CNN
F 4 "KEMET" H 8500 3000 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 8500 3000 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 8500 3000 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 8500 3000 60  0001 C CNN "1st Distrib. Link"
	1    8500 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C31
U 1 1 58D893DF
P 7550 4350
F 0 "C31" H 7560 4420 50  0000 L CNN
F 1 "10u" H 7560 4270 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7550 4350 50  0001 C CNN
F 3 "" H 7550 4350 50  0000 C CNN
F 4 "KEMET" H 7550 4350 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7550 4350 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7550 4350 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7550 4350 60  0001 C CNN "1st Distrib. Link"
	1    7550 4350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C30
U 1 1 58D8946D
P 5050 4450
F 0 "C30" H 5060 4520 50  0000 L CNN
F 1 "10u" H 5060 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5050 4450 50  0001 C CNN
F 3 "" H 5050 4450 50  0000 C CNN
F 4 "KEMET" H 5050 4450 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 5050 4450 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 5050 4450 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 5050 4450 60  0001 C CNN "1st Distrib. Link"
	1    5050 4450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C29
U 1 1 58D89502
P 4350 4450
F 0 "C29" H 4360 4520 50  0000 L CNN
F 1 "10u" H 4360 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 4350 4450 50  0001 C CNN
F 3 "" H 4350 4450 50  0000 C CNN
F 4 "KEMET" H 4350 4450 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 4350 4450 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 4350 4450 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 4350 4450 60  0001 C CNN "1st Distrib. Link"
	1    4350 4450
	1    0    0    -1  
$EndComp
$Comp
L L_Small L4
U 1 1 58D8A5A8
P 7550 2850
F 0 "L4" H 7580 2890 50  0000 L CNN
F 1 "10u" H 7580 2810 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7550 2850 50  0001 C CNN
F 3 "" H 7550 2850 50  0000 C CNN
F 4 "300-63-549" H 7550 2850 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 7550 2850 60  0001 C CNN "1st Distrib. Link"
	1    7550 2850
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L5
U 1 1 58D8A5EF
P 8100 2850
F 0 "L5" H 8130 2890 50  0000 L CNN
F 1 "10u" H 8130 2810 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8100 2850 50  0001 C CNN
F 3 "" H 8100 2850 50  0000 C CNN
F 4 "300-63-549" H 8100 2850 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 8100 2850 60  0001 C CNN "1st Distrib. Link"
	1    8100 2850
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L7
U 1 1 58D8A671
P 7550 3450
F 0 "L7" H 7580 3490 50  0000 L CNN
F 1 "10u" H 7580 3410 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7550 3450 50  0001 C CNN
F 3 "" H 7550 3450 50  0000 C CNN
F 4 "300-63-549" H 7550 3450 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 7550 3450 60  0001 C CNN "1st Distrib. Link"
	1    7550 3450
	0    1    1    0   
$EndComp
$Comp
L L_Small L8
U 1 1 58D8A712
P 8100 3450
F 0 "L8" H 8130 3490 50  0000 L CNN
F 1 "10u" H 8130 3410 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8100 3450 50  0001 C CNN
F 3 "" H 8100 3450 50  0000 C CNN
F 4 "300-63-549" H 8100 3450 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 8100 3450 60  0001 C CNN "1st Distrib. Link"
	1    8100 3450
	0    1    1    0   
$EndComp
Text Notes 7350 2600 0    60   ~ 0
RSO datasheet wants 22u on output, make all stages 20u\nInductor is about the smallest we can get with decent current capability\nfc = 10 kHz, -77 dB @ 100 kHz -> 7 µVp-p\nTODO: double-check with ngspice\nR_load = 5/0.1 = 50 Ohm
NoConn ~ 6650 2800
$Comp
L L_Small L6
U 1 1 58D8C2AB
P 6350 3150
F 0 "L6" H 6380 3190 50  0000 L CNN
F 1 "10u" H 6380 3110 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 6350 3150 50  0001 C CNN
F 3 "" H 6350 3150 50  0000 C CNN
F 4 "300-63-549" H 6350 3150 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 6350 3150 60  0001 C CNN "1st Distrib. Link"
	1    6350 3150
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L10
U 1 1 58D8C674
P 4750 4150
F 0 "L10" H 4780 4190 50  0000 L CNN
F 1 "10u" H 4780 4110 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 4750 4150 50  0001 C CNN
F 3 "" H 4750 4150 50  0000 C CNN
F 4 "300-63-549" H 4750 4150 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 4750 4150 60  0001 C CNN "1st Distrib. Link"
	1    4750 4150
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L9
U 1 1 58D8C8D4
P 4750 3950
F 0 "L9" H 4780 3990 50  0000 L CNN
F 1 "10u" H 4780 3910 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 4750 3950 50  0001 C CNN
F 3 "" H 4750 3950 50  0000 C CNN
F 4 "300-63-549" H 4750 3950 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 4750 3950 60  0001 C CNN "1st Distrib. Link"
	1    4750 3950
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L11
U 1 1 58D8C957
P 4750 4350
F 0 "L11" H 4780 4390 50  0000 L CNN
F 1 "10u" H 4780 4310 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 4750 4350 50  0001 C CNN
F 3 "" H 4750 4350 50  0000 C CNN
F 4 "300-63-549" H 4750 4350 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 4750 4350 60  0001 C CNN "1st Distrib. Link"
	1    4750 4350
	0    -1   -1   0   
$EndComp
Text Notes 3800 5300 0    60   ~ 0
Multiple inductors to handle up to 2.5 A
$Comp
L CONN_01X02 P16
U 1 1 58D8D60E
P 4750 4600
F 0 "P16" H 4750 4750 50  0000 C CNN
F 1 "L_BYPASS" V 4850 4600 50  0000 C CNN
F 2 "SCUBE:solder_bridge_1mm" H 4750 4600 50  0001 C CNN
F 3 "" H 4750 4600 50  0000 C CNN
	1    4750 4600
	0    1    1    0   
$EndComp
$Comp
L L_Small L3
U 1 1 58D8ECA0
P 6300 1650
F 0 "L3" H 6330 1690 50  0000 L CNN
F 1 "10u" H 6330 1610 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 6300 1650 50  0001 C CNN
F 3 "" H 6300 1650 50  0000 C CNN
F 4 "300-63-549" H 6300 1650 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 6300 1650 60  0001 C CNN "1st Distrib. Link"
	1    6300 1650
	0    1    1    0   
$EndComp
$Comp
L C_Small C17
U 1 1 58D8F1C1
P 7150 1550
F 0 "C17" H 7160 1620 50  0000 L CNN
F 1 "10u" H 7160 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7150 1550 50  0001 C CNN
F 3 "" H 7150 1550 50  0000 C CNN
F 4 "KEMET" H 7150 1550 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7150 1550 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7150 1550 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7150 1550 60  0001 C CNN "1st Distrib. Link"
	1    7150 1550
	1    0    0    -1  
$EndComp
$Comp
L L_Small L2
U 1 1 58D8F32B
P 7650 1400
F 0 "L2" H 7680 1440 50  0000 L CNN
F 1 "10u" H 7680 1360 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7650 1400 50  0001 C CNN
F 3 "" H 7650 1400 50  0000 C CNN
F 4 "300-63-549" H 7650 1400 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/drossel-smd-10-uh-850-ma-20-wuerth-elektronik-74479887310a/p/30063549" H 7650 1400 60  0001 C CNN "1st Distrib. Link"
	1    7650 1400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C19
U 1 1 58D8F493
P 7400 1550
F 0 "C19" H 7410 1620 50  0000 L CNN
F 1 "10u" H 7410 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7400 1550 50  0001 C CNN
F 3 "" H 7400 1550 50  0000 C CNN
F 4 "KEMET" H 7400 1550 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7400 1550 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7400 1550 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7400 1550 60  0001 C CNN "1st Distrib. Link"
	1    7400 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C32
U 1 1 58D8F823
P 7850 1550
F 0 "C32" H 7860 1620 50  0000 L CNN
F 1 "10u" H 7860 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7850 1550 50  0001 C CNN
F 3 "" H 7850 1550 50  0000 C CNN
F 4 "KEMET" H 7850 1550 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 7850 1550 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 7850 1550 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 7850 1550 60  0001 C CNN "1st Distrib. Link"
	1    7850 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C33
U 1 1 58D8F8BF
P 8100 1550
F 0 "C33" H 8110 1620 50  0000 L CNN
F 1 "10u" H 8110 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8100 1550 50  0001 C CNN
F 3 "" H 8100 1550 50  0000 C CNN
F 4 "KEMET" H 8100 1550 60  0001 C CNN "Mfg. Name"
F 5 "C1210C106M5RACTU" H 8100 1550 60  0001 C CNN "Mfg. Part Number"
F 6 "300-10-788" H 8100 1550 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-10-uf-50-vdc-1210-kemet-c1210c106m5ractu/p/30010788" H 8100 1550 60  0001 C CNN "1st Distrib. Link"
	1    8100 1550
	1    0    0    -1  
$EndComp
NoConn ~ 7150 1300
NoConn ~ 6850 1300
NoConn ~ 6650 1300
$Comp
L GND #PWR059
U 1 1 58D8FE5B
P 7650 1750
F 0 "#PWR059" H 7650 1500 50  0001 C CNN
F 1 "GND" H 7650 1600 50  0000 C CNN
F 2 "" H 7650 1750 50  0000 C CNN
F 3 "" H 7650 1750 50  0000 C CNN
	1    7650 1750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR060
U 1 1 58D904FF
P 8100 1300
F 0 "#PWR060" H 8100 1150 50  0001 C CNN
F 1 "+3.3V" H 8100 1440 50  0000 C CNN
F 2 "" H 8100 1300 50  0000 C CNN
F 3 "" H 8100 1300 50  0000 C CNN
	1    8100 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR061
U 1 1 58D906C2
P 8500 3500
F 0 "#PWR061" H 8500 3350 50  0001 C CNN
F 1 "+5V" H 8500 3640 50  0000 C CNN
F 2 "" H 8500 3500 50  0000 C CNN
F 3 "" H 8500 3500 50  0000 C CNN
	1    8500 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 4150 3000 4150
Wire Wire Line
	3200 4150 3450 4150
Wire Wire Line
	3500 3950 3500 4000
Wire Wire Line
	3500 4000 3400 4000
Wire Wire Line
	3400 4000 3400 4150
Connection ~ 3400 4150
Wire Wire Line
	3600 3950 3600 4000
Wire Wire Line
	3600 4000 3700 4000
Wire Wire Line
	3700 4000 3700 4150
Connection ~ 3700 4150
Wire Wire Line
	2200 4250 2800 4250
Connection ~ 2300 4250
Connection ~ 2800 4150
Wire Wire Line
	2300 4350 3750 4350
Wire Wire Line
	2300 4450 3450 4450
Wire Wire Line
	3900 4150 3900 4300
Connection ~ 3900 4150
Wire Wire Line
	4350 4150 4350 4350
Connection ~ 4350 4150
Wire Wire Line
	5050 4150 5050 4350
Wire Wire Line
	4850 4150 6250 4150
Connection ~ 5050 4150
Wire Wire Line
	5150 4050 5150 4150
Connection ~ 5150 4150
Wire Wire Line
	3900 4600 3900 4800
Wire Wire Line
	3900 4800 5050 4800
Wire Wire Line
	4800 4800 4800 4950
Connection ~ 4800 4800
Wire Wire Line
	4350 4550 4350 4800
Connection ~ 4350 4800
Wire Wire Line
	5050 4800 5050 4550
Connection ~ 6150 4150
Connection ~ 6150 3150
Wire Wire Line
	7050 2800 7050 3150
Wire Wire Line
	8250 3100 8250 3200
Connection ~ 8250 3150
Wire Wire Line
	7950 3100 7950 3200
Connection ~ 7950 3150
Wire Wire Line
	7400 3100 7400 3200
Connection ~ 7400 3150
Wire Wire Line
	7150 2800 7150 2900
Wire Wire Line
	7150 2850 7450 2850
Wire Wire Line
	7400 2900 7400 2850
Connection ~ 7400 2850
Wire Wire Line
	7650 2850 8000 2850
Wire Wire Line
	7950 2900 7950 2850
Connection ~ 7950 2850
Wire Wire Line
	8200 2850 8500 2850
Wire Wire Line
	8250 2850 8250 2900
Wire Wire Line
	8250 3450 8250 3400
Wire Wire Line
	6950 3450 6950 2800
Wire Wire Line
	7950 3450 7950 3400
Connection ~ 7950 3450
Wire Wire Line
	7400 3450 7400 3400
Connection ~ 7400 3450
Wire Wire Line
	4900 3100 5100 3100
Wire Wire Line
	5400 3300 5400 3400
Wire Wire Line
	5400 3350 5300 3350
Connection ~ 5400 3350
Wire Wire Line
	5100 3350 5050 3350
Wire Wire Line
	5050 3350 5050 3100
Connection ~ 5050 3100
Wire Wire Line
	4550 3100 4700 3100
Wire Wire Line
	6250 4550 5900 4550
Wire Wire Line
	5900 4550 5900 3650
Wire Wire Line
	5900 3650 4650 3650
Wire Wire Line
	4650 3650 4650 3100
Connection ~ 4650 3100
Wire Wire Line
	7350 4150 7800 4150
Wire Wire Line
	7350 4550 7800 4550
Wire Wire Line
	7550 4250 7550 4150
Connection ~ 7550 4150
Wire Wire Line
	7550 4450 7550 4550
Connection ~ 7550 4550
Wire Wire Line
	6450 2850 6450 2800
Wire Wire Line
	5400 2850 6450 2850
Wire Wire Line
	5400 2850 5400 2900
Wire Wire Line
	5500 2900 5500 2850
Connection ~ 5500 2850
Connection ~ 7150 2850
Wire Wire Line
	7150 3100 7150 3200
Connection ~ 7150 3150
Wire Wire Line
	7150 3400 7150 3450
Connection ~ 7150 3450
Wire Wire Line
	8500 3400 8500 3500
Connection ~ 8250 3450
Wire Wire Line
	7700 3400 7700 3450
Connection ~ 7700 3450
Wire Wire Line
	7700 3100 7700 3200
Connection ~ 7700 3150
Wire Wire Line
	8500 3100 8500 3200
Connection ~ 8500 3150
Wire Wire Line
	7050 3150 8650 3150
Wire Wire Line
	7700 2850 7700 2900
Connection ~ 7700 2850
Wire Wire Line
	8500 2800 8500 2900
Connection ~ 8250 2850
Wire Wire Line
	6550 2800 6550 3150
Wire Wire Line
	8200 3450 8500 3450
Wire Wire Line
	7650 3450 8000 3450
Wire Wire Line
	6950 3450 7450 3450
Wire Wire Line
	6150 3150 6250 3150
Wire Wire Line
	6550 3150 6450 3150
Wire Wire Line
	3650 4150 4650 4150
Wire Wire Line
	4900 4350 4850 4350
Wire Wire Line
	4900 3950 4900 4400
Connection ~ 4900 4150
Wire Wire Line
	4850 3950 4900 3950
Wire Wire Line
	4650 3950 4600 3950
Wire Wire Line
	4600 3950 4600 4400
Connection ~ 4600 4150
Wire Wire Line
	4600 4350 4650 4350
Wire Wire Line
	4900 4400 4800 4400
Connection ~ 4900 4350
Wire Wire Line
	4600 4400 4700 4400
Connection ~ 4600 4350
Wire Wire Line
	6950 1300 6950 1400
Wire Wire Line
	6950 1400 7550 1400
Wire Wire Line
	7400 1300 7400 1450
Connection ~ 7400 1400
Wire Wire Line
	7150 1450 7150 1400
Connection ~ 7150 1400
Wire Wire Line
	7750 1400 8100 1400
Wire Wire Line
	8100 1300 8100 1450
Wire Wire Line
	7850 1450 7850 1400
Connection ~ 7850 1400
Wire Wire Line
	8100 1700 8100 1650
Wire Wire Line
	7050 1700 8100 1700
Wire Wire Line
	7050 1700 7050 1300
Wire Wire Line
	7150 1650 7150 1700
Connection ~ 7150 1700
Wire Wire Line
	7400 1650 7400 1700
Connection ~ 7400 1700
Wire Wire Line
	7850 1650 7850 1700
Connection ~ 7850 1700
Wire Wire Line
	7650 1750 7650 1700
Connection ~ 7650 1700
Connection ~ 8100 1400
$Comp
L -5V #PWR58
U 1 1 58D90B55
P 8500 2800
F 0 "#PWR58" H 8500 2900 50  0001 C CNN
F 1 "-5V" H 8500 2950 50  0000 C CNN
F 2 "" H 8500 2800 50  0000 C CNN
F 3 "" H 8500 2800 50  0000 C CNN
	1    8500 2800
	1    0    0    -1  
$EndComp
Connection ~ 8500 2850
Connection ~ 8500 3450
$Comp
L GND #PWR062
U 1 1 58D9158A
P 6450 1300
F 0 "#PWR062" H 6450 1050 50  0001 C CNN
F 1 "GND" H 6450 1150 50  0000 C CNN
F 2 "" H 6450 1300 50  0000 C CNN
F 3 "" H 6450 1300 50  0000 C CNN
	1    6450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1300 6550 1650
Wire Wire Line
	6550 1650 6400 1650
Wire Wire Line
	6150 1650 6200 1650
$Comp
L MAX485 U11
U 1 1 58D92495
P 2100 6150
F 0 "U11" H 2100 6400 60  0000 C CNN
F 1 "MAX485" H 2100 5900 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2100 6150 60  0001 C CNN
F 3 "" H 2100 6150 60  0000 C CNN
	1    2100 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4350 3750 6300
Wire Wire Line
	3050 6200 2550 6200
Connection ~ 2800 4350
$Comp
L R_Small R8
U 1 1 58D9277F
P 3200 6150
F 0 "R8" H 3230 6170 50  0000 L CNN
F 1 "120" H 3230 6110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3200 6150 50  0001 C CNN
F 3 "" H 3200 6150 50  0000 C CNN
	1    3200 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6100 3050 6100
Connection ~ 2800 4450
$Comp
L GND #PWR063
U 1 1 58D92EFA
P 2700 6350
F 0 "#PWR063" H 2700 6100 50  0001 C CNN
F 1 "GND" H 2700 6200 50  0000 C CNN
F 2 "" H 2700 6350 50  0000 C CNN
F 3 "" H 2700 6350 50  0000 C CNN
	1    2700 6350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR064
U 1 1 58D92F66
P 2700 5650
F 0 "#PWR064" H 2700 5500 50  0001 C CNN
F 1 "+3.3V" H 2700 5790 50  0000 C CNN
F 2 "" H 2700 5650 50  0000 C CNN
F 3 "" H 2700 5650 50  0000 C CNN
	1    2700 5650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C35
U 1 1 58D930E6
P 2700 5900
F 0 "C35" H 2710 5970 50  0000 L CNN
F 1 "100n" H 2710 5820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2700 5900 50  0001 C CNN
F 3 "" H 2700 5900 50  0000 C CNN
	1    2700 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5700 2550 5700
Wire Wire Line
	2550 5700 2550 6000
Wire Wire Line
	2700 5650 2700 5800
Connection ~ 2700 5700
Wire Wire Line
	2700 6000 2700 6350
Connection ~ 2700 6300
Wire Wire Line
	1650 6100 1600 6100
Wire Wire Line
	1600 6100 1600 6200
Wire Wire Line
	1600 6200 1650 6200
Wire Wire Line
	1500 6150 1600 6150
Connection ~ 1600 6150
Wire Wire Line
	1500 6000 1650 6000
Wire Wire Line
	1500 6300 1650 6300
Text HLabel 1500 6000 0    60   Input ~ 0
RS485_RX
Text HLabel 1500 6150 0    60   Input ~ 0
RS485_DE
Text HLabel 1500 6300 0    60   Input ~ 0
RS485_TX
Text HLabel 4550 3100 0    60   Input ~ 0
EN_24V_5V
$Comp
L D_Schottky_Small D2
U 1 1 58D8E7DF
P 3100 4150
F 0 "D2" H 3050 4230 50  0000 L CNN
F 1 "SMS240" H 2950 4050 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 3100 4150 50  0001 C CNN
F 3 "" V 3100 4150 50  0000 C CNN
F 4 "170-02-496" H 3100 4150 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/schottkydiod-40-melf-diotec-sms240/p/17002496" H 3100 4150 60  0001 C CNN "1st Distrib. Link"
	1    3100 4150
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 58D9A0B7
P 7450 750
F 0 "P3" H 7450 900 50  0000 C CNN
F 1 "PWR" V 7550 750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01" H 7450 750 50  0001 C CNN
F 3 "" H 7450 750 50  0000 C CNN
	1    7450 750 
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR065
U 1 1 58D9A0BE
P 7550 1000
F 0 "#PWR065" H 7550 750 50  0001 C CNN
F 1 "GND" H 7550 850 50  0000 C CNN
F 2 "" H 7550 1000 50  0000 C CNN
F 3 "" H 7550 1000 50  0000 C CNN
	1    7550 1000
	0    -1   -1   0   
$EndComp
$Comp
L D_Schottky_Small D1
U 1 1 58D9A0C6
P 7400 1200
F 0 "D1" H 7350 1280 50  0000 L CNN
F 1 "SMS240" H 7250 1100 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 7400 1200 50  0001 C CNN
F 3 "" V 7400 1200 50  0000 C CNN
F 4 "170-02-496" H 7400 1200 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/schottkydiod-40-melf-diotec-sms240/p/17002496" H 7400 1200 60  0001 C CNN "1st Distrib. Link"
	1    7400 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 950  7400 1100
Wire Wire Line
	7550 1000 7500 1000
Wire Wire Line
	7500 1000 7500 950 
Wire Wire Line
	6150 1650 6150 4150
$Comp
L R_Small R34
U 1 1 58DA910C
P 3200 5850
F 0 "R34" H 3230 5870 50  0000 L CNN
F 1 "350" H 3230 5810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3200 5850 50  0001 C CNN
F 3 "" H 3200 5850 50  0000 C CNN
	1    3200 5850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R35
U 1 1 58DA9218
P 3200 6450
F 0 "R35" H 3230 6470 50  0000 L CNN
F 1 "350" H 3230 6410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3200 6450 50  0001 C CNN
F 3 "" H 3200 6450 50  0000 C CNN
	1    3200 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 6200 3050 6300
Wire Wire Line
	3050 6300 3750 6300
Wire Wire Line
	3450 4450 3450 6000
Wire Wire Line
	3450 6000 3050 6000
Wire Wire Line
	3050 6000 3050 6100
Wire Wire Line
	3200 5950 3200 6050
Connection ~ 3200 6000
Wire Wire Line
	3200 6250 3200 6350
Connection ~ 3200 6300
$Comp
L +3.3V #PWR066
U 1 1 58DA99AF
P 3200 5750
F 0 "#PWR066" H 3200 5600 50  0001 C CNN
F 1 "+3.3V" H 3200 5890 50  0000 C CNN
F 2 "" H 3200 5750 50  0000 C CNN
F 3 "" H 3200 5750 50  0000 C CNN
	1    3200 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR067
U 1 1 58DA9A23
P 3200 6550
F 0 "#PWR067" H 3200 6300 50  0001 C CNN
F 1 "GND" H 3200 6400 50  0000 C CNN
F 2 "" H 3200 6550 50  0000 C CNN
F 3 "" H 3200 6550 50  0000 C CNN
	1    3200 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 6300 2550 6300
Text Notes 2700 7200 0    60   ~ 0
Fail-safe biasing\nMay not be needed if the lander puts the bus in a known idle state\nOnly populate R8 in that case\n3.3 * (120||120) / (350 + 350 + 120||120) = 3.3*60/760 = 260 mV > 200 mV
$EndSCHEMATC
