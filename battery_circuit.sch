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
LIBS:ulv_photovoltaic
LIBS:ulv_ti
LIBS:ulv_battery-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
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
L Battery BT1
U 1 1 56E5C3BE
P 6350 4800
AR Path="/56E5DF65/56E5C3BE" Ref="BT1"  Part="1" 
AR Path="/56E5E7C1/56E5C3BE" Ref="BT2"  Part="1" 
AR Path="/56E5E9EC/56E5C3BE" Ref="BT3"  Part="1" 
AR Path="/56E5EE46/56E5C3BE" Ref="BT4"  Part="1" 
F 0 "BT1" H 6450 4850 50  0000 L CNN
F 1 "Battery" H 6450 4750 50  0000 L CNN
F 2 "JST:JST-PH-02" V 6350 4840 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 6350 4840 50  0001 C CNN
F 4 "JST" H 6350 4800 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 6350 4800 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 6350 4800 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 6350 4800 60  0001 C CNN "1st Distrib. Link"
	1    6350 4800
	1    0    0    -1  
$EndComp
Text HLabel 5900 4000 1    60   BiDi ~ 0
VBAT
$Comp
L GND #PWR05
U 1 1 56E5E3D0
P 3800 5400
AR Path="/56E5DF65/56E5E3D0" Ref="#PWR05"  Part="1" 
AR Path="/56E5E7C1/56E5E3D0" Ref="#PWR06"  Part="1" 
AR Path="/56E5E9EC/56E5E3D0" Ref="#PWR07"  Part="1" 
AR Path="/56E5EE46/56E5E3D0" Ref="#PWR08"  Part="1" 
F 0 "#PWR05" H 3800 5150 50  0001 C CNN
F 1 "GND" H 3800 5250 50  0000 C CNN
F 2 "" H 3800 5400 50  0000 C CNN
F 3 "" H 3800 5400 50  0000 C CNN
	1    3800 5400
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D1
U 1 1 56E5EF28
P 6650 4300
AR Path="/56E5DF65/56E5EF28" Ref="D1"  Part="1" 
AR Path="/56E5E7C1/56E5EF28" Ref="D2"  Part="1" 
AR Path="/56E5E9EC/56E5EF28" Ref="D3"  Part="1" 
AR Path="/56E5EE46/56E5EF28" Ref="D4"  Part="1" 
F 0 "D1" H 6600 4380 50  0000 L CNN
F 1 "Schottky" H 6650 4200 50  0000 C CNN
F 2 "Diodes_SMD:DO-214AB_Handsoldering" V 6650 4300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1912229.pdf" V 5450 4150 50  0001 C CNN
F 4 "Vishay" H 6650 4300 60  0001 C CNN "Mfg. Name"
F 5 "VS-30BQ015TRPBF" H 6650 4300 60  0001 C CNN "Mfg. Part Number"
F 6 "9101250" H 6650 4300 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/vishay-semiconductor/vs-30bq015trpbf/diode-schottky-3a-15v/dp/9101250" H 6650 4300 60  0001 C CNN "1st Distrib. Link"
	1    6650 4300
	-1   0    0    1   
$EndComp
Text HLabel 6950 4300 2    60   Output ~ 0
VSYS
$Comp
L bq2970 U1
U 1 1 5712393D
P 5100 4850
AR Path="/56E5DF65/5712393D" Ref="U1"  Part="1" 
AR Path="/56E5E7C1/5712393D" Ref="U2"  Part="1" 
AR Path="/56E5E9EC/5712393D" Ref="U3"  Part="1" 
AR Path="/56E5EE46/5712393D" Ref="U4"  Part="1" 
F 0 "U1" H 5100 5100 60  0000 C CNN
F 1 "bq2970" H 5100 4600 60  0000 C CNN
F 2 "bq2970:bq2970" H 5100 4850 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2024256.pdf" H 5100 4850 60  0001 C CNN
F 4 "Texas Instruments" H 5100 4850 60  0001 C CNN "Mfg. Name"
F 5 "BQ29700DSET" H 5100 4850 60  0001 C CNN "Mfg. Part Number"
F 6 "2425793" H 5100 4850 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/texas-instruments/bq29700dset/batt-prot-li-ion-li-pol-4-275v/dp/2425793" H 5100 4850 60  0001 C CNN "1st Distrib. Link"
	1    5100 4850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 57123C36
P 3800 4850
AR Path="/56E5DF65/57123C36" Ref="R1"  Part="1" 
AR Path="/56E5E7C1/57123C36" Ref="R3"  Part="1" 
AR Path="/56E5E9EC/57123C36" Ref="R5"  Part="1" 
AR Path="/56E5EE46/57123C36" Ref="R7"  Part="1" 
F 0 "R1" H 3830 4870 50  0000 L CNN
F 1 "2k2" H 3830 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3800 4850 50  0001 C CNN
F 3 "" H 3800 4850 50  0000 C CNN
	1    3800 4850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 57123C81
