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
LIBS:cpu4-cache
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
L RSO-2412D-Dual U9
U 1 1 58D7FD3C
P 6600 2600
F 0 "U9" H 6750 1950 60  0000 C CNN
F 1 "TMR 6-2421WI" V 6950 2400 60  0000 C CNN
F 2 "SCUBE:RSO-2412D_v2" H 6600 2600 60  0001 C CNN
F 3 "" H 6600 2600 60  0000 C CNN
F 4 "945-2868-ND" H 6600 2600 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.digikey.se/product-detail/en/recom-power/RS-2405DZ/945-2868-ND/2321312" H 6600 2600 60  0001 C CNN "1st Distrib. Link"
	1    6600 2600
	0    -1   -1   0   
$EndComp
$Comp
L Polyfuse_Small F1
U 1 1 58D80A2E
P 3550 4150
F 0 "F1" V 3475 4150 50  0000 C CNN
F 1 "Polyfuse_Small" V 3625 4150 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" H 3600 3950 50  0001 L CNN
F 3 "" H 3550 4150 50  0001 C CNN
F 4 "Bel Fuse Inc." H 3550 4150 60  0001 C CNN "Mfg. Name"
F 5 "0ZCF0100AF2A" H 3550 4150 60  0001 C CNN "Mfg. Part Number"
F 6 "530-0ZCF0100AF2A" H 3550 4150 60  0001 C CNN "Mouser PN"
F 7 "507-2070-1-ND" H 3550 4150 60  0001 C CNN "Digikey PN"
F 8 "https://www.digikey.se/product-detail/en/bel-fuse-inc/0ZCF0100AF2A/507-2070-1-ND/6210547" H 3550 4150 60  0001 C CNN "Digikey Link"
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
F 4 "dnf" V 3550 3550 60  0000 C CNN "fit_field"
	1    3550 3750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR050
U 1 1 58D80E4A
P 800 4050
F 0 "#PWR050" H 800 3800 50  0001 C CNN
F 1 "GND" H 800 3900 50  0000 C CNN
F 2 "" H 800 4050 50  0000 C CNN
F 3 "" H 800 4050 50  0000 C CNN
	1    800  4050
	0    1    1    0   
$EndComp
$Comp
L D_TVS D3
U 1 1 58D8158D
P 4000 4450
F 0 "D3" H 4000 4550 50  0000 C CNN
F 1 "40V" H 4000 4350 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 4000 4450 50  0001 C CNN
F 3 "" H 4000 4450 50  0000 C CNN
F 4 "Würth" H 4000 4450 60  0001 C CNN "Mfg. Name"
F 5 "824501401" H 4000 4450 60  0001 C CNN "Mfg. Part Number"
F 6 "300-59-556" H 4000 4450 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/transientskyddsdiod-40-400-sma-wuerth-elektronik-824501401/p/30059556" H 4000 4450 60  0001 C CNN "Elfa Link"
F 8 "2536561" H 4000 4450 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/wurth-elektronik/824501401/tvs-diod-400w-40v-dbl-rikt-do/dp/2536561" H 4000 4450 60  0001 C CNN "Farnell Link"
F 10 "710-824501401" H 4000 4450 60  0001 C CNN "Mouser PN"
F 11 "732-9960-1-ND" H 4000 4450 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/wurth-electronics-inc/824501401/732-9960-1-ND/5871113" H 4000 4450 60  0001 C CNN "Digikey Link"
	1    4000 4450
	0    1    1    0   
$EndComp
Text GLabel 5150 4050 1    60   Input ~ 0
VIN
$Comp
L GND #PWR051
U 1 1 58D82129
P 4800 4950
F 0 "#PWR051" H 4800 4700 50  0001 C CNN
F 1 "GND" H 4800 4800 50  0000 C CNN
F 2 "" H 4800 4950 50  0000 C CNN
F 3 "" H 4800 4950 50  0000 C CNN
	1    4800 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR052
U 1 1 58D82EB1
P 8650 3150
F 0 "#PWR052" H 8650 2900 50  0001 C CNN
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
F 1 "10u10V" H 7410 2920 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7400 3000 50  0001 C CNN
F 3 "" H 7400 3000 50  0000 C CNN
F 4 "KEMET" H 7400 3000 60  0001 C CNN "Mfg. Name"
F 5 "C1210X106K8NACAUTO" H 7400 3000 60  0001 C CNN "Mfg. Part Number"
F 6 "80-C1210X106K8NAUTO" H 7400 3000 60  0001 C CNN "Mouser PN"
F 7 "399-17273-1-ND" H 7400 3000 60  0001 C CNN "Digikey PN"
F 8 "https://www.digikey.se/product-detail/en/kemet/C1210X106K8NACAUTO/399-17273-1-ND/8602584" H 7400 3000 60  0001 C CNN "Digikey Link"
	1    7400 3000
	1    0    0    -1  
