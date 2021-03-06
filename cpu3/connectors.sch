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
LIBS:cpu3-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L +24V #PWR040
U 1 1 58CF3CA7
P 2600 2950
F 0 "#PWR040" H 2600 2800 50  0001 C CNN
F 1 "+24V" H 2600 3090 50  0000 C CNN
F 2 "" H 2600 2950 50  0000 C CNN
F 3 "" H 2600 2950 50  0000 C CNN
	1    2600 2950
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR041
U 1 1 58CF3CAD
P 2600 3250
F 0 "#PWR041" H 2600 3100 50  0001 C CNN
F 1 "+5V" H 2600 3390 50  0000 C CNN
F 2 "" H 2600 3250 50  0000 C CNN
F 3 "" H 2600 3250 50  0000 C CNN
	1    2600 3250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR042
U 1 1 58CF3CB3
P 2450 3450
F 0 "#PWR042" H 2450 3200 50  0001 C CNN
F 1 "GND" H 2450 3300 50  0000 C CNN
F 2 "" H 2450 3450 50  0000 C CNN
F 3 "" H 2450 3450 50  0000 C CNN
	1    2450 3450
	0    1    1    0   
$EndComp
$Comp
L -5V #PWR48
U 1 1 58CF3CB9
P 2600 3650
F 0 "#PWR48" H 2600 3750 50  0001 C CNN
F 1 "-5V" H 2600 3800 50  0000 C CNN
F 2 "" H 2600 3650 50  0000 C CNN
F 3 "" H 2600 3650 50  0000 C CNN
	1    2600 3650
	0    -1   -1   0   
$EndComp
Text GLabel 2000 1950 0    60   Input ~ 0
PWM0
Text GLabel 2900 3850 0    60   Input ~ 0
TACH0
Text GLabel 4250 3850 0    60   Input ~ 0
TACH1
Text GLabel 5600 3850 0    60   Input ~ 0
TACH2
Text GLabel 2900 3950 0    60   Input ~ 0
/CS_VGND0
Text GLabel 4250 3950 0    60   Input ~ 0
/CS_VGND1
Text GLabel 5600 3950 0    60   Input ~ 0
/CS_VGND2
Text GLabel 2900 4050 0    60   Input ~ 0
EN_VGND0
Text GLabel 4250 4050 0    60   Input ~ 0
EN_VGND1
Text GLabel 5600 4050 0    60   Input ~ 0
EN_VGND2
Text GLabel 2850 6350 0    60   Input ~ 0
ONEWIRE
Text GLabel 2850 6550 0    60   Input ~ 0
/CS_ADC0
Text GLabel 4200 6550 0    60   Input ~ 0
/CS_ADC1
Text GLabel 5550 6550 0    60   Input ~ 0
/CS_ADC2
Text GLabel 2850 6650 0    60   Input ~ 0
SCLK
Text GLabel 2850 6750 0    60   Input ~ 0
MISO
Text GLabel 2850 6850 0    60   Input ~ 0
MOSI
Text GLabel 2850 6950 0    60   Input ~ 0
/DRDY0
Text GLabel 4200 6950 0    60   Input ~ 0
/DRDY1
Text GLabel 5550 6950 0    60   Input ~ 0
/DRDY2
$Comp
L +3.3V #PWR043
U 1 1 58CF4033
P 2450 7150
F 0 "#PWR043" H 2450 7000 50  0001 C CNN
F 1 "+3.3V" H 2450 7290 50  0000 C CNN
F 2 "" H 2450 7150 50  0000 C CNN
F 3 "" H 2450 7150 50  0000 C CNN
	1    2450 7150
	0    -1   -1   0   
