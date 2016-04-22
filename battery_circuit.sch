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
P 6350 5250
AR Path="/56E5DF65/56E5C3BE" Ref="BT1"  Part="1" 
AR Path="/56E5E7C1/56E5C3BE" Ref="BT2"  Part="1" 
AR Path="/56E5E9EC/56E5C3BE" Ref="BT3"  Part="1" 
AR Path="/56E5EE46/56E5C3BE" Ref="BT4"  Part="1" 
F 0 "BT4" H 6450 5300 50  0000 L CNN
F 1 "Battery" H 6450 5200 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" V 6350 5290 50  0001 C CNN
F 3 "" V 6350 5290 50  0001 C CNN
	1    6350 5250
	1    0    0    -1  
$EndComp
Text HLabel 5900 4000 1    60   BiDi ~ 0
VBAT
$Comp
L GND #PWR6
U 1 1 56E5E3D0
P 2450 5700
AR Path="/56E5DF65/56E5E3D0" Ref="#PWR6"  Part="1" 
AR Path="/56E5E7C1/56E5E3D0" Ref="#PWR7"  Part="1" 
AR Path="/56E5E9EC/56E5E3D0" Ref="#PWR8"  Part="1" 
AR Path="/56E5EE46/56E5E3D0" Ref="#PWR9"  Part="1" 
F 0 "#PWR9" H 2450 5450 50  0001 C CNN
F 1 "GND" H 2450 5550 50  0000 C CNN
F 2 "" H 2450 5700 50  0000 C CNN
F 3 "" H 2450 5700 50  0000 C CNN
	1    2450 5700
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D1
U 1 1 56E5EF28
P 7150 4300
AR Path="/56E5DF65/56E5EF28" Ref="D1"  Part="1" 
AR Path="/56E5E7C1/56E5EF28" Ref="D2"  Part="1" 
AR Path="/56E5E9EC/56E5EF28" Ref="D3"  Part="1" 
AR Path="/56E5EE46/56E5EF28" Ref="D4"  Part="1" 
F 0 "D4" H 7100 4380 50  0000 L CNN
F 1 "Schottky" H 7150 4200 50  0000 C CNN
F 2 "Diodes_SMD:DO-214AB_Handsoldering" V 7150 4300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1912229.pdf" V 5950 4150 50  0001 C CNN
F 4 "Vishay" H 7150 4300 60  0001 C CNN "Mfg. Name"
F 5 "VS-30BQ015TRPBF" H 7150 4300 60  0001 C CNN "Mfg. Part Number"
F 6 "9101250" H 7150 4300 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/vishay-semiconductor/vs-30bq015trpbf/diode-schottky-3a-15v/dp/9101250" H 7150 4300 60  0001 C CNN "1st Distrib. Link"
	1    7150 4300
	-1   0    0    1   