$EndComp
Text Notes 6250 3950 0    60   ~ 0
30W\nDoes not need to be isolated\nCould potentially use a TMR 9-2415 or TSR 2-24150\nMax current for 2 W EC-20 = 330 mA -> 8 W per motor * 3 = 24 W
$Comp
L Q_NMOS_GDSD Q1
U 1 1 58D85522
P 5300 3100
F 0 "Q1" H 5500 3150 50  0000 L CNN
F 1 "IRLL024NPBF" H 4900 3250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 5500 3200 50  0001 C CNN
F 3 "" H 5300 3100 50  0000 C CNN
	1    5300 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR053
U 1 1 58D85607
P 5400 3400
F 0 "#PWR053" H 5400 3150 50  0001 C CNN
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
L GND #PWR054
U 1 1 58D85D6A
P 7800 4550
F 0 "#PWR054" H 7800 4300 50  0001 C CNN
F 1 "GND" H 7800 4400 50  0000 C CNN
F 2 "" H 7800 4550 50  0000 C CNN
F 3 "" H 7800 4550 50  0000 C CNN
	1    7800 4550
	0    -1   -1   0   
$EndComp
NoConn ~ 7350 4350
$Comp
L +24V #PWR055
U 1 1 58D85F0F
P 7800 4150
F 0 "#PWR055" H 7800 4000 50  0001 C CNN
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
F 1 "10u10V" H 7960 2920 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7950 3000 50  0001 C CNN
F 3 "" H 7950 3000 50  0000 C CNN
	1    7950 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C21
U 1 1 58D87D4F
P 8250 3000
F 0 "C21" H 8260 3070 50  0000 L CNN
F 1 "10u10V" H 8260 2920 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8250 3000 50  0001 C CNN
F 3 "" H 8250 3000 50  0000 C CNN
	1    8250 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C27
U 1 1 58D87DB1
P 8250 3300
F 0 "C27" H 8260 3370 50  0000 L CNN
F 1 "10u10V" H 8260 3220 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8250 3300 50  0001 C CNN
F 3 "" H 8250 3300 50  0000 C CNN
	1    8250 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C26
U 1 1 58D87E1C
P 7950 3300
F 0 "C26" H 7960 3370 50  0000 L CNN
F 1 "10u10V" H 7960 3220 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7950 3300 50  0001 C CNN
F 3 "" H 7950 3300 50  0000 C CNN
	1    7950 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C24
U 1 1 58D87E82
P 7400 3300
F 0 "C24" H 7410 3370 50  0000 L CNN
F 1 "10u10V" H 7410 3220 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7400 3300 50  0001 C CNN
F 3 "" H 7400 3300 50  0000 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C16
U 1 1 58D88051
P 7150 3000
F 0 "C16" H 7160 3070 50  0000 L CNN
F 1 "10u10V" H 7160 2920 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7150 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0000 C CNN
	1    7150 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C23
U 1 1 58D880B9
P 7150 3300
F 0 "C23" H 7160 3370 50  0000 L CNN
F 1 "10u10V" H 7160 3220 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7150 3300 50  0001 C CNN
F 3 "" H 7150 3300 50  0000 C CNN
	1    7150 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C18
U 1 1 58D8842E
P 7700 3000
F 0 "C18" H 7710 3070 50  0000 L CNN
F 1 "10u10V" H 7710 2920 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7700 3000 50  0001 C CNN
F 3 "" H 7700 3000 50  0000 C CNN
	1    7700 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C25
U 1 1 58D88512
P 7700 3300
F 0 "C25" H 7710 3370 50  0000 L CNN
F 1 "10u10V" H 7710 3220 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7700 3300 50  0001 C CNN
F 3 "" H 7700 3300 50  0000 C CNN
	1    7700 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C28
U 1 1 58D88583
P 8500 3300
F 0 "C28" H 8510 3370 50  0000 L CNN
F 1 "10u10V" H 8510 3220 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8500 3300 50  0001 C CNN
F 3 "" H 8500 3300 50  0000 C CNN
	1    8500 3300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 58D885FB
P 8500 3000
F 0 "C22" H 8510 3070 50  0000 L CNN
F 1 "10u10V" H 8510 2920 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8500 3000 50  0001 C CNN
F 3 "" H 8500 3000 50  0000 C CNN
	1    8500 3000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C31
U 1 1 58D893DF
P 7550 4350
F 0 "C31" H 7560 4420 50  0000 L CNN
F 1 "10u50V" H 7560 4270 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7550 4350 50  0001 C CNN
F 3 "" H 7550 4350 50  0000 C CNN
	1    7550 4350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C30