$EndComp
$Comp
L 74AHC1G125GW U5
U 1 1 58D2F1DF
P 2350 5550
F 0 "U5" H 2350 5750 60  0000 C CNN
F 1 "SN74LVC1G125DBVR" H 2350 5350 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 2350 5550 60  0001 C CNN
F 3 "" H 2350 5550 60  0000 C CNN
F 4 "http://se.farnell.com/texas-instruments/sn74lvc1g125dbvr/ic-buffer-gate-bus-smd-sot-23/dp/1470768" H 2350 5550 60  0001 C CNN "1st Distrib. Link"
	1    2350 5550
	0    1    1    0   
$EndComp
Text GLabel 1750 4800 0    60   Input ~ 0
f_ADC
$Comp
L C_Small C12
U 1 1 58D2F591
P 2700 5550
F 0 "C12" H 2710 5620 50  0000 L CNN
F 1 "100n" H 2710 5470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2700 5550 50  0001 C CNN
F 3 "" H 2700 5550 50  0000 C CNN
	1    2700 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 58D2F60F
P 2250 5050
F 0 "#PWR044" H 2250 4800 50  0001 C CNN
F 1 "GND" H 2250 4900 50  0000 C CNN
F 2 "" H 2250 5050 50  0000 C CNN
F 3 "" H 2250 5050 50  0000 C CNN
	1    2250 5050
	-1   0    0    1   
$EndComp
Text Notes 5750 5600 0    60   ~ 0
Clock drivers\nSupply each with 1 mA between 3.0..3.3 V\n(3.3-3.0)/3 mA = 100\n3.3^2/100 = 110 mW
$Comp
L GND #PWR045
U 1 1 58D426EF
P 2450 7350
F 0 "#PWR045" H 2450 7100 50  0001 C CNN
F 1 "GND" H 2450 7200 50  0000 C CNN
F 2 "" H 2450 7350 50  0000 C CNN
F 3 "" H 2450 7350 50  0000 C CNN
	1    2450 7350
	0    1    1    0   
$EndComp
$Comp
L CONN_02X12 P1
U 1 1 58D42ABF
P 3150 6900
F 0 "P1" H 3150 7550 50  0000 C CNN
F 1 "CONN_02X12" V 3150 6900 50  0000 C CNN
F 2 "SCUBE:FTSH-112-04-L-D-RA" H 3150 5700 50  0001 C CNN
F 3 "" H 3150 5700 50  0000 C CNN
F 4 "Samtec" H 3150 6900 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 3150 6900 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 3150 6900 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 3150 6900 60  0001 C CNN "1st Distrib. Link"
	1    3150 6900
	1    0    0    1   
$EndComp
$Comp
L 74AHC1G125GW U6
U 1 1 58D44358
P 3700 5550
F 0 "U6" H 3700 5750 60  0000 C CNN
F 1 "SN74LVC1G125DBVR" H 3700 5350 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3700 5550 60  0001 C CNN
F 3 "" H 3700 5550 60  0000 C CNN
F 4 "http://se.farnell.com/texas-instruments/sn74lvc1g125dbvr/ic-buffer-gate-bus-smd-sot-23/dp/1470768" H 3700 5550 60  0001 C CNN "1st Distrib. Link"
	1    3700 5550
	0    1    1    0   
$EndComp
$Comp
L C_Small C13
U 1 1 58D4435E
P 4050 5550
F 0 "C13" H 4060 5620 50  0000 L CNN
F 1 "100n" H 4060 5470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4050 5550 50  0001 C CNN
F 3 "" H 4050 5550 50  0000 C CNN
	1    4050 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 58D44364
P 3600 5050
F 0 "#PWR046" H 3600 4800 50  0001 C CNN
F 1 "GND" H 3600 4900 50  0000 C CNN
F 2 "" H 3600 5050 50  0000 C CNN
F 3 "" H 3600 5050 50  0000 C CNN
	1    3600 5050
	-1   0    0    1   
