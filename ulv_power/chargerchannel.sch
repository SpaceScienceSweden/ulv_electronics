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
LIBS:scube
LIBS:ulv_power-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 8350 2050 2    60   Output ~ 0
VSYS
Text HLabel 8350 1850 2    60   Input ~ 0
RUN
$Comp
L C_Small C1
U 1 1 56DC5F55
P 3200 3700
AR Path="/56E7F686/56DC5F55" Ref="C1"  Part="1" 
AR Path="/56E7F67D/56DC5F55" Ref="C6"  Part="1" 
AR Path="/56E7E09A/56DC5F55" Ref="C11"  Part="1" 
AR Path="/56DC5239/56DC5F55" Ref="C16"  Part="1" 
F 0 "C16" H 3210 3770 50  0000 L CNN
F 1 "2.2uF" H 3210 3620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3200 3700 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1796654.pdf" H 3200 3700 60  0001 C CNN
F 4 "TDK" H 3200 3700 60  0001 C CNN "Mfg. Name"
F 5 "C1608X7R1A225K080AC" H 3200 3700 60  0001 C CNN "Mfg. Part Number"
F 6 "2346896" H 3200 3700 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/tdk/c1608x7r1a225k080ac/cap-mlcc-x7r-2-2uf-10v-0603/dp/2346896" H 3200 3700 60  0001 C CNN "1st Distrib. Link"
	1    3200 3700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 56DC5FEB
P 3200 4150
AR Path="/56E7F686/56DC5FEB" Ref="#PWR02"  Part="1" 
AR Path="/56E7F67D/56DC5FEB" Ref="#PWR014"  Part="1" 
AR Path="/56E7E09A/56DC5FEB" Ref="#PWR026"  Part="1" 
AR Path="/56DC5239/56DC5FEB" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 3200 3900 50  0001 C CNN
F 1 "GND" H 3200 4000 50  0000 C CNN
F 2 "" H 3200 4150 60  0000 C CNN
F 3 "" H 3200 4150 60  0000 C CNN
	1    3200 4150
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 56DC602F
P 3550 3800
AR Path="/56E7F686/56DC602F" Ref="C2"  Part="1" 
AR Path="/56E7F67D/56DC602F" Ref="C7"  Part="1" 
AR Path="/56E7E09A/56DC602F" Ref="C12"  Part="1" 
AR Path="/56DC5239/56DC602F" Ref="C17"  Part="1" 
F 0 "C17" H 3560 3870 50  0000 L CNN
F 1 "22nF" H 3560 3720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3550 3800 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1958513.pdf" H 3550 3800 60  0001 C CNN
F 4 "WALSIN" H 3550 3800 60  0001 C CNN "Mfg. Name"
F 5 "0603B223K250CT" H 3550 3800 60  0001 C CNN "Mfg. Part Number"
F 6 "2496846" H 3550 3800 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/walsin/0603b223k250ct/kond-mlcc-x7r-0-022-f-25v-0603/dp/2496846" H 3550 3800 60  0001 C CNN "1st Distrib. Link"
	1    3550 3800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 56DC62AD
P 4900 2950
AR Path="/56E7F686/56DC62AD" Ref="#PWR03"  Part="1" 
AR Path="/56E7F67D/56DC62AD" Ref="#PWR015"  Part="1" 
AR Path="/56E7E09A/56DC62AD" Ref="#PWR027"  Part="1" 
AR Path="/56DC5239/56DC62AD" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 4900 2700 50  0001 C CNN
F 1 "GND" H 4900 2800 50  0000 C CNN
F 2 "" H 4900 2950 60  0000 C CNN
F 3 "" H 4900 2950 60  0000 C CNN
	1    4900 2950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 56DC648D
P 4250 4100
AR Path="/56E7F686/56DC648D" Ref="#PWR04"  Part="1" 
AR Path="/56E7F67D/56DC648D" Ref="#PWR016"  Part="1" 
AR Path="/56E7E09A/56DC648D" Ref="#PWR028"  Part="1" 
AR Path="/56DC5239/56DC648D" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 4250 3850 50  0001 C CNN
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
AR Path="/56E7F686/56DC65AC" Ref="R3"  Part="1" 
AR Path="/56E7F67D/56DC65AC" Ref="R13"  Part="1" 
AR Path="/56E7E09A/56DC65AC" Ref="R23"  Part="1" 
AR Path="/56DC5239/56DC65AC" Ref="R33"  Part="1" 
F 0 "R33" H 5030 4670 50  0000 L CNN
F 1 "10.0k" H 5030 4610 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5000 4650 60  0001 C CNN
F 3 "" H 5000 4650 60  0000 C CNN
	1    5000 4650
	0    1    1    0   