$EndComp
Text HLabel 7450 4300 2    60   Output ~ 0
VSYS
$Comp
L bq2970 U1
U 1 1 5712393D
P 5100 4850
AR Path="/56E5DF65/5712393D" Ref="U1"  Part="1" 
AR Path="/56E5E7C1/5712393D" Ref="U2"  Part="1" 
AR Path="/56E5E9EC/5712393D" Ref="U3"  Part="1" 
AR Path="/56E5EE46/5712393D" Ref="U4"  Part="1" 
F 0 "U4" H 5100 5100 60  0000 C CNN
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
P 2450 4700
AR Path="/56E5DF65/57123C36" Ref="R1"  Part="1" 
AR Path="/56E5E7C1/57123C36" Ref="R3"  Part="1" 
AR Path="/56E5E9EC/57123C36" Ref="R5"  Part="1" 
AR Path="/56E5EE46/57123C36" Ref="R7"  Part="1" 
F 0 "R7" H 2480 4720 50  0000 L CNN
F 1 "2k2" H 2480 4660 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2450 4700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 2450 4700 50  0001 C CNN
F 4 "MULTICOMP" H 2450 4700 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060312K2" H 2450 4700 60  0001 C CNN "Mfg. Part Number"
F 6 "9330810" H 2450 4700 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060312k2/motst-tjockfilm-2k2-1-0-063w-0603/dp/9330810" H 2450 4700 60  0001 C CNN "1st Distrib. Link"
	1    2450 4700
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
F 0 "R8" H 5930 4720 50  0000 L CNN
F 1 "330" H 5930 4660 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5900 4700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 5900 4700 50  0001 C CNN
F 4 "MULTICOMP" H 5900 4700 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W06031330R" H 5900 4700 60  0001 C CNN "Mfg. Part Number"
F 6 "9331018" H 5900 4700 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w06031330r/motst-tjockfilm-330r-1-0-063w/dp/9331018" H 5900 4700 60  0001 C CNN "1st Distrib. Link"
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
F 0 "C4" H 5910 5070 50  0000 L CNN
F 1 "100n" H 5910 4920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5900 5000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1833282.pdf" H 5900 5000 50  0001 C CNN
F 4 "TDK" H 5900 5000 60  0001 C CNN "Mfg. Name"
F 5 "C1608X8R1E104K080AA" H 5900 5000 60  0001 C CNN "Mfg. Part Number"
F 6 "2346915" H 5900 5000 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/tdk/c1608x8r1e104k080aa/cap-mlcc-x8r-100nf-25v-0603/dp/2346915" H 5900 5000 60  0001 C CNN "1st Distrib. Link"
	1    5900 5000
	1    0    0    -1  
$EndComp
Text Notes 3850 4300 0    60   ~ 0
Circuit straight from bq2970 datasheet,\nwith Schottky diode added
Text Notes 3750 6200 0    60   ~ 0
Rds(on) = 50-70 mOhm for Ids = 1 A and Vgs = 3-4 V\nVocd = 100 mV for bq29700\nThis means bq2970 OCD should trigger at around 0.7-1.0 Ampere\ndown to around 0.5 A at 100°C
$Comp
L R_Small R11
U 1 1 57156907
P 2700 5350
AR Path="/56E5E7C1/57156907" Ref="R11"  Part="1" 
AR Path="/56E5DF65/57156907" Ref="R9"  Part="1" 
AR Path="/56E5E9EC/57156907" Ref="R13"  Part="1" 
AR Path="/56E5EE46/57156907" Ref="R15"  Part="1" 
F 0 "R15" H 2730 5370 50  0000 L CNN
F 1 "4M7" H 2730 5310 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2700 5350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 2700 5350 50  0001 C CNN
F 4 "MULTICOMP" H 2700 5350 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060314M70" H 2700 5350 60  0001 C CNN "Mfg. Part Number"
F 6 "2141613" H 2700 5350 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060314m70/motst-tjockfilm-4m7-1-0-063w-0603/dp/2141613" H 2700 5350 60  0001 C CNN "1st Distrib. Link"
	1    2700 5350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 57156CB3