U 1 1 58D8946D
P 5050 4450
F 0 "C30" H 5060 4520 50  0000 L CNN
F 1 "10u50V" H 5060 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5050 4450 50  0001 C CNN
F 3 "" H 5050 4450 50  0000 C CNN
	1    5050 4450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C29
U 1 1 58D89502
P 4750 4450
F 0 "C29" H 4760 4520 50  0000 L CNN
F 1 "10u50V" H 4760 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 4750 4450 50  0001 C CNN
F 3 "" H 4750 4450 50  0000 C CNN
F 4 "TDK" H 4750 4450 60  0001 C CNN "Mfg. Name"
F 5 "CGA6P3X7S1H106K250AE" H 4750 4450 60  0001 C CNN "Mfg. Part Number"
F 6 "2435524" H 4750 4450 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga6p3x7s1h106k250ae/kond-mlcc-x7s-10uf-50v-1210/dp/2435524" H 4750 4450 60  0001 C CNN "Farnell Link"
F 8 "810-CGA6P3X7S1H106KS" H 4750 4450 60  0001 C CNN "Mouser PN"
F 9 "445-8792-1-ND" H 4750 4450 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA6P3X7S1H106K250AE/445-8792-1-ND/3248604" H 4750 4450 60  0001 C CNN "Digikey Link"
	1    4750 4450
	1    0    0    -1  
$EndComp
$Comp
L L_Small L4
U 1 1 58D8A5A8
P 7550 2850
F 0 "L4" H 7580 2890 50  0000 L CNN
F 1 "10u" H 7580 2810 50  0000 L CNN
F 2 "SCUBE:L_1008" H 7550 2850 50  0001 C CNN
F 3 "" H 7550 2850 50  0000 C CNN
	1    7550 2850
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L5
U 1 1 58D8A5EF
P 8100 2850
F 0 "L5" H 8130 2890 50  0000 L CNN
F 1 "10u" H 8130 2810 50  0000 L CNN
F 2 "SCUBE:L_1008" H 8100 2850 50  0001 C CNN
F 3 "" H 8100 2850 50  0000 C CNN
	1    8100 2850
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L7
U 1 1 58D8A671
P 7550 3450
F 0 "L7" H 7580 3490 50  0000 L CNN
F 1 "10u" H 7580 3410 50  0000 L CNN
F 2 "SCUBE:L_1008" H 7550 3450 50  0001 C CNN
F 3 "" H 7550 3450 50  0000 C CNN
	1    7550 3450
	0    1    1    0   
$EndComp
$Comp
L L_Small L8
U 1 1 58D8A712
P 8100 3450
F 0 "L8" H 8130 3490 50  0000 L CNN
F 1 "10u" H 8130 3410 50  0000 L CNN
F 2 "SCUBE:L_1008" H 8100 3450 50  0001 C CNN
F 3 "" H 8100 3450 50  0000 C CNN
	1    8100 3450
	0    1    1    0   
$EndComp
Text Notes 7350 2600 0    60   ~ 0
TMR 6WI can handle 680 µF output capacitance\nInductor is about the smallest we can get with decent current capability\nfc = 11 kHz, -137 dB @ 580 kHz -> 7 nVp-p\nTODO: double-check with ngspice\nR_load = 5/0.1 = 50 Ohm
NoConn ~ 6650 2800
$Comp
L L_Small L6
U 1 1 58D8C2AB
P 6350 3150
F 0 "L6" H 6380 3190 50  0000 L CNN
F 1 "10u" H 6380 3110 50  0000 L CNN
F 2 "SCUBE:L_1008" H 6350 3150 50  0001 C CNN
F 3 "" H 6350 3150 50  0000 C CNN
	1    6350 3150
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L3
U 1 1 58D8ECA0
P 4800 1400
F 0 "L3" H 4830 1440 50  0000 L CNN
F 1 "10u" H 4830 1360 50  0000 L CNN
F 2 "SCUBE:L_1008" H 4800 1400 50  0001 C CNN
F 3 "" H 4800 1400 50  0000 C CNN
	1    4800 1400
	0    1    1    0   
$EndComp
$Comp
L C_Small C17
U 1 1 58D8F1C1
P 7150 1550
F 0 "C17" H 7160 1620 50  0000 L CNN
F 1 "10u10V" H 7160 1470 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7150 1550 50  0001 C CNN
F 3 "" H 7150 1550 50  0000 C CNN
	1    7150 1550
	1    0    0    -1  