$EndComp
$Comp
L 74AHC1G125GW U7
U 1 1 58D44468
P 5050 5550
F 0 "U7" H 5050 5750 60  0000 C CNN
F 1 "SN74LVC1G125DBVR" H 5050 5350 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 5050 5550 60  0001 C CNN
F 3 "" H 5050 5550 60  0000 C CNN
F 4 "http://se.farnell.com/texas-instruments/sn74lvc1g125dbvr/ic-buffer-gate-bus-smd-sot-23/dp/1470768" H 5050 5550 60  0001 C CNN "1st Distrib. Link"
	1    5050 5550
	0    1    1    0   
$EndComp
$Comp
L C_Small C14
U 1 1 58D4446E
P 5400 5550
F 0 "C14" H 5410 5620 50  0000 L CNN
F 1 "100n" H 5410 5470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5400 5550 50  0001 C CNN
F 3 "" H 5400 5550 50  0000 C CNN
	1    5400 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 58D44474
P 4950 5050
F 0 "#PWR047" H 4950 4800 50  0001 C CNN
F 1 "GND" H 4950 4900 50  0000 C CNN
F 2 "" H 4950 5050 50  0000 C CNN
F 3 "" H 4950 5050 50  0000 C CNN
	1    4950 5050
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR048
U 1 1 58D4447A
P 5650 6000
F 0 "#PWR048" H 5650 5850 50  0001 C CNN
F 1 "+3.3V" H 5650 6140 50  0000 C CNN
F 2 "" H 5650 6000 50  0000 C CNN
F 3 "" H 5650 6000 50  0000 C CNN
	1    5650 6000
	0    1    1    0   
$EndComp
$Comp
L R_Small R2
U 1 1 58D44480
P 5550 6000
F 0 "R2" H 5580 6020 50  0000 L CNN
F 1 "100" H 5580 5960 50  0000 L CNN
F 2 "SCUBE:Resistor_1206_2010_combined" H 5550 6000 50  0001 C CNN
F 3 "" H 5550 6000 50  0000 C CNN
	1    5550 6000
	0    1    1    0   
$EndComp
$Comp
L CONN_02X12 P5
U 1 1 58D45863
P 4500 6900
F 0 "P5" H 4500 7550 50  0000 C CNN
F 1 "CONN_02X12" V 4500 6900 50  0000 C CNN
F 2 "SCUBE:FTSH-112-04-L-D-RA" H 4500 5700 50  0001 C CNN
F 3 "" H 4500 5700 50  0000 C CNN
F 4 "Samtec" H 4500 6900 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 4500 6900 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 4500 6900 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 4500 6900 60  0001 C CNN "1st Distrib. Link"
	1    4500 6900
	1    0    0    1   
$EndComp
$Comp
L CONN_02X12 P6
U 1 1 58D458BC
P 5850 6900
F 0 "P6" H 5850 7550 50  0000 C CNN
F 1 "CONN_02X12" V 5850 6900 50  0000 C CNN
F 2 "SCUBE:FTSH-112-04-L-D-RA" H 5850 5700 50  0001 C CNN
F 3 "" H 5850 5700 50  0000 C CNN
F 4 "Samtec" H 5850 6900 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 5850 6900 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 5850 6900 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 5850 6900 60  0001 C CNN "1st Distrib. Link"
	1    5850 6900
	1    0    0    1   
$EndComp
$Comp
L CONN_02X12 P7
U 1 1 58D4595A
P 3200 3500
F 0 "P7" H 3200 4150 50  0000 C CNN
F 1 "CONN_02X12" V 3200 3500 50  0000 C CNN
F 2 "SCUBE:FTSH-112-04-L-D-RA" H 3200 2300 50  0001 C CNN
F 3 "" H 3200 2300 50  0000 C CNN
F 4 "Samtec" H 3200 3500 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 3200 3500 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 3200 3500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 3200 3500 60  0001 C CNN "1st Distrib. Link"
	1    3200 3500
	1    0    0    1   