P 3700 5350
AR Path="/56E5DF65/57156CB3" Ref="R10"  Part="1" 
AR Path="/56E5E7C1/57156CB3" Ref="R12"  Part="1" 
AR Path="/56E5E9EC/57156CB3" Ref="R14"  Part="1" 
AR Path="/56E5EE46/57156CB3" Ref="R16"  Part="1" 
F 0 "R16" H 3730 5370 50  0000 L CNN
F 1 "4M7" H 3730 5310 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3700 5350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 3700 5350 50  0001 C CNN
F 4 "MULTICOMP" H 3700 5350 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060314M70" H 3700 5350 60  0001 C CNN "Mfg. Part Number"
F 6 "2141613" H 3700 5350 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060314m70/motst-tjockfilm-4m7-1-0-063w-0603/dp/2141613" H 3700 5350 60  0001 C CNN "1st Distrib. Link"
	1    3700 5350
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDSD Q2
U 1 1 57138A88
P 3450 5550
AR Path="/56E5DF65/57138A88" Ref="Q2"  Part="1" 
AR Path="/56E5E7C1/57138A88" Ref="Q4"  Part="1" 
AR Path="/56E5E9EC/57138A88" Ref="Q6"  Part="1" 
AR Path="/56E5EE46/57138A88" Ref="Q8"  Part="1" 
F 0 "Q8" H 3750 5600 50  0000 R CNN
F 1 "Q_NMOS_GDSD" H 4150 5500 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3650 5650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/454169.pdf" H 3450 5550 50  0001 C CNN
F 4 "NXP" H 3450 5550 60  0001 C CNN "Mfg. Name"
F 5 "BSP030,115" H 3450 5550 60  0001 C CNN "Mfg. Part Number"
F 6 "1758077" H 3450 5550 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/nxp/bsp030-115/mosfet-n-kan-30v-10a-sot223/dp/1758077" H 3450 5550 60  0001 C CNN "1st Distrib. Link"
	1    3450 5550
	0    -1   1    0   
$EndComp
$Comp
L Q_NMOS_GDSD Q1
U 1 1 571388C2
P 2950 5550
AR Path="/56E5DF65/571388C2" Ref="Q1"  Part="1" 
AR Path="/56E5E7C1/571388C2" Ref="Q3"  Part="1" 
AR Path="/56E5E9EC/571388C2" Ref="Q5"  Part="1" 
AR Path="/56E5EE46/571388C2" Ref="Q7"  Part="1" 
F 0 "Q7" H 3250 5600 50  0000 R CNN
F 1 "Q_NMOS_GDSD" H 3650 5500 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 3150 5650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/454169.pdf" H 2950 5550 50  0001 C CNN
F 4 "NXP" H 2950 5550 60  0001 C CNN "Mfg. Name"
F 5 "BSP030,115" H 2950 5550 60  0001 C CNN "Mfg. Part Number"
F 6 "1758077" H 2950 5550 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/nxp/bsp030-115/mosfet-n-kan-30v-10a-sot223/dp/1758077" H 2950 5550 60  0001 C CNN "1st Distrib. Link"
	1    2950 5550
	0    1    1    0   
$EndComp
$Comp
L Led_Small D9
U 1 1 571953BE
P 4100 5150
AR Path="/56E5DF65/571953BE" Ref="D9"  Part="1" 
AR Path="/56E5E7C1/571953BE" Ref="D12"  Part="1" 
AR Path="/56E5E9EC/571953BE" Ref="D15"  Part="1" 
AR Path="/56E5EE46/571953BE" Ref="D18"  Part="1" 
F 0 "D18" H 4050 5275 50  0000 L CNN
F 1 "GREEN" H 3950 5050 50  0000 L CNN
F 2 "LEDs:LED_0603" V 4100 5150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/485053.pdf" V 4100 5150 50  0001 C CNN
F 4 "VISHAY" H 4100 5150 60  0001 C CNN "Mfg. Name"
F 5 "TLMP1100-GS08" H 4100 5150 60  0001 C CNN "Mfg. Part Number"
F 6 "1328306" H 4100 5150 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/vishay/tlmp1100-gs08/led-0603-green/dp/1328306" H 4100 5150 60  0001 C CNN "1st Distrib. Link"
	1    4100 5150
	0    -1   -1   0   