$EndComp
$Comp
L L_Small L2
U 1 1 58D8F32B
P 7650 1400
F 0 "L2" H 7680 1440 50  0000 L CNN
F 1 "10u" H 7680 1360 50  0000 L CNN
F 2 "SCUBE:L_1008" H 7650 1400 50  0001 C CNN
F 3 "" H 7650 1400 50  0000 C CNN
	1    7650 1400
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C19
U 1 1 58D8F493
P 7400 1550
F 0 "C19" H 7410 1620 50  0000 L CNN
F 1 "10u10V" H 7410 1470 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7400 1550 50  0001 C CNN
F 3 "" H 7400 1550 50  0000 C CNN
	1    7400 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C32
U 1 1 58D8F823
P 7850 1550
F 0 "C32" H 7860 1620 50  0000 L CNN
F 1 "10u10V" H 7860 1470 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 7850 1550 50  0001 C CNN
F 3 "" H 7850 1550 50  0000 C CNN
	1    7850 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C33
U 1 1 58D8F8BF
P 8100 1550
F 0 "C33" H 8110 1620 50  0000 L CNN
F 1 "10u10V" H 8110 1470 39  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 8100 1550 50  0001 C CNN
F 3 "" H 8100 1550 50  0000 C CNN
	1    8100 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR056
U 1 1 58D8FE5B
P 7650 1750
F 0 "#PWR056" H 7650 1500 50  0001 C CNN
F 1 "GND" H 7650 1600 50  0000 C CNN
F 2 "" H 7650 1750 50  0000 C CNN
F 3 "" H 7650 1750 50  0000 C CNN
	1    7650 1750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR057
U 1 1 58D904FF
P 8100 1300
F 0 "#PWR057" H 8100 1150 50  0001 C CNN
F 1 "+3.3V" H 8100 1440 50  0000 C CNN
F 2 "" H 8100 1300 50  0000 C CNN
F 3 "" H 8100 1300 50  0000 C CNN
	1    8100 1300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR058
U 1 1 58D906C2
P 8500 3500
F 0 "#PWR058" H 8500 3350 50  0001 C CNN
F 1 "+5V" H 8500 3640 50  0000 C CNN
F 2 "" H 8500 3500 50  0000 C CNN
F 3 "" H 8500 3500 50  0000 C CNN
	1    8500 3500
	-1   0    0    1   
$EndComp
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
	4000 4150 4000 4300
Connection ~ 4000 4150
Wire Wire Line
	4750 4150 4750 4350
Connection ~ 4750 4150
Wire Wire Line
	5050 4150 5050 4350
Wire Wire Line
	3650 4150 6250 4150
Connection ~ 5050 4150
Wire Wire Line
	5150 4050 5150 4150
Connection ~ 5150 4150
Wire Wire Line
	4000 4600 4000 4800
Wire Wire Line
	4000 4800 5050 4800
Wire Wire Line
	4800 4800 4800 4950
Connection ~ 4800 4800
Wire Wire Line
	4750 4550 4750 4800
Connection ~ 4750 4800
Wire Wire Line
	5050 4800 5050 4550
Connection ~ 6150 4150
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
	8200 2850 8650 2850
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
	5300 3350 5750 3350
Connection ~ 5400 3350
Wire Wire Line
	5100 3350 5050 3350
Wire Wire Line
	5050 3350 5050 3100
Connection ~ 5050 3100
Wire Wire Line
	4550 3100 4700 3100
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
	6550 2800 6550 3200
Wire Wire Line
	8200 3450 8650 3450
Wire Wire Line
	7650 3450 8000 3450
Wire Wire Line
	6950 3450 7450 3450
Wire Wire Line
	6150 3150 6250 3150
Wire Wire Line
	6550 3150 6450 3150
Wire Wire Line
	6800 1400 7550 1400
Connection ~ 7400 1400
Wire Wire Line
	7150 1450 7150 1400
Connection ~ 7150 1400
Wire Wire Line
	7750 1400 8250 1400
Wire Wire Line
	8100 1300 8100 1450
Wire Wire Line
	7850 1450 7850 1400
Connection ~ 7850 1400
Wire Wire Line
	8100 1700 8100 1650
Wire Wire Line
	7150 1650 7150 1700
Wire Wire Line
	7400 1650 7400 1700
Connection ~ 7400 1700
Wire Wire Line
	7850 1700 7850 1650
Connection ~ 7850 1700
Wire Wire Line
	7650 1700 7650 1750
Connection ~ 7650 1700
Connection ~ 8100 1400
$Comp
L -5V #PWR56
U 1 1 58D90B55
P 8500 2800
F 0 "#PWR56" H 8500 2900 50  0001 C CNN
F 1 "-5V" H 8500 2950 50  0000 C CNN
F 2 "" H 8500 2800 50  0000 C CNN
F 3 "" H 8500 2800 50  0000 C CNN
	1    8500 2800
	1    0    0    -1  