$EndComp
$Comp
L CONN_02X12 P12
U 1 1 58D45A7C
P 4550 3500
F 0 "P12" H 4550 4150 50  0000 C CNN
F 1 "CONN_02X12" V 4550 3500 50  0000 C CNN
F 2 "SCUBE:FTSH-112-04-L-D-RA" H 4550 2300 50  0001 C CNN
F 3 "" H 4550 2300 50  0000 C CNN
F 4 "Samtec" H 4550 3500 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 4550 3500 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 4550 3500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 4550 3500 60  0001 C CNN "1st Distrib. Link"
	1    4550 3500
	1    0    0    1   
$EndComp
$Comp
L CONN_02X12 P13
U 1 1 58D45AE0
P 5900 3500
F 0 "P13" H 5900 4150 50  0000 C CNN
F 1 "CONN_02X12" V 5900 3500 50  0000 C CNN
F 2 "SCUBE:FTSH-112-04-L-D-RA" H 5900 2300 50  0001 C CNN
F 3 "" H 5900 2300 50  0000 C CNN
F 4 "Samtec" H 5900 3500 60  0001 C CNN "Mfg. Name"
F 5 "FTSH-112-04-L-D-RA" H 5900 3500 60  0001 C CNN "Mfg. Part Number"
F 6 "1767213" H 5900 3500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/samtec/ftsh-112-04-l-d-ra/header-1-27mm-2x12way-r-a/dp/1767213" H 5900 3500 60  0001 C CNN "1st Distrib. Link"
	1    5900 3500
	1    0    0    1   
$EndComp
Text Notes 4550 4650 0    39   ~ 0
A few words on impedance:\nThe 74AHC1G125GW can drive 3.3/0.025 = 132 Ohm\nA 0.3 mm trace has 127 Ohm impedance, so would match well\n0.5 mm is a bit lower, around 110 Ohm\nHence we don't need to do much to avoid reflection,\nwhich matches the problem-free behavior we've had so far
$Comp
L Q_NMOS_GSD Q2
U 1 1 58DB9900
P 2300 1950
F 0 "Q2" H 2500 2000 50  0000 L CNN
F 1 "PMBF170" H 2500 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 2500 2050 50  0001 C CNN
F 3 "" H 2300 1950 50  0000 C CNN
	1    2300 1950
	1    0    0    -1  
$EndComp
$Comp
L R_Small R31
U 1 1 58DB9A9A
P 2050 1800
F 0 "R31" H 2080 1820 50  0000 L CNN
F 1 "56k" H 2080 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2050 1800 50  0001 C CNN
F 3 "" H 2050 1800 50  0000 C CNN
	1    2050 1800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR049
U 1 1 58DB9B20
P 2050 1700
F 0 "#PWR049" H 2050 1550 50  0001 C CNN
F 1 "+3.3V" H 2050 1840 50  0000 C CNN
F 2 "" H 2050 1700 50  0000 C CNN
F 3 "" H 2050 1700 50  0000 C CNN
	1    2050 1700
	1    0    0    -1  
$EndComp
$Comp
L R_Small R28
U 1 1 58DB9B56
P 2400 1550
F 0 "R28" H 2430 1570 50  0000 L CNN
F 1 "56k" H 2430 1510 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2400 1550 50  0001 C CNN
F 3 "" H 2400 1550 50  0000 C CNN
	1    2400 1550
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR050
U 1 1 58DB9BC0
P 2400 1450
F 0 "#PWR050" H 2400 1300 50  0001 C CNN
F 1 "+24V" H 2400 1590 50  0000 C CNN
F 2 "" H 2400 1450 50  0000 C CNN
F 3 "" H 2400 1450 50  0000 C CNN
	1    2400 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 58DB9C9A