$EndComp
$Comp
L Led_Small D10
U 1 1 5719541F
P 4450 5150
AR Path="/56E5DF65/5719541F" Ref="D10"  Part="1" 
AR Path="/56E5E7C1/5719541F" Ref="D13"  Part="1" 
AR Path="/56E5E9EC/5719541F" Ref="D16"  Part="1" 
AR Path="/56E5EE46/5719541F" Ref="D19"  Part="1" 
F 0 "D19" H 4400 5275 50  0000 L CNN
F 1 "RED" H 4400 5050 50  0000 L CNN
F 2 "LEDs:LED_0603" V 4450 5150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1698881.pdf" V 4450 5150 50  0001 C CNN
F 4 "VISHAY" H 4450 5150 60  0001 C CNN "Mfg. Name"
F 5 "TLMS1000-GS08" H 4450 5150 60  0001 C CNN "Mfg. Part Number"
F 6 "1328308" H 4450 5150 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/vishay/tlms1000-gs08/led-0603-red-4mcd-628nm/dp/1328308" H 4450 5150 60  0001 C CNN "1st Distrib. Link"
	1    4450 5150
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R17
U 1 1 571954D6
P 4100 5450
AR Path="/56E5DF65/571954D6" Ref="R17"  Part="1" 
AR Path="/56E5E7C1/571954D6" Ref="R20"  Part="1" 
AR Path="/56E5E9EC/571954D6" Ref="R23"  Part="1" 
AR Path="/56E5EE46/571954D6" Ref="R26"  Part="1" 
F 0 "R26" H 4130 5470 50  0000 L CNN
F 1 "2k2" H 4130 5410 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4100 5450 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 4100 5450 50  0001 C CNN
F 4 "MULTICOMP" H 4100 5450 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060312K2" H 4100 5450 60  0001 C CNN "Mfg. Part Number"
F 6 "9330810" H 4100 5450 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060312k2/motst-tjockfilm-2k2-1-0-063w-0603/dp/9330810" H 4100 5450 60  0001 C CNN "1st Distrib. Link"
	1    4100 5450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R18
U 1 1 5719556D
P 4450 5450
AR Path="/56E5DF65/5719556D" Ref="R18"  Part="1" 
AR Path="/56E5E7C1/5719556D" Ref="R21"  Part="1" 
AR Path="/56E5E9EC/5719556D" Ref="R24"  Part="1" 
AR Path="/56E5EE46/5719556D" Ref="R27"  Part="1" 
F 0 "R27" H 4480 5470 50  0000 L CNN
F 1 "2k2" H 4480 5410 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4450 5450 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 4450 5450 50  0001 C CNN
F 4 "MULTICOMP" H 4450 5450 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060312K2" H 4450 5450 60  0001 C CNN "Mfg. Part Number"
F 6 "9330810" H 4450 5450 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060312k2/motst-tjockfilm-2k2-1-0-063w-0603/dp/9330810" H 4450 5450 60  0001 C CNN "1st Distrib. Link"
	1    4450 5450
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D11
U 1 1 57195FD3
P 6900 4800
AR Path="/56E5DF65/57195FD3" Ref="D11"  Part="1" 
AR Path="/56E5E7C1/57195FD3" Ref="D14"  Part="1" 
AR Path="/56E5E9EC/57195FD3" Ref="D17"  Part="1" 
AR Path="/56E5EE46/57195FD3" Ref="D20"  Part="1" 
F 0 "D20" H 6850 4925 50  0000 L CNN
F 1 "ORANGE" H 6750 4700 50  0000 L CNN
F 2 "LEDs:LED_0603" V 6900 4800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/485055.pdf" V 6900 4800 50  0001 C CNN
F 4 "VISHAY" H 6900 4800 60  0001 C CNN "Mfg. Name"
F 5 "TLMO1000-GS08" H 6900 4800 60  0001 C CNN "Mfg. Part Number"
F 6 "1328307" H 6900 4800 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/vishay/tlmo1000-gs08/led-0603-orange/dp/1328307" H 6900 4800 60  0001 C CNN "1st Distrib. Link"
	1    6900 4800
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R19
U 1 1 57196042
P 6900 5100
AR Path="/56E5DF65/57196042" Ref="R19"  Part="1" 
AR Path="/56E5E7C1/57196042" Ref="R22"  Part="1" 
AR Path="/56E5E9EC/57196042" Ref="R25"  Part="1" 
AR Path="/56E5EE46/57196042" Ref="R28"  Part="1" 
F 0 "R28" H 6930 5120 50  0000 L CNN
F 1 "2k2" H 6930 5060 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6900 5100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 6900 5100 50  0001 C CNN
F 4 "MULTICOMP" H 6900 5100 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060312K2" H 6900 5100 60  0001 C CNN "Mfg. Part Number"
F 6 "9330810" H 6900 5100 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060312k2/motst-tjockfilm-2k2-1-0-063w-0603/dp/9330810" H 6900 5100 60  0001 C CNN "1st Distrib. Link"
	1    6900 5100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P8