$EndComp
Connection ~ 8500 2850
Connection ~ 8500 3450
$Comp
L MAX485 U11
U 1 1 58D92495
P 1800 6150
F 0 "U11" H 1800 6400 60  0000 C CNN
F 1 "MAX485" H 1800 5900 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1800 6150 60  0001 C CNN
F 3 "" H 1800 6150 60  0000 C CNN
	1    1800 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4350 3750 6350
Wire Wire Line
	2750 6200 2250 6200
$Comp
L R_Small R8
U 1 1 58D9277F
P 2900 6150
F 0 "R8" H 2930 6170 50  0000 L CNN
F 1 "120" H 2930 6110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2900 6150 50  0001 C CNN
F 3 "" H 2900 6150 50  0000 C CNN
	1    2900 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6100 2750 6100
$Comp
L GND #PWR059
U 1 1 58D92EFA
P 2400 6350
F 0 "#PWR059" H 2400 6100 50  0001 C CNN
F 1 "GND" H 2400 6200 50  0000 C CNN
F 2 "" H 2400 6350 50  0000 C CNN
F 3 "" H 2400 6350 50  0000 C CNN
	1    2400 6350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR060
U 1 1 58D92F66
P 2400 5650
F 0 "#PWR060" H 2400 5500 50  0001 C CNN
F 1 "+3.3V" H 2400 5790 50  0000 C CNN
F 2 "" H 2400 5650 50  0000 C CNN
F 3 "" H 2400 5650 50  0000 C CNN
	1    2400 5650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C35
U 1 1 58D930E6
P 2400 5900
F 0 "C35" H 2410 5970 50  0000 L CNN
F 1 "100n" H 2410 5820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2400 5900 50  0001 C CNN
F 3 "" H 2400 5900 50  0000 C CNN
	1    2400 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5700 2250 5700
Wire Wire Line
	2250 5700 2250 6000
Wire Wire Line
	2400 5650 2400 5800
Connection ~ 2400 5700
Wire Wire Line
	2400 6000 2400 6350
Connection ~ 2400 6300
Wire Wire Line
	1350 6100 1300 6100
Wire Wire Line
	1300 6100 1300 6200
Wire Wire Line
	1300 6200 1350 6200
Wire Wire Line
	1200 6150 1300 6150
Connection ~ 1300 6150
Wire Wire Line
	1200 6000 1350 6000
Wire Wire Line
	1200 6300 1350 6300
Text HLabel 1200 6000 0    60   Input ~ 0
RS485_RX
Text HLabel 1200 6150 0    60   Input ~ 0
RS485_DE
Text HLabel 1200 6300 0    60   Input ~ 0
RS485_TX
Text HLabel 4550 3100 1    60   Input ~ 0
EN_24V_5V
Wire Wire Line
	6150 3150 6150 4150
$Comp
L R_Small R34
U 1 1 58DA910C
P 2900 5850
F 0 "R34" H 2930 5870 50  0000 L CNN
F 1 "360" H 2930 5810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2900 5850 50  0001 C CNN
F 3 "" H 2900 5850 50  0000 C CNN
F 4 "dnf" H 3000 5950 60  0000 C CNN "fit_field"
	1    2900 5850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R35
U 1 1 58DA9218
P 2900 6450
F 0 "R35" H 2930 6470 50  0000 L CNN
F 1 "360" H 2930 6410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2900 6450 50  0001 C CNN
F 3 "" H 2900 6450 50  0000 C CNN
F 4 "dnf" H 3000 6550 60  0000 C CNN "fit_field"
	1    2900 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6200 2750 6300
Wire Wire Line
	2750 6300 3750 6300
Wire Wire Line
	3450 6000 3450 4400
Wire Wire Line
	2750 6000 3450 6000
Wire Wire Line
	2750 6100 2750 6000
Wire Wire Line
	2900 5950 2900 6050
Connection ~ 2900 6000
Wire Wire Line
	2900 6250 2900 6350
Connection ~ 2900 6300
$Comp
L +3.3V #PWR061
U 1 1 58DA99AF
P 2900 6550
F 0 "#PWR061" H 2900 6400 50  0001 C CNN
F 1 "+3.3V" H 2900 6690 50  0000 C CNN
F 2 "" H 2900 6550 50  0000 C CNN
F 3 "" H 2900 6550 50  0000 C CNN
	1    2900 6550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR062
U 1 1 58DA9A23
P 2900 5750
F 0 "#PWR062" H 2900 5500 50  0001 C CNN
F 1 "GND" H 2900 5600 50  0000 C CNN
F 2 "" H 2900 5750 50  0000 C CNN
F 3 "" H 2900 5750 50  0000 C CNN
	1    2900 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 6300 2250 6300