P 2400 2150
F 0 "#PWR051" H 2400 1900 50  0001 C CNN
F 1 "GND" H 2400 2000 50  0000 C CNN
F 2 "" H 2400 2150 50  0000 C CNN
F 3 "" H 2400 2150 50  0000 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
Text GLabel 3350 2000 0    60   Input ~ 0
PWM1
$Comp
L Q_NMOS_GSD Q3
U 1 1 58DBA85F
P 3650 2000
F 0 "Q3" H 3850 2050 50  0000 L CNN
F 1 "PMBF170" H 3850 1950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3850 2100 50  0001 C CNN
F 3 "" H 3650 2000 50  0000 C CNN
	1    3650 2000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R32
U 1 1 58DBA865
P 3400 1850
F 0 "R32" H 3430 1870 50  0000 L CNN
F 1 "56k" H 3430 1810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3400 1850 50  0001 C CNN
F 3 "" H 3400 1850 50  0000 C CNN
	1    3400 1850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR052
U 1 1 58DBA86B
P 3400 1750
F 0 "#PWR052" H 3400 1600 50  0001 C CNN
F 1 "+3.3V" H 3400 1890 50  0000 C CNN
F 2 "" H 3400 1750 50  0000 C CNN
F 3 "" H 3400 1750 50  0000 C CNN
	1    3400 1750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R29
U 1 1 58DBA871
P 3750 1600
F 0 "R29" H 3780 1620 50  0000 L CNN
F 1 "56k" H 3780 1560 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3750 1600 50  0001 C CNN
F 3 "" H 3750 1600 50  0000 C CNN
	1    3750 1600
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR053
U 1 1 58DBA877
P 3750 1500
F 0 "#PWR053" H 3750 1350 50  0001 C CNN
F 1 "+24V" H 3750 1640 50  0000 C CNN
F 2 "" H 3750 1500 50  0000 C CNN
F 3 "" H 3750 1500 50  0000 C CNN
	1    3750 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR054
U 1 1 58DBA87D
P 3750 2200
F 0 "#PWR054" H 3750 1950 50  0001 C CNN
F 1 "GND" H 3750 2050 50  0000 C CNN
F 2 "" H 3750 2200 50  0000 C CNN
F 3 "" H 3750 2200 50  0000 C CNN
	1    3750 2200
	1    0    0    -1  
$EndComp
Text GLabel 4700 2000 0    60   Input ~ 0
PWM2
$Comp
L Q_NMOS_GSD Q4
U 1 1 58DBAA0A
P 5000 2000
F 0 "Q4" H 5200 2050 50  0000 L CNN
F 1 "PMBF170" H 5200 1950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5200 2100 50  0001 C CNN
F 3 "" H 5000 2000 50  0000 C CNN
	1    5000 2000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R33
U 1 1 58DBAA10
P 4750 1850
F 0 "R33" H 4780 1870 50  0000 L CNN
F 1 "56k" H 4780 1810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4750 1850 50  0001 C CNN
F 3 "" H 4750 1850 50  0000 C CNN
	1    4750 1850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR055
U 1 1 58DBAA16
P 4750 1750
F 0 "#PWR055" H 4750 1600 50  0001 C CNN
F 1 "+3.3V" H 4750 1890 50  0000 C CNN
F 2 "" H 4750 1750 50  0000 C CNN
F 3 "" H 4750 1750 50  0000 C CNN
	1    4750 1750
	1    0    0    -1  
$EndComp
$Comp
L R_Small R30
U 1 1 58DBAA1C
P 5100 1600
F 0 "R30" H 5130 1620 50  0000 L CNN
F 1 "56k" H 5130 1560 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5100 1600 50  0001 C CNN
F 3 "" H 5100 1600 50  0000 C CNN
	1    5100 1600
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR056
U 1 1 58DBAA22
P 5100 1500
F 0 "#PWR056" H 5100 1350 50  0001 C CNN
F 1 "+24V" H 5100 1640 50  0000 C CNN
F 2 "" H 5100 1500 50  0000 C CNN
F 3 "" H 5100 1500 50  0000 C CNN
	1    5100 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR057