$EndComp
$Comp
L R_Small R4
U 1 1 56DC65F7
P 5250 4850
AR Path="/56E7F686/56DC65F7" Ref="R4"  Part="1" 
AR Path="/56E7F67D/56DC65F7" Ref="R14"  Part="1" 
AR Path="/56E7E09A/56DC65F7" Ref="R24"  Part="1" 
AR Path="/56DC5239/56DC65F7" Ref="R34"  Part="1" 
F 0 "R34" H 5280 4870 50  0000 L CNN
F 1 "1.67k" H 5280 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5250 4850 60  0001 C CNN
F 3 "" H 5250 4850 60  0000 C CNN
	1    5250 4850
	1    0    0    -1  
$EndComp
Text Notes 4750 5450 0    60   ~ 0
V_MP = V_OC * 0.7\nOmit resistor to GND to disable MPPT feature
$Comp
L GND #PWR05
U 1 1 56DC670D
P 5250 5050
AR Path="/56E7F686/56DC670D" Ref="#PWR05"  Part="1" 
AR Path="/56E7F67D/56DC670D" Ref="#PWR017"  Part="1" 
AR Path="/56E7E09A/56DC670D" Ref="#PWR029"  Part="1" 
AR Path="/56DC5239/56DC670D" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 5250 4800 50  0001 C CNN
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
AR Path="/56E7F686/56DC6B00" Ref="L1"  Part="1" 
AR Path="/56E7F67D/56DC6B00" Ref="L2"  Part="1" 
AR Path="/56E7E09A/56DC6B00" Ref="L3"  Part="1" 
AR Path="/56DC5239/56DC6B00" Ref="L4"  Part="1" 
F 0 "L4" H 4930 4490 50  0000 L CNN
F 1 "12uH" H 4930 4410 50  0000 L CNN
F 2 "Bourns:SDE0805A" H 4900 4450 60  0001 C CNN
F 3 "http://www.bourns.com/docs/Product-Datasheets/SDE0805A.pdf" H 4900 4450 60  0001 C CNN
F 4 "Bourns" H 4900 4450 60  0001 C CNN "Mfg. Name"
F 5 "SDE0805A-120M" H 4900 4450 60  0001 C CNN "Mfg. Part Number"
F 6 "2454975" H 4900 4450 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/bourns/sde0805a-120m/induktanssp-osk-rmad-12uh-20-3a/dp/2454975?ost=SDE0805A-120M&selectedCategoryId=&categoryNameResp=Alla%2Bkategorier" H 4900 4450 60  0001 C CNN "1st Distrib. Link"
	1    4900 4450
	0    -1   -1   0   
$EndComp
Text Notes 5350 4550 0    60   ~ 0
1.5 MHz switching frequency
Text Notes 2550 5300 0    60   ~ 0
V_MAX = 8V\nL_SW >= (V_MAX - V_FLOAT) * V_FLOAT /\n(f_OSC * V_MAX * (30% * I_CHG))\n= 11.1 µH
Text Notes 2550 4800 0    60   ~ 0
IN filter cap must not be too large,\nor VOC sampling will not work correctly
$Comp
L R_Small R6
U 1 1 56DC81E3
P 6450 4000
AR Path="/56E7F686/56DC81E3" Ref="R6"  Part="1" 
AR Path="/56E7F67D/56DC81E3" Ref="R16"  Part="1" 
AR Path="/56E7E09A/56DC81E3" Ref="R26"  Part="1" 
AR Path="/56DC5239/56DC81E3" Ref="R36"  Part="1" 
F 0 "R36" H 6480 4020 50  0000 L CNN
F 1 "470k" H 6480 3960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6450 4000 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 6450 4000 60  0001 C CNN
F 4 "MULTICOMP" H 6450 4000 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W06031470K" H 6450 4000 60  0001 C CNN "Mfg. Part Number"
F 6 "9331263RL" H 6450 4000 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w06031470k/motst-tjockfilm-470k-1-0-063w/dp/9331263RL" H 6450 4000 60  0001 C CNN "1st Distrib. Link"
	1    6450 4000
	0    1    1    0   
$EndComp
$Comp
L C_Small C4
U 1 1 56DC84CE
P 6200 4200
AR Path="/56E7F686/56DC84CE" Ref="C4"  Part="1" 
AR Path="/56E7F67D/56DC84CE" Ref="C9"  Part="1" 
AR Path="/56E7E09A/56DC84CE" Ref="C14"  Part="1" 
AR Path="/56DC5239/56DC84CE" Ref="C19"  Part="1" 
F 0 "C19" H 6210 4270 50  0000 L CNN
F 1 "4.7uF" H 6210 4120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6200 4200 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1913358.pdf" H 6200 4200 60  0001 C CNN
F 4 "TDK" H 6200 4200 60  0001 C CNN "Mfg. Name"
F 5 "C1608X7S1A475K080AC" H 6200 4200 60  0001 C CNN "Mfg. Part Number"
F 6 "2528771" H 6200 4200 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/tdk/c1608x7s1a475k080ac/kond-mlcc-x7s-4-7-f-10v-0603/dp/2528771" H 6200 4200 60  0001 C CNN "1st Distrib. Link"
	1    6200 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56DC8573