Text Notes 2700 7200 0    60   ~ 0
Fail-safe biasing\nMay not be needed if the lander puts the bus in a known idle state\nOnly populate R8 in that case\n3.3 * (120||120) / (350 + 350 + 120||120) = 3.3*60/760 = 260 mV > 200 mV
$Comp
L PWR_FLAG #FLG063
U 1 1 58DB1A76
P 5450 4100
F 0 "#FLG063" H 5450 4195 50  0001 C CNN
F 1 "PWR_FLAG" H 5450 4280 50  0000 C CNN
F 2 "" H 5450 4100 50  0000 C CNN
F 3 "" H 5450 4100 50  0000 C CNN
	1    5450 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4100 5450 4150
Connection ~ 5450 4150
$Comp
L PWR_FLAG #FLG064
U 1 1 58DB1EA3
P 8650 2850
F 0 "#FLG064" H 8650 2945 50  0001 C CNN
F 1 "PWR_FLAG" H 8650 3030 50  0000 C CNN
F 2 "" H 8650 2850 50  0000 C CNN
F 3 "" H 8650 2850 50  0000 C CNN
	1    8650 2850
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG065
U 1 1 58DB21A4
P 8250 1400
F 0 "#FLG065" H 8250 1495 50  0001 C CNN
F 1 "PWR_FLAG" H 8250 1580 50  0000 C CNN
F 2 "" H 8250 1400 50  0000 C CNN
F 3 "" H 8250 1400 50  0000 C CNN
	1    8250 1400
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG066
U 1 1 58DB5743
P 8650 3450
F 0 "#FLG066" H 8650 3545 50  0001 C CNN
F 1 "PWR_FLAG" H 8650 3630 50  0000 C CNN
F 2 "" H 8650 3450 50  0000 C CNN
F 3 "" H 8650 3450 50  0000 C CNN
	1    8650 3450
	0    1    1    0   
$EndComp
$Comp
L D_TVS D5
U 1 1 58E24817
P 3550 6150
F 0 "D5" H 3550 6250 50  0000 C CNN
F 1 "12V" H 3550 6050 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 3550 6150 50  0001 C CNN
F 3 "" H 3550 6150 50  0000 C CNN
	1    3550 6150
	-1   0    0    1   
$EndComp
$Comp
L D_TVS D4
U 1 1 58E25B90
P 3250 5800
F 0 "D4" H 3250 5900 50  0000 C CNN
F 1 "12V" H 3250 5700 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 3250 5800 50  0001 C CNN
F 3 "" H 3250 5800 50  0000 C CNN
F 4 "Würth" H 3250 5800 60  0001 C CNN "Mfg. Name"
F 5 "824501121" H 3250 5800 60  0001 C CNN "Mfg. Part Number"
F 6 "300-59-541" H 3250 5800 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/transientskyddsdiod-12-400-sma-wuerth-elektronik-824501121/p/30059541" H 3250 5800 60  0001 C CNN "Elfa Link"
F 8 "2536587" H 3250 5800 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/wurth-elektronik/824501121/tvs-diod-400w-12v-dbl-rikt-do/dp/2536587" H 3250 5800 60  0001 C CNN "Farnell Link"
F 10 "710-824501121" H 3250 5800 60  0001 C CNN "Mouser PN"
F 11 "732-9949-1-ND" H 3250 5800 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/wurth-electronics-inc/824501121/732-9949-1-ND/5871103" H 3250 5800 60  0001 C CNN "Digikey Link"
	1    3250 5800
	0    -1   -1   0   
$EndComp
$Comp
L D_TVS D6
U 1 1 58E25C48
P 3750 6500
F 0 "D6" H 3750 6600 50  0000 C CNN
F 1 "12V" H 3750 6400 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 3750 6500 50  0001 C CNN
F 3 "" H 3750 6500 50  0000 C CNN
	1    3750 6500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR067
U 1 1 58E25FF9
P 3250 5650
F 0 "#PWR067" H 3250 5400 50  0001 C CNN
F 1 "GND" H 3250 5500 50  0000 C CNN
F 2 "" H 3250 5650 50  0000 C CNN
F 3 "" H 3250 5650 50  0000 C CNN
	1    3250 5650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR068
U 1 1 58E2609D
P 3750 6650
F 0 "#PWR068" H 3750 6400 50  0001 C CNN
F 1 "GND" H 3750 6500 50  0000 C CNN
F 2 "" H 3750 6650 50  0000 C CNN
F 3 "" H 3750 6650 50  0000 C CNN
	1    3750 6650
	1    0    0    -1  
$EndComp
Connection ~ 3750 6300
Wire Wire Line
	3250 5950 3250 6150
Wire Wire Line
	3250 6150 3400 6150
Connection ~ 3250 6000
Wire Wire Line
	3700 6150 3750 6150