U 1 1 58DBAA28
P 5100 2200
F 0 "#PWR057" H 5100 1950 50  0001 C CNN
F 1 "GND" H 5100 2050 50  0000 C CNN
F 2 "" H 5100 2200 50  0000 C CNN
F 3 "" H 5100 2200 50  0000 C CNN
	1    5100 2200
	1    0    0    -1  
$EndComp
Text Notes 2200 1150 0    60   ~ 0
We could put these on the fieldmill8  boards if we're cramped fo space
Text Notes 900  7100 0    60   ~ 0
We don't care about /DONEn
NoConn ~ 5600 7050
NoConn ~ 6100 7050
NoConn ~ 4750 7050
NoConn ~ 4250 7050
NoConn ~ 2900 7050
NoConn ~ 3400 7050
$Comp
L PWR_FLAG #FLG058
U 1 1 58DBA1C9
P 5750 5850
F 0 "#FLG058" H 5750 5945 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 6030 50  0000 C CNN
F 2 "" H 5750 5850 50  0000 C CNN
F 3 "" H 5750 5850 50  0000 C CNN
	1    5750 5850
	0    1    1    0   
$EndComp
$Comp
L R_Small R43
U 1 1 599746E5
P 4700 5550
F 0 "R43" H 4730 5570 50  0000 L CNN
F 1 "0" H 4730 5510 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4700 5550 50  0001 C CNN
F 3 "" H 4700 5550 50  0001 C CNN
	1    4700 5550
	-1   0    0    1   
$EndComp
$Comp
L R_Small R42
U 1 1 5997498E
P 3350 5550
F 0 "R42" H 3380 5570 50  0000 L CNN
F 1 "0" H 3380 5510 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3350 5550 50  0001 C CNN
F 3 "" H 3350 5550 50  0001 C CNN
	1    3350 5550
	-1   0    0    1   
$EndComp
$Comp
L R_Small R41
U 1 1 59974ADD
P 2000 5550
F 0 "R41" H 2030 5570 50  0000 L CNN
F 1 "0" H 2030 5510 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2000 5550 50  0001 C CNN
F 3 "" H 2000 5550 50  0001 C CNN
	1    2000 5550
	-1   0    0    1   
$EndComp
Connection ~ 2950 2950
Connection ~ 2950 3150
Connection ~ 2950 3250
Connection ~ 2950 3450
Connection ~ 2950 3650
Connection ~ 2950 3850
Connection ~ 2950 3950
Connection ~ 2950 4050
Connection ~ 2900 6350
Connection ~ 2900 6450
Connection ~ 2900 6550
Connection ~ 2900 6650
Connection ~ 2900 6750
Connection ~ 2900 6850
Connection ~ 2900 6950
Connection ~ 2900 7150
Connection ~ 3450 2950
Connection ~ 3450 3250
Connection ~ 3450 3450
Connection ~ 3450 3650
Connection ~ 4300 2950
Connection ~ 4300 3150
Connection ~ 4300 3250
Connection ~ 4300 3450
Connection ~ 4300 3650
Connection ~ 4300 3850
Connection ~ 4300 3950
Connection ~ 4300 4050
Connection ~ 4250 6350
Connection ~ 4250 6450
Connection ~ 4250 6550
Connection ~ 4250 6650
Connection ~ 4250 6750
Connection ~ 4250 6850
Connection ~ 4250 6950
Connection ~ 4250 7150
Connection ~ 4800 2950
Connection ~ 4800 3250
Connection ~ 4800 3450
Connection ~ 4800 3650
Connection ~ 5650 2950
Connection ~ 5650 3150
Connection ~ 5650 3250
Connection ~ 5650 3450
Connection ~ 5650 3650
Connection ~ 5650 3850
Connection ~ 5650 3950
Connection ~ 5650 4050
Connection ~ 5600 6350
Connection ~ 5600 6450
Connection ~ 5600 6550
Connection ~ 5600 6650
Connection ~ 5600 6750
Connection ~ 5600 6850
Connection ~ 5600 6950
Connection ~ 5600 7150
Wire Wire Line
	2850 3150 3450 3150