P 6200 4300
AR Path="/56E7F686/56DC8573" Ref="#PWR06"  Part="1" 
AR Path="/56E7F67D/56DC8573" Ref="#PWR018"  Part="1" 
AR Path="/56E7E09A/56DC8573" Ref="#PWR030"  Part="1" 
AR Path="/56DC5239/56DC8573" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 6200 4050 50  0001 C CNN
F 1 "GND" H 6200 4150 50  0000 C CNN
F 2 "" H 6200 4300 60  0000 C CNN
F 3 "" H 6200 4300 60  0000 C CNN
	1    6200 4300
	1    0    0    -1  
$EndComp
$Comp
L R_Small R5
U 1 1 56DC881A
P 5600 2850
AR Path="/56E7F686/56DC881A" Ref="R5"  Part="1" 
AR Path="/56E7F67D/56DC881A" Ref="R15"  Part="1" 
AR Path="/56E7E09A/56DC881A" Ref="R25"  Part="1" 
AR Path="/56DC5239/56DC881A" Ref="R35"  Part="1" 
F 0 "R35" H 5630 2870 50  0000 L CNN
F 1 "3.01k" H 5630 2810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5600 2850 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 5600 2850 60  0001 C CNN
F 4 "MULTICOMP" H 5600 2850 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060313K01" H 5600 2850 60  0001 C CNN "Mfg. Part Number"
F 6 "1170836RL" H 5600 2850 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060313k01/motst-tjockfilm-3k01-1-0-063w/dp/1170836RL" H 5600 2850 60  0001 C CNN "1st Distrib. Link"
	1    5600 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 56DC88BE
P 5800 2900
AR Path="/56E7F686/56DC88BE" Ref="#PWR07"  Part="1" 
AR Path="/56E7F67D/56DC88BE" Ref="#PWR019"  Part="1" 
AR Path="/56E7E09A/56DC88BE" Ref="#PWR031"  Part="1" 
AR Path="/56DC5239/56DC88BE" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 5800 2650 50  0001 C CNN
F 1 "GND" H 5800 2750 50  0000 C CNN
F 2 "" H 5800 2900 60  0000 C CNN
F 3 "" H 5800 2900 60  0000 C CNN
	1    5800 2900
	1    0    0    -1  
$EndComp
Text Notes 5500 2800 0    60   ~ 0
3.01 k -> 400 mA
$Comp
L R_Small R7
U 1 1 56DC8BF3
P 6700 2250
AR Path="/56E7F686/56DC8BF3" Ref="R7"  Part="1" 
AR Path="/56E7F67D/56DC8BF3" Ref="R17"  Part="1" 
AR Path="/56E7E09A/56DC8BF3" Ref="R27"  Part="1" 
AR Path="/56DC5239/56DC8BF3" Ref="R37"  Part="1" 
F 0 "R37" V 6900 2200 50  0000 L CNN
F 1 "47k" V 6800 2200 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6700 2250 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 6700 2250 60  0001 C CNN
F 4 "MULTICOMP" H 6700 2250 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W0603147K" H 6700 2250 60  0001 C CNN "Mfg. Part Number"
F 6 "9331255RL" H 6700 2250 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w0603147k/motst-tjockfilm-47k-1-0-063w-0603/dp/9331255RL" H 6700 2250 60  0001 C CNN "1st Distrib. Link"
	1    6700 2250
	1    0    0    -1  
$EndComp
Text HLabel 8350 2900 2    60   Output ~ 0
/CHRG
Text HLabel 8350 2700 2    60   Output ~ 0
/FAULT
$Comp
L GND #PWR08
U 1 1 56DCB472
P 4700 2650
AR Path="/56E7F686/56DCB472" Ref="#PWR08"  Part="1" 
AR Path="/56E7F67D/56DCB472" Ref="#PWR020"  Part="1" 
AR Path="/56E7E09A/56DCB472" Ref="#PWR032"  Part="1" 
AR Path="/56DC5239/56DCB472" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 4700 2400 50  0001 C CNN
F 1 "GND" H 4700 2500 50  0000 C CNN
F 2 "" H 4700 2650 60  0000 C CNN
F 3 "" H 4700 2650 60  0000 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
Text Notes 3200 2250 0    60   ~ 0
Turn charger on when solar panel reaches 4.9 V\nTurn off when below 4.9*(2.25/2.45) = 4.5 V\nEnter low-power mode when input voltage < 0.7/2.45*4.9 = 1.4 V
Text HLabel 8350 3750 2    60   Output ~ 0
VBAT
Text HLabel 3300 2350 0    60   Input ~ 0
PV_IN
Text HLabel 8350 3400 2    60   Input ~ 0
NTC
$Comp
L LTC4121-4.2 U1
U 1 1 56DC5B05
P 5300 3650
AR Path="/56E7F686/56DC5B05" Ref="U1"  Part="1" 
AR Path="/56E7F67D/56DC5B05" Ref="U2"  Part="1" 
AR Path="/56E7E09A/56DC5B05" Ref="U3"  Part="1" 
AR Path="/56DC5239/56DC5B05" Ref="U4"  Part="1" 
F 0 "U4" H 5300 3550 60  0000 C CNN
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
L R_Small R9
U 1 1 56E70141
P 7850 3600
AR Path="/56E7F686/56E70141" Ref="R9"  Part="1" 
AR Path="/56E7F67D/56E70141" Ref="R19"  Part="1" 
AR Path="/56E7E09A/56E70141" Ref="R29"  Part="1" 
AR Path="/56DC5239/56E70141" Ref="R39"  Part="1" 
F 0 "R39" H 7880 3620 50  0000 L CNN
F 1 "8k2" V 7750 3500 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7850 3600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 7850 3600 50  0001 C CNN
F 4 "MULTICOMP" H 7850 3600 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060318K2" H 7850 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "9331565RL" H 7850 3600 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060318k2/motst-tjockfilm-8k2-1-0-063w-0603/dp/9331565RL" H 7850 3600 60  0001 C CNN "1st Distrib. Link"
	1    7850 3600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R10