Connection ~ 3750 6150
Text Label 2650 6200 0    60   ~ 0
A
Text Label 2650 6100 0    60   ~ 0
B
Text GLabel 1450 4250 0    60   Input ~ 0
PDO
Text GLabel 1450 4350 0    60   Input ~ 0
PDI
Text GLabel 1450 3950 0    60   Input ~ 0
SCLK_OUT
Text GLabel 1450 3850 0    60   Input ~ 0
/RESET
$Comp
L +3.3V #PWR069
U 1 1 58E3DD70
P 2000 4550
F 0 "#PWR069" H 2000 4400 50  0001 C CNN
F 1 "+3.3V" H 2000 4690 50  0000 C CNN
F 2 "" H 2000 4550 50  0000 C CNN
F 3 "" H 2000 4550 50  0000 C CNN
	1    2000 4550
	0    1    1    0   
$EndComp
Text GLabel 1400 4450 0    60   Input ~ 0
ONEWIRE
Text Label 2000 3650 0    60   ~ 0
A
Text Label 2000 3750 0    60   ~ 0
B
Text Label 2150 4150 0    60   ~ 0
VLANDER
Wire Wire Line
	7400 1450 7400 1400
Wire Wire Line
	2000 4050 800  4050
Wire Wire Line
	2000 3850 2000 4050
Wire Wire Line
	1950 3950 2000 3950
Connection ~ 2000 3950
Connection ~ 1950 4050
Connection ~ 1450 4050
Wire Wire Line
	2000 4150 2000 4350
Wire Wire Line
	2000 4350 1950 4350
Connection ~ 2000 4150
Wire Wire Line
	1950 4250 2000 4250
Connection ~ 2000 4250
Connection ~ 1950 4150
Wire Wire Line
	1400 4450 1950 4450
Connection ~ 1450 4450
Wire Wire Line
	1450 4550 2000 4550
Connection ~ 1950 4550
Wire Wire Line
	1450 3750 2050 3750
Wire Wire Line
	2050 3750 2050 4400
Wire Wire Line
	2100 3650 2100 4350
Wire Wire Line
	1450 3650 2100 3650
Connection ~ 1950 3650
Connection ~ 1950 3750
$Comp
L D_Schottky_Small D8
U 1 1 59286ECB
P 3100 3900
F 0 "D8" H 3050 3980 50  0000 L CNN
F 1 "STTH102A" H 2950 3800 50  0000 L CNN
F 2 "Diodes_SMD:SMA_Standard" V 3100 3900 50  0001 C CNN
F 3 "" V 3100 3900 50  0000 C CNN
	1    3100 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 3900 3300 3900
Wire Wire Line
	3300 3900 3300 4150
Connection ~ 3300 4150
Wire Wire Line
	3000 3900 2850 3900
Wire Wire Line
	2850 3900 2850 4150
Connection ~ 2850 4150
$Comp
L D_TVS D9
U 1 1 592878D4
P 4300 4450
F 0 "D9" H 4300 4550 50  0000 C CNN
F 1 "40V" H 4300 4350 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 4300 4450 50  0001 C CNN
F 3 "" H 4300 4450 50  0000 C CNN
	1    4300 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4600 4300 4800
Connection ~ 4300 4800
Wire Wire Line
	4300 4300 4300 4150
Connection ~ 4300 4150
$Comp
L CONN_02X12 P4
U 1 1 5991B9AB
P 1700 4100
F 0 "P4" H 1700 4750 50  0000 C CNN
F 1 "CONN_02X12" V 1700 4100 50  0000 C CNN
F 2 "SCUBE:LPPB122NFSP-RC" H 1700 2900 50  0001 C CNN
F 3 "" H 1700 2900 50  0001 C CNN
	1    1700 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 3850 1950 3850
Wire Wire Line
	2100 4350 3750 4350
Wire Wire Line
	2050 4400 3450 4400
Wire Wire Line
	1450 4150 3000 4150
NoConn ~ 6250 4550
Wire Wire Line
	6250 4350 6000 4350
Wire Wire Line
	6000 4350 6000 2850
Connection ~ 6000 2850
$Comp
L TSR_1 U12
U 1 1 59932821
P 5900 1400
F 0 "U12" H 5900 1500 60  0000 C CNN
F 1 "TSR 1-2433" H 5900 1600 60  0000 C CNN
F 2 "SCUBE:TSR_1" H 5900 1400 60  0001 C CNN
F 3 "" H 5900 1400 60  0001 C CNN
	1    5900 1400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C38
U 1 1 599335D4
P 5200 1850
F 0 "C38" H 5210 1920 50  0000 L CNN
F 1 "10u50V" H 5210 1770 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5200 1850 50  0001 C CNN
F 3 "" H 5200 1850 50  0000 C CNN
	1    5200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4150 4400 1400
Wire Wire Line
	4400 1400 4700 1400