Wire Wire Line
	2600 2950 6150 2950
Wire Wire Line
	4200 3150 4800 3150
Wire Wire Line
	5550 3150 6150 3150
Wire Wire Line
	2600 3250 6150 3250
Wire Wire Line
	2450 3450 6150 3450
Wire Wire Line
	2600 3650 6150 3650
Wire Wire Line
	2900 3850 3450 3850
Connection ~ 3400 7150
Connection ~ 3400 6650
Connection ~ 3400 6750
Connection ~ 3400 6850
Connection ~ 4750 6650
Connection ~ 4750 6750
Connection ~ 4750 6850
Connection ~ 4750 7150
Wire Wire Line
	2900 3950 3450 3950
Wire Wire Line
	2900 4050 3450 4050
Wire Wire Line
	2850 6350 6100 6350
Connection ~ 4750 6350
Wire Wire Line
	2850 6550 3400 6550
Wire Wire Line
	2850 6650 6100 6650
Wire Wire Line
	2850 6750 6100 6750
Wire Wire Line
	2850 6850 6100 6850
Wire Wire Line
	2850 6950 3400 6950
Wire Wire Line
	2450 7150 6100 7150
Wire Wire Line
	4250 3850 4800 3850
Wire Wire Line
	4250 3950 4800 3950
Wire Wire Line
	4250 4050 4800 4050
Wire Wire Line
	4200 6550 4750 6550
Wire Wire Line
	4200 6950 4750 6950
Wire Wire Line
	5600 3850 6150 3850
Wire Wire Line
	5600 3950 6150 3950
Wire Wire Line
	5600 4050 6150 4050
Wire Wire Line
	5550 6550 6100 6550
Wire Wire Line
	5550 6950 6100 6950
Connection ~ 3400 6350
Wire Wire Line
	2850 7250 6100 7250
Wire Wire Line
	2850 7250 2850 7150
Connection ~ 2850 7150
Connection ~ 2900 7250
Connection ~ 3400 7250
Connection ~ 4250 7250
Connection ~ 4750 7250
Connection ~ 5600 7250
Wire Wire Line
	2450 7350 6100 7350
Wire Wire Line
	2850 7450 6100 7450
Wire Wire Line
	2850 7450 2850 7350
Connection ~ 2850 7350
Connection ~ 2900 7350
Connection ~ 2900 7450
Connection ~ 3400 7350
Connection ~ 3400 7450
Connection ~ 4250 7350
Connection ~ 4250 7450
Connection ~ 4750 7350
Connection ~ 4750 7450
Connection ~ 5600 7350
Connection ~ 5600 7450
Wire Wire Line
	2900 3050 6150 3050
Wire Wire Line
	2900 3050 2900 2950
Connection ~ 2900 2950
Connection ~ 2950 3050
Connection ~ 3450 3050
Connection ~ 4300 3050
Connection ~ 4800 3050
Connection ~ 5650 3050
Wire Wire Line
	2900 3350 6150 3350
Wire Wire Line
	2900 3350 2900 3250
Connection ~ 2900 3250
Connection ~ 2950 3350
Connection ~ 3450 3350
Connection ~ 4300 3350
Connection ~ 4800 3350
Connection ~ 5650 3350
Wire Wire Line
	2900 3550 6150 3550
Wire Wire Line
	2900 3550 2900 3450
Connection ~ 2900 3450
Connection ~ 2950 3550
Connection ~ 3450 3550
Connection ~ 4300 3550
Connection ~ 4800 3550
Connection ~ 5650 3550
Wire Wire Line
	2900 3750 6150 3750
Wire Wire Line
	2900 3750 2900 3650
Connection ~ 2900 3650
Connection ~ 2950 3750
Connection ~ 3450 3750
Connection ~ 4300 3750
Connection ~ 4800 3750
Connection ~ 5650 3750
Wire Wire Line
	2250 5050 2250 5150