U 1 1 56E7019B
P 8100 3400
AR Path="/56E7F686/56E7019B" Ref="R10"  Part="1" 
AR Path="/56E7F67D/56E7019B" Ref="R20"  Part="1" 
AR Path="/56E7E09A/56E7019B" Ref="R30"  Part="1" 
AR Path="/56DC5239/56E7019B" Ref="R40"  Part="1" 
F 0 "R40" V 8200 3350 50  0000 L CNN
F 1 "619" V 8000 3350 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8100 3400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 8100 3400 50  0001 C CNN
F 4 "MULTICOMP" H 8100 3400 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W06031619R" H 8100 3400 60  0001 C CNN "Mfg. Part Number"
F 6 "1170768" H 8100 3400 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w06031619r/motst-tjockfilm-619r-1-0-063w/dp/1170768" H 8100 3400 60  0001 C CNN "1st Distrib. Link"
	1    8100 3400
	0    1    1    0   
$EndComp
Text Notes 8650 3550 0    60   ~ 0
B25/85 = 3490, 10 kOhm\nExample: Vishay NTCS0402E3103*LT\nTemperature range set to +5..+50°C
Text Notes 4750 5700 0    60   ~ 0
TODO: Set VOC manually? For instance via a small voltage reference\nSources say VOC isn't terribly dependent on insolation
$Comp
L Led_Small D7
U 1 1 571ABDA0
P 7250 2250
AR Path="/56DC5239/571ABDA0" Ref="D7"  Part="1" 
AR Path="/56E7F686/571ABDA0" Ref="D1"  Part="1" 
AR Path="/56E7F67D/571ABDA0" Ref="D3"  Part="1" 
AR Path="/56E7E09A/571ABDA0" Ref="D5"  Part="1" 
F 0 "D7" H 7200 2375 50  0000 L CNN
F 1 "RED" H 7200 2150 50  0000 L CNN
F 2 "LEDs:LED_0603" V 7250 2250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1698881.pdf" V 7250 2250 50  0001 C CNN
F 4 "VISHAY" H 7250 2250 60  0001 C CNN "Mfg. Name"
F 5 "TLMS1000-GS08" H 7250 2250 60  0001 C CNN "Mfg. Part Number"
F 6 "1328308" H 7250 2250 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/vishay/tlms1000-gs08/led-0603-red-4mcd-628nm/dp/1328308" H 7250 2250 60  0001 C CNN "1st Distrib. Link"
	1    7250 2250
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R47
U 1 1 571ABF1A
P 7250 2500
AR Path="/56DC5239/571ABF1A" Ref="R47"  Part="1" 
AR Path="/56E7F686/571ABF1A" Ref="R41"  Part="1" 
AR Path="/56E7F67D/571ABF1A" Ref="R43"  Part="1" 
AR Path="/56E7E09A/571ABF1A" Ref="R45"  Part="1" 
F 0 "R47" V 7350 2450 50  0000 L CNN
F 1 "2k2" V 7150 2450 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7250 2500 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 7250 2500 60  0001 C CNN
F 4 "MULTICOMP" H 7250 2500 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060312K2" H 7250 2500 60  0001 C CNN "Mfg. Part Number"
F 6 "9330810" H 7250 2500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060312k2/motst-tjockfilm-2k2-1-0-063w-0603/dp/9330810" H 7250 2500 60  0001 C CNN "1st Distrib. Link"
	1    7250 2500
	-1   0    0    1   
$EndComp
$Comp
L Led_Small D8
U 1 1 571AC216
P 7600 2250
AR Path="/56DC5239/571AC216" Ref="D8"  Part="1" 
AR Path="/56E7F686/571AC216" Ref="D2"  Part="1" 
AR Path="/56E7F67D/571AC216" Ref="D4"  Part="1" 
AR Path="/56E7E09A/571AC216" Ref="D6"  Part="1" 
F 0 "D8" H 7550 2375 50  0000 L CNN
F 1 "GREEN" H 7450 2150 50  0000 L CNN
F 2 "LEDs:LED_0603" V 7600 2250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/485053.pdf" V 7600 2250 50  0001 C CNN
F 4 "VISHAY" H 7600 2250 60  0001 C CNN "Mfg. Name"
F 5 "TLMP1100-GS08" H 7600 2250 60  0001 C CNN "Mfg. Part Number"
F 6 "1328306" H 7600 2250 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/vishay/tlmp1100-gs08/led-0603-green/dp/1328306" H 7600 2250 60  0001 C CNN "1st Distrib. Link"
	1    7600 2250
	0    -1   -1   0   