Connection ~ 4400 4150
Wire Wire Line
	4900 1400 5450 1400
$Comp
L GND #PWR070
U 1 1 599341A4
P 5900 1850
F 0 "#PWR070" H 5900 1600 50  0001 C CNN
F 1 "GND" H 5900 1700 50  0000 C CNN
F 2 "" H 5900 1850 50  0000 C CNN
F 3 "" H 5900 1850 50  0000 C CNN
	1    5900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1400 5200 1750
Connection ~ 5200 1400
$Comp
L GND #PWR071
U 1 1 599346D4
P 5200 1950
F 0 "#PWR071" H 5200 1700 50  0001 C CNN
F 1 "GND" H 5200 1800 50  0000 C CNN
F 2 "" H 5200 1950 50  0000 C CNN
F 3 "" H 5200 1950 50  0000 C CNN
	1    5200 1950
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG072
U 1 1 599350B1
P 5000 1300
F 0 "#FLG072" H 5000 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 5000 1500 50  0000 C CNN
F 2 "" H 5000 1300 50  0001 C CNN
F 3 "" H 5000 1300 50  0001 C CNN
	1    5000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1300 5000 1400
Connection ~ 5000 1400
$Comp
L PWR_FLAG #FLG073
U 1 1 59935515
P 5800 2800
F 0 "#FLG073" H 5800 2875 50  0001 C CNN
F 1 "PWR_FLAG" H 5800 2950 50  0000 C CNN
F 2 "" H 5800 2800 50  0001 C CNN
F 3 "" H 5800 2800 50  0001 C CNN
	1    5800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2800 5800 2850
Connection ~ 5800 2850
$Comp
L C_Small C39
U 1 1 5993601B
P 6550 3300
F 0 "C39" H 6560 3370 50  0000 L CNN
F 1 "10u50V" H 6560 3220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 6550 3300 50  0001 C CNN
F 3 "" H 6550 3300 50  0000 C CNN
	1    6550 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR074
U 1 1 599362DB
P 6550 3400
F 0 "#PWR074" H 6550 3150 50  0001 C CNN
F 1 "GND" H 6550 3250 50  0000 C CNN
F 2 "" H 6550 3400 50  0000 C CNN
F 3 "" H 6550 3400 50  0000 C CNN
	1    6550 3400
	1    0    0    -1  
$EndComp
Connection ~ 6550 3150
$Comp
L D_TVS D10
U 1 1 59933FDC
P 5750 3100
F 0 "D10" H 5750 3200 50  0000 C CNN
F 1 "40V" H 5750 3000 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 5750 3100 50  0001 C CNN
F 3 "" H 5750 3100 50  0000 C CNN
	1    5750 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 3350 5750 3250
Wire Wire Line
	5750 2950 5750 2850
Connection ~ 5750 2850
Wire Wire Line
	7150 1700 8100 1700
$Comp
L D_Schottky_Small D2
U 1 1 5AF1BF12
P 3100 4150
F 0 "D2" H 3050 4230 50  0000 L CNN
F 1 "STTH102A" H 2950 4050 50  0000 L CNN
F 2 "Diodes_SMD:SMA_Standard" V 3100 4150 50  0001 C CNN
F 3 "" V 3100 4150 50  0000 C CNN
F 4 "STMicroelectronics" H 3100 4150 60  0001 C CNN "Mfg. Name"
F 5 "STTH102A" H 3100 4150 60  0001 C CNN "Mfg. Part Number"
F 6 "300-34-074" H 3100 4150 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/likriktardiod-sma-200-st-stth102a/p/30034074" H 3100 4150 60  0001 C CNN "Elfa Link"
F 8 "9907874" H 3100 4150 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/stmicroelectronics/stth102a/diode-ultrafast-1a-200v-sma/dp/9907874" H 3100 4150 60  0001 C CNN "Farnell Link"
F 10 "511-STTH102A" H 3100 4150 60  0001 C CNN "Mouser PN"
F 11 "497-2500-1-ND" H 3100 4150 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/stmicroelectronics/STTH102A/497-2500-1-ND/603882" H 3100 4150 60  0001 C CNN "Digikey Link"
	1    3100 4150
	-1   0    0    1   
$EndComp
NoConn ~ 1950 4650
NoConn ~ 1450 4650
NoConn ~ 1450 3550
NoConn ~ 1950 3550
$Comp
L R_Small R19
U 1 1 5B02EEFC
P 6700 1400
F 0 "R19" H 6730 1420 50  0000 L CNN
F 1 "0" H 6730 1360 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6700 1400 50  0001 C CNN
F 3 "" H 6700 1400 50  0000 C CNN
	1    6700 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 1400 6350 1400
Text Notes 6450 1300 0    60   ~ 0
Could put a\nNANOSMD here
$EndSCHEMATC