Wire Wire Line
	2250 5100 2700 5100
Wire Wire Line
	2700 5100 2700 5450
Connection ~ 2250 5100
Wire Wire Line
	2700 5650 2700 6000
Wire Wire Line
	2450 6000 5450 6000
Wire Wire Line
	2450 6000 2450 5950
Connection ~ 2700 6000
Wire Wire Line
	3600 5050 3600 5150
Wire Wire Line
	3600 5100 4050 5100
Wire Wire Line
	4050 5100 4050 5450
Connection ~ 3600 5100
Wire Wire Line
	4050 6000 4050 5650
Wire Wire Line
	3800 6000 3800 5950
Connection ~ 4050 6000
Wire Wire Line
	4950 5050 4950 5150
Wire Wire Line
	4950 5100 5400 5100
Wire Wire Line
	5400 5100 5400 5450
Connection ~ 4950 5100
Wire Wire Line
	5400 5650 5400 6000
Wire Wire Line
	5150 6000 5150 5950
Connection ~ 5400 6000
Wire Wire Line
	2250 5950 2250 6450
Wire Wire Line
	2250 6450 3400 6450
Wire Wire Line
	3600 5950 3600 6450
Wire Wire Line
	3600 6450 4750 6450
Wire Wire Line
	4950 5950 4950 6450
Wire Wire Line
	4950 6450 6100 6450
Wire Wire Line
	1750 4800 5050 4800
Wire Wire Line
	5050 4800 5050 5150
Wire Wire Line
	3700 5150 3700 4800
Connection ~ 3700 4800
Wire Wire Line
	2350 5150 2350 4800
Connection ~ 2350 4800
Wire Wire Line
	2450 5150 2450 5100
Connection ~ 2450 5100
Wire Wire Line
	3800 5150 3800 5100
Connection ~ 3800 5100
Wire Wire Line
	5150 5150 5150 5100
Connection ~ 5150 5100
Wire Wire Line
	2000 1950 2100 1950
Wire Wire Line
	2050 1900 2050 1950
Connection ~ 2050 1950
Wire Wire Line
	2400 1650 2400 1750
Wire Wire Line
	2850 1700 2850 3150
Connection ~ 2400 1700
Wire Wire Line
	2850 1700 2400 1700
Wire Wire Line
	3350 2000 3450 2000
Wire Wire Line
	3400 1950 3400 2000
Connection ~ 3400 2000
Wire Wire Line
	3750 1700 3750 1800
Connection ~ 3750 1750
Wire Wire Line
	4700 2000 4800 2000
Wire Wire Line
	4750 1950 4750 2000
Connection ~ 4750 2000
Wire Wire Line
	5100 1700 5100 1800
Connection ~ 5100 1750
Wire Wire Line
	4200 1750 4200 3150
Wire Wire Line
	5550 1750 5550 3150
Wire Wire Line
	5550 1750 5100 1750
Wire Wire Line
	4200 1750 3750 1750
Wire Wire Line
	5750 5850 5400 5850
Connection ~ 5400 5850
Connection ~ 3800 6000
Connection ~ 5150 6000
Wire Wire Line
	4700 5450 4700 4800
Connection ~ 4700 4800
Wire Wire Line
	4700 5650 4700 6050
Wire Wire Line
	4700 6050 4950 6050
Connection ~ 4950 6050
Wire Wire Line
	2000 5650 2000 6050
Wire Wire Line
	2000 6050 2250 6050
Connection ~ 2250 6050
Wire Wire Line
	2000 5450 2000 4800
Connection ~ 2000 4800
Wire Wire Line
	3350 5650 3350 6050
Wire Wire Line
	3350 6050 3600 6050
Connection ~ 3600 6050
Wire Wire Line
	3350 5450 3350 4800
Connection ~ 3350 4800
$EndSCHEMATC