$EndComp
$Comp
L Q_PMOS_GDSD Q4
U 1 1 571AD143
P 6450 3700
AR Path="/56DC5239/571AD143" Ref="Q4"  Part="1" 
AR Path="/56E7F686/571AD143" Ref="Q1"  Part="1" 
AR Path="/56E7F67D/571AD143" Ref="Q2"  Part="1" 
AR Path="/56E7E09A/571AD143" Ref="Q3"  Part="1" 
F 0 "Q4" V 6350 3550 50  0000 R CNN
F 1 "FDT434P" V 6250 3650 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 6650 3800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1725655.pdf" H 6450 3700 50  0001 C CNN
F 4 "Fairchild" H 6450 3700 60  0001 C CNN "Mfg. Name"
F 5 "FDT434P" H 6450 3700 60  0001 C CNN "Mfg. Part Number"
F 6 "1611577" H 6450 3700 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/fairchild-semiconductor/fdt434p/mosfet-p/dp/1611577" H 6450 3700 60  0001 C CNN "1st Distrib. Link"
	1    6450 3700
	0    -1   1    0   
$EndComp
$Comp
L R_Small R48
U 1 1 571AE41C
P 7600 2500
AR Path="/56DC5239/571AE41C" Ref="R48"  Part="1" 
AR Path="/56E7F686/571AE41C" Ref="R42"  Part="1" 
AR Path="/56E7F67D/571AE41C" Ref="R44"  Part="1" 
AR Path="/56E7E09A/571AE41C" Ref="R46"  Part="1" 
F 0 "R48" V 7700 2450 50  0000 L CNN
F 1 "2k2" V 7500 2450 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7600 2500 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 7600 2500 60  0001 C CNN
F 4 "MULTICOMP" H 7600 2500 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060312K2" H 7600 2500 60  0001 C CNN "Mfg. Part Number"
F 6 "9330810" H 7600 2500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060312k2/motst-tjockfilm-2k2-1-0-063w-0603/dp/9330810" H 7600 2500 60  0001 C CNN "1st Distrib. Link"
	1    7600 2500
	-1   0    0    1   
$EndComp
$Comp
L R_Small R8
U 1 1 571AE916
P 6700 3200
AR Path="/56E7F686/571AE916" Ref="R8"  Part="1" 
AR Path="/56E7F67D/571AE916" Ref="R18"  Part="1" 
AR Path="/56E7E09A/571AE916" Ref="R28"  Part="1" 
AR Path="/56DC5239/571AE916" Ref="R38"  Part="1" 
F 0 "R38" V 6900 3150 50  0000 L CNN
F 1 "47k" V 6800 3150 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6700 3200 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 6700 3200 60  0001 C CNN
F 4 "MULTICOMP" H 6700 3200 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W0603147K" H 6700 3200 60  0001 C CNN "Mfg. Part Number"
F 6 "9331255RL" H 6700 3200 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w0603147k/motst-tjockfilm-47k-1-0-063w-0603/dp/9331255RL" H 6700 3200 60  0001 C CNN "1st Distrib. Link"
	1    6700 3200
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R32
U 1 1 571AECEB
P 4700 2550
AR Path="/56DC5239/571AECEB" Ref="R32"  Part="1" 
AR Path="/56E7F686/571AECEB" Ref="R2"  Part="1" 
AR Path="/56E7F67D/571AECEB" Ref="R12"  Part="1" 
AR Path="/56E7E09A/571AECEB" Ref="R22"  Part="1" 
F 0 "R32" V 4900 2500 50  0000 L CNN
F 1 "47k" V 4800 2500 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4700 2550 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 4700 2550 60  0001 C CNN
F 4 "MULTICOMP" H 4700 2550 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W0603147K" H 4700 2550 60  0001 C CNN "Mfg. Part Number"
F 6 "9331255RL" H 4700 2550 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w0603147k/motst-tjockfilm-47k-1-0-063w-0603/dp/9331255RL" H 4700 2550 60  0001 C CNN "1st Distrib. Link"
	1    4700 2550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R31
U 1 1 571AEFA0
P 4500 2350
AR Path="/56DC5239/571AEFA0" Ref="R31"  Part="1" 
AR Path="/56E7F686/571AEFA0" Ref="R1"  Part="1" 
AR Path="/56E7F67D/571AEFA0" Ref="R11"  Part="1" 
AR Path="/56E7E09A/571AEFA0" Ref="R21"  Part="1" 
F 0 "R31" V 4700 2300 50  0000 L CNN
F 1 "47k" V 4600 2300 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4500 2350 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 4500 2350 60  0001 C CNN
F 4 "MULTICOMP" H 4500 2350 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W0603147K" H 4500 2350 60  0001 C CNN "Mfg. Part Number"
F 6 "9331255RL" H 4500 2350 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w0603147k/motst-tjockfilm-47k-1-0-063w-0603/dp/9331255RL" H 4500 2350 60  0001 C CNN "1st Distrib. Link"
	1    4500 2350
	0    1    1    0   