U 1 1 57196338
P 6550 4700
AR Path="/56E5DF65/57196338" Ref="P8"  Part="1" 
AR Path="/56E5E7C1/57196338" Ref="P9"  Part="1" 
AR Path="/56E5E9EC/57196338" Ref="P10"  Part="1" 
AR Path="/56E5EE46/57196338" Ref="P11"  Part="1" 
F 0 "P11" H 6550 4850 50  0000 C CNN
F 1 "CONN_01X02" V 6650 4700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6550 4700 50  0001 C CNN
F 3 "" H 6550 4700 50  0000 C CNN
	1    6550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4850 5900 4850
Wire Wire Line
	5900 4800 5900 4900
Connection ~ 5900 4850
Wire Wire Line
	2950 4850 2950 5350
Wire Wire Line
	2450 4800 2450 5700
Wire Wire Line
	5600 4450 5600 4750
Wire Wire Line
	5600 4750 5550 4750
Wire Wire Line
	5900 5650 5900 5100
Wire Wire Line
	5550 4950 5600 4950
Wire Wire Line
	5600 4950 5600 5650
Wire Wire Line
	5900 4000 5900 4600
Connection ~ 5900 4300
Connection ~ 6350 4300
Wire Wire Line
	7250 4300 7450 4300
Wire Wire Line
	5900 4300 7050 4300
Wire Wire Line
	2450 4600 2450 4450
Wire Wire Line
	3150 5650 3250 5650
Wire Wire Line
	3150 5750 3250 5750
Wire Wire Line
	3200 5750 3200 5650
Connection ~ 3200 5650
Connection ~ 3200 5750
Wire Wire Line
	3450 4950 3450 5350
Wire Wire Line
	4100 5250 4100 5350
Wire Wire Line
	4450 5250 4450 5350
Wire Wire Line
	2450 5650 2750 5650
Connection ~ 2450 5650
Wire Wire Line
	2450 4450 5600 4450
Connection ~ 2700 5650
Wire Wire Line
	2950 4850 4650 4850
Wire Wire Line
	2700 5250 2700 5200
Wire Wire Line
	2700 5200 2950 5200
Connection ~ 2950 5200
Wire Wire Line
	2700 5450 2700 5650
Wire Wire Line
	3700 5250 3700 5200
Wire Wire Line
	3700 5200 3450 5200
Connection ~ 3450 5200
Wire Wire Line
	3450 4950 4650 4950
Wire Wire Line
	3700 5450 3700 5650
Wire Wire Line
	3650 5650 6900 5650
Wire Wire Line
	4100 5050 4100 4850
Connection ~ 4100 4850
Wire Wire Line
	4450 5050 4450 4950
Connection ~ 4450 4950
Connection ~ 3700 5650
Connection ~ 5600 5650
Connection ~ 5900 5650
Wire Wire Line
	4100 5550 4100 5650
Connection ~ 4100 5650
Wire Wire Line
	4450 5550 4450 5650
Connection ~ 4450 5650
Wire Wire Line
	6900 4900 6900 5000
Wire Wire Line
	6900 5650 6900 5200
Connection ~ 6350 5650
Wire Wire Line
	6900 4700 6900 4300
Connection ~ 6900 4300
Wire Wire Line
	6350 5400 6350 5650
Wire Wire Line
	6350 4650 6350 4300
Wire Wire Line
	6350 4750 6350 5100
$EndSCHEMATC