P 5900 4700
AR Path="/56E5DF65/57123C81" Ref="R2"  Part="1" 
AR Path="/56E5E7C1/57123C81" Ref="R4"  Part="1" 
AR Path="/56E5E9EC/57123C81" Ref="R6"  Part="1" 
AR Path="/56E5EE46/57123C81" Ref="R8"  Part="1" 
F 0 "R2" H 5930 4720 50  0000 L CNN
F 1 "330" H 5930 4660 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5900 4700 50  0001 C CNN
F 3 "" H 5900 4700 50  0000 C CNN
	1    5900 4700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 57123CD4
P 5900 5000
AR Path="/56E5DF65/57123CD4" Ref="C1"  Part="1" 
AR Path="/56E5E7C1/57123CD4" Ref="C2"  Part="1" 
AR Path="/56E5E9EC/57123CD4" Ref="C3"  Part="1" 
AR Path="/56E5EE46/57123CD4" Ref="C4"  Part="1" 
F 0 "C1" H 5910 5070 50  0000 L CNN
F 1 "100n" H 5910 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5900 5000 50  0001 C CNN
F 3 "" H 5900 5000 50  0000 C CNN
	1    5900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4850 5900 4850
Wire Wire Line
	5900 4800 5900 4900
Connection ~ 5900 4850
Wire Wire Line
	6350 4650 6350 4300
Wire Wire Line
	4650 4950 4600 4950
Wire Wire Line
	4600 4950 4600 5000
Wire Wire Line
	4300 5300 4400 5300
Wire Wire Line
	4650 4850 4100 4850
Wire Wire Line
	4100 4850 4100 5000
Wire Wire Line
	3800 4950 3800 5400
Wire Wire Line
	3800 5300 3900 5300
Wire Wire Line
	3800 4750 3800 4450
Wire Wire Line
	3800 4450 5600 4450
Wire Wire Line
	5600 4450 5600 4750
Wire Wire Line
	5600 4750 5550 4750
Wire Wire Line
	4800 5300 6350 5300
Wire Wire Line
	6350 5300 6350 4950
Wire Wire Line
	5900 5100 5900 5300
Connection ~ 5900 5300
Wire Wire Line
	5550 4950 5600 4950
Wire Wire Line
	5600 4950 5600 5300
Connection ~ 5600 5300
Wire Wire Line
	5900 4000 5900 4600
Connection ~ 5900 4300
Connection ~ 3800 5300
Connection ~ 6350 4300
Wire Wire Line
	6750 4300 6950 4300
Wire Wire Line
	5900 4300 6550 4300
Text Notes 3850 4300 0    60   ~ 0
Circuit straight from bq2970 datasheet,\nwith Schottky diode added
$Comp
L Q_NMOS_GDSD Q1
U 1 1 571388C2
P 4100 5200
AR Path="/56E5DF65/571388C2" Ref="Q1"  Part="1" 
AR Path="/56E5E7C1/571388C2" Ref="Q3"  Part="1" 
AR Path="/56E5E9EC/571388C2" Ref="Q5"  Part="1" 
AR Path="/56E5EE46/571388C2" Ref="Q7"  Part="1" 
F 0 "Q1" H 4400 5250 50  0000 R CNN
F 1 "Q_NMOS_GDSD" H 4800 5150 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4300 5300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/454169.pdf" H 4100 5200 50  0001 C CNN
F 4 "NXP" H 4100 5200 60  0001 C CNN "Mfg. Name"
F 5 "BSP030,115" H 4100 5200 60  0001 C CNN "Mfg. Part Number"
F 6 "1758077" H 4100 5200 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/nxp/bsp030-115/mosfet-n-kan-30v-10a-sot223/dp/1758077" H 4100 5200 60  0001 C CNN "1st Distrib. Link"
	1    4100 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 5400 4300 5400
$Comp
L Q_NMOS_GDSD Q2
U 1 1 57138A88
P 4600 5200
AR Path="/56E5DF65/57138A88" Ref="Q2"  Part="1" 
AR Path="/56E5E7C1/57138A88" Ref="Q4"  Part="1" 
AR Path="/56E5E9EC/57138A88" Ref="Q6"  Part="1" 
AR Path="/56E5EE46/57138A88" Ref="Q8"  Part="1" 
F 0 "Q2" H 4900 5250 50  0000 R CNN
F 1 "Q_NMOS_GDSD" H 5300 5150 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 4800 5300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/454169.pdf" H 4600 5200 50  0001 C CNN
F 4 "NXP" H 4600 5200 60  0001 C CNN "Mfg. Name"
F 5 "BSP030,115" H 4600 5200 60  0001 C CNN "Mfg. Part Number"
F 6 "1758077" H 4600 5200 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/nxp/bsp030-115/mosfet-n-kan-30v-10a-sot223/dp/1758077" H 4600 5200 60  0001 C CNN "1st Distrib. Link"
	1    4600 5200
	0    -1   1    0   
$EndComp
$EndSCHEMATC