$EndComp
$Comp
L C_Small C32
U 1 1 571AFC75
P 4250 4000
AR Path="/56DC5239/571AFC75" Ref="C32"  Part="1" 
AR Path="/56E7F686/571AFC75" Ref="C5"  Part="1" 
AR Path="/56E7F67D/571AFC75" Ref="C20"  Part="1" 
AR Path="/56E7E09A/571AFC75" Ref="C26"  Part="1" 
F 0 "C32" H 4260 4070 50  0000 L CNN
F 1 "4.7uF" H 4260 3920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4250 4000 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1913358.pdf" H 4250 4000 60  0001 C CNN
F 4 "TDK" H 4250 4000 60  0001 C CNN "Mfg. Name"
F 5 "C1608X7S1A475K080AC" H 4250 4000 60  0001 C CNN "Mfg. Part Number"
F 6 "2528771" H 4250 4000 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/tdk/c1608x7s1a475k080ac/kond-mlcc-x7s-4-7-f-10v-0603/dp/2528771" H 4250 4000 60  0001 C CNN "1st Distrib. Link"
	1    4250 4000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 571AFCF7
P 3950 4000
AR Path="/56E7F686/571AFCF7" Ref="C3"  Part="1" 
AR Path="/56E7F67D/571AFCF7" Ref="C18"  Part="1" 
AR Path="/56E7E09A/571AFCF7" Ref="C25"  Part="1" 
AR Path="/56DC5239/571AFCF7" Ref="C31"  Part="1" 
F 0 "C31" H 3960 4070 50  0000 L CNN
F 1 "4.7uF" H 3960 3920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3950 4000 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1913358.pdf" H 3950 4000 60  0001 C CNN
F 4 "TDK" H 3950 4000 60  0001 C CNN "Mfg. Name"
F 5 "C1608X7S1A475K080AC" H 3950 4000 60  0001 C CNN "Mfg. Part Number"
F 6 "2528771" H 3950 4000 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/tdk/c1608x7s1a475k080ac/kond-mlcc-x7s-4-7-f-10v-0603/dp/2528771" H 3950 4000 60  0001 C CNN "1st Distrib. Link"
	1    3950 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 571AFD58
P 3950 4100
AR Path="/56E7F686/571AFD58" Ref="#PWR09"  Part="1" 
AR Path="/56E7F67D/571AFD58" Ref="#PWR021"  Part="1" 
AR Path="/56E7E09A/571AFD58" Ref="#PWR033"  Part="1" 
AR Path="/56DC5239/571AFD58" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 3950 3850 50  0001 C CNN
F 1 "GND" H 3950 3950 50  0000 C CNN
F 2 "" H 3950 4100 60  0000 C CNN
F 3 "" H 3950 4100 60  0000 C CNN
	1    3950 4100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C33
U 1 1 571B0316
P 6800 3950
AR Path="/56DC5239/571B0316" Ref="C33"  Part="1" 
AR Path="/56E7F686/571B0316" Ref="C8"  Part="1" 
AR Path="/56E7F67D/571B0316" Ref="C21"  Part="1" 
AR Path="/56E7E09A/571B0316" Ref="C27"  Part="1" 
F 0 "C33" H 6810 4020 50  0000 L CNN
F 1 "4.7uF" H 6810 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6800 3950 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1913358.pdf" H 6800 3950 60  0001 C CNN
F 4 "TDK" H 6800 3950 60  0001 C CNN "Mfg. Name"
F 5 "C1608X7S1A475K080AC" H 6800 3950 60  0001 C CNN "Mfg. Part Number"
F 6 "2528771" H 6800 3950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/tdk/c1608x7s1a475k080ac/kond-mlcc-x7s-4-7-f-10v-0603/dp/2528771" H 6800 3950 60  0001 C CNN "1st Distrib. Link"
	1    6800 3950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C34
U 1 1 571B0391
P 7050 3950
AR Path="/56DC5239/571B0391" Ref="C34"  Part="1" 
AR Path="/56E7F686/571B0391" Ref="C10"  Part="1" 
AR Path="/56E7F67D/571B0391" Ref="C22"  Part="1" 
AR Path="/56E7E09A/571B0391" Ref="C28"  Part="1" 
F 0 "C34" H 7060 4020 50  0000 L CNN
F 1 "4.7uF" H 7060 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7050 3950 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1913358.pdf" H 7050 3950 60  0001 C CNN
F 4 "TDK" H 7050 3950 60  0001 C CNN "Mfg. Name"
F 5 "C1608X7S1A475K080AC" H 7050 3950 60  0001 C CNN "Mfg. Part Number"
F 6 "2528771" H 7050 3950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/tdk/c1608x7s1a475k080ac/kond-mlcc-x7s-4-7-f-10v-0603/dp/2528771" H 7050 3950 60  0001 C CNN "1st Distrib. Link"
	1    7050 3950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C35
U 1 1 571B0401
P 7300 3950
AR Path="/56DC5239/571B0401" Ref="C35"  Part="1" 
AR Path="/56E7F686/571B0401" Ref="C13"  Part="1" 
AR Path="/56E7F67D/571B0401" Ref="C23"  Part="1" 
AR Path="/56E7E09A/571B0401" Ref="C29"  Part="1" 
F 0 "C35" H 7310 4020 50  0000 L CNN
F 1 "4.7uF" H 7310 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7300 3950 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1913358.pdf" H 7300 3950 60  0001 C CNN
F 4 "TDK" H 7300 3950 60  0001 C CNN "Mfg. Name"
F 5 "C1608X7S1A475K080AC" H 7300 3950 60  0001 C CNN "Mfg. Part Number"
F 6 "2528771" H 7300 3950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/tdk/c1608x7s1a475k080ac/kond-mlcc-x7s-4-7-f-10v-0603/dp/2528771" H 7300 3950 60  0001 C CNN "1st Distrib. Link"
	1    7300 3950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C15
U 1 1 571B046E
P 7550 3950
AR Path="/56E7F686/571B046E" Ref="C15"  Part="1" 
AR Path="/56E7F67D/571B046E" Ref="C24"  Part="1" 
AR Path="/56E7E09A/571B046E" Ref="C30"  Part="1" 
AR Path="/56DC5239/571B046E" Ref="C36"  Part="1" 
F 0 "C36" H 7560 4020 50  0000 L CNN
F 1 "4.7uF" H 7560 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7550 3950 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1913358.pdf" H 7550 3950 60  0001 C CNN
F 4 "TDK" H 7550 3950 60  0001 C CNN "Mfg. Name"
F 5 "C1608X7S1A475K080AC" H 7550 3950 60  0001 C CNN "Mfg. Part Number"
F 6 "2528771" H 7550 3950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/tdk/c1608x7s1a475k080ac/kond-mlcc-x7s-4-7-f-10v-0603/dp/2528771" H 7550 3950 60  0001 C CNN "1st Distrib. Link"
	1    7550 3950
	1    0    0    -1  
$EndComp
Connection ~ 6200 3900
Wire Wire Line
	6250 3900 6200 3900
Connection ~ 7600 2900
Wire Wire Line
	7600 2600 7600 2900
Connection ~ 7600 2050
Wire Wire Line
	7600 2150 7600 2050
Wire Wire Line
	7600 2350 7600 2400
Connection ~ 7250 2700
Wire Wire Line
	7250 2600 7250 2700
Wire Wire Line
	7250 2350 7250 2400
Connection ~ 7250 2050
Wire Wire Line
	7250 2050 7250 2150
Connection ~ 6700 2450
Wire Wire Line
	6700 2700 8350 2700
Connection ~ 6950 2050
Wire Wire Line
	6700 2150 6700 2050
Wire Wire Line
	6700 2350 6700 2700
Wire Wire Line
	5250 2450 6700 2450
Wire Wire Line
	6550 1850 8350 1850
Wire Wire Line
	6550 2350 6550 1850
Wire Wire Line
	4600 2350 6550 2350
Wire Wire Line
	6800 3200 6950 3200
Wire Wire Line
	6700 2050 8350 2050
Wire Wire Line
	6950 3200 6950 2050
Connection ~ 7850 3400
Wire Wire Line
	7850 3500 7850 3400
Connection ~ 5350 4550
Wire Wire Line
	7850 4550 7850 3700
Wire Wire Line
	6150 3400 8000 3400
Wire Wire Line
	8200 3400 8350 3400
Wire Wire Line
	6150 3500 6150 3400
Wire Wire Line
	6700 3750 8350 3750
Connection ~ 5150 2350
Connection ~ 4700 2350
Wire Wire Line
	4700 2450 4700 2350
Connection ~ 4200 2350
Connection ~ 6450 2900
Wire Wire Line
	8350 2900 6450 2900
Wire Wire Line
	5250 2450 5250 2950
Wire Wire Line
	5450 2850 5450 2950
Wire Wire Line
	5500 2850 5450 2850
Wire Wire Line
	5800 2850 5700 2850
Wire Wire Line
	5800 2900 5800 2850
Connection ~ 6200 4000
Connection ~ 6700 3800
Wire Wire Line
	6700 3750 6700 4000
Wire Wire Line
	6700 4000 6550 4000
Connection ~ 6200 3800
Wire Wire Line
	6200 3800 6200 4100
Wire Wire Line
	6350 4000 6200 4000
Connection ~ 6450 3200
Wire Wire Line
	6600 3200 6450 3200
Wire Wire Line
	6450 2650 6450 3500
Wire Wire Line
	5350 2650 6450 2650
Wire Wire Line
	5350 2950 5350 2650
Wire Wire Line
	6300 3700 6150 3700
Wire Wire Line
	6300 3450 6300 3700
Wire Wire Line
	6150 3800 6250 3800
Wire Wire Line
	4200 2350 4200 3700
Wire Wire Line
	3300 2350 4400 2350
Wire Wire Line
	3700 4450 4800 4450
Wire Wire Line
	5450 4450 5450 4350
Wire Wire Line
	5000 4450 5450 4450
Connection ~ 5250 5000
Wire Wire Line
	5150 5000 5250 5000
Wire Wire Line
	5150 4350 5150 5000
Wire Wire Line
	5250 4950 5250 5050
Connection ~ 3350 3500
Wire Wire Line
	3350 4550 3350 3500
Wire Wire Line
	3350 4550 7850 4550
Wire Wire Line
	5350 4350 5350 4550
Connection ~ 4450 3700
Wire Wire Line
	4450 4650 4450 3700
Wire Wire Line
	4900 4650 4450 4650
Connection ~ 4250 3700
Wire Wire Line
	4250 3900 4250 3700
Connection ~ 5250 4650
Wire Wire Line
	5100 4650 5250 4650
Wire Wire Line
	5250 4350 5250 4750
Wire Wire Line
	3950 3700 4500 3700
Wire Wire Line
	3400 3800 3450 3800
Wire Wire Line
	3400 3600 3400 3800
Wire Wire Line
	3400 3600 4500 3600
Wire Wire Line
	3650 3800 4500 3800
Wire Wire Line
	3200 4150 3200 3800
Wire Wire Line
	3200 3500 3200 3600
Wire Wire Line
	3200 3500 4500 3500
Wire Wire Line
	5150 2350 5150 2950
Wire Wire Line
	3700 4450 3700 3800
Connection ~ 3700 3800
Wire Wire Line
	3950 3900 3950 3700
Connection ~ 4200 3700
Wire Wire Line
	6700 3800 6650 3800
Wire Wire Line
	6300 3450 6850 3450
Wire Wire Line
	6850 3450 6850 3750
Connection ~ 6850 3750
Wire Wire Line
	6800 3850 6800 3750
Connection ~ 6800 3750
Wire Wire Line
	7050 3850 7050 3750
Connection ~ 7050 3750
Wire Wire Line
	7300 3850 7300 3750
Connection ~ 7300 3750
Wire Wire Line
	7550 3850 7550 3750
Connection ~ 7550 3750
$Comp
L GND #PWR046
U 1 1 571B0773
P 6800 4050
AR Path="/56DC5239/571B0773" Ref="#PWR046"  Part="1" 
AR Path="/56E7F686/571B0773" Ref="#PWR010"  Part="1" 
AR Path="/56E7F67D/571B0773" Ref="#PWR022"  Part="1" 
AR Path="/56E7E09A/571B0773" Ref="#PWR034"  Part="1" 
F 0 "#PWR046" H 6800 3800 50  0001 C CNN
F 1 "GND" H 6800 3900 50  0000 C CNN
F 2 "" H 6800 4050 60  0000 C CNN
F 3 "" H 6800 4050 60  0000 C CNN
	1    6800 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 571B07CC
P 7050 4050
AR Path="/56DC5239/571B07CC" Ref="#PWR047"  Part="1" 
AR Path="/56E7F686/571B07CC" Ref="#PWR011"  Part="1" 
AR Path="/56E7F67D/571B07CC" Ref="#PWR023"  Part="1" 
AR Path="/56E7E09A/571B07CC" Ref="#PWR035"  Part="1" 
F 0 "#PWR047" H 7050 3800 50  0001 C CNN
F 1 "GND" H 7050 3900 50  0000 C CNN
F 2 "" H 7050 4050 60  0000 C CNN
F 3 "" H 7050 4050 60  0000 C CNN
	1    7050 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR048
U 1 1 571B0825
P 7300 4050
AR Path="/56DC5239/571B0825" Ref="#PWR048"  Part="1" 
AR Path="/56E7F686/571B0825" Ref="#PWR012"  Part="1" 
AR Path="/56E7F67D/571B0825" Ref="#PWR024"  Part="1" 
AR Path="/56E7E09A/571B0825" Ref="#PWR036"  Part="1" 
F 0 "#PWR048" H 7300 3800 50  0001 C CNN
F 1 "GND" H 7300 3900 50  0000 C CNN
F 2 "" H 7300 4050 60  0000 C CNN
F 3 "" H 7300 4050 60  0000 C CNN
	1    7300 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 571B087E
P 7550 4050
AR Path="/56E7F686/571B087E" Ref="#PWR013"  Part="1" 
AR Path="/56E7F67D/571B087E" Ref="#PWR025"  Part="1" 
AR Path="/56E7E09A/571B087E" Ref="#PWR037"  Part="1" 
AR Path="/56DC5239/571B087E" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 7550 3800 50  0001 C CNN
F 1 "GND" H 7550 3900 50  0000 C CNN
F 2 "" H 7550 4050 60  0000 C CNN
F 3 "" H 7550 4050 60  0000 C CNN
	1    7550 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
