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
LIBS:pc104
LIBS:ulv_battery-cache
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
Text HLabel 4700 3900 0    60   Input ~ 0
VBAT1
Text HLabel 4700 4000 0    60   Input ~ 0
VBAT2
Text HLabel 4700 4100 0    60   Input ~ 0
VBAT3
Text HLabel 4700 4200 0    60   Input ~ 0
VBAT4
Text HLabel 4700 3600 0    60   Input ~ 0
VSOLAR
Text HLabel 4700 3300 0    60   Input ~ 0
VCHRG
Text HLabel 4700 3000 0    60   Input ~ 0
VSYS
Text Notes 5900 3200 0    60   ~ 0
VSYS:\nVCHRG:\nVSOLAR:\nVBAT[1-8]:
Text HLabel 4700 4400 0    60   Input ~ 0
VBAT5
Text HLabel 4700 4500 0    60   Input ~ 0
VBAT6
Text HLabel 4700 4600 0    60   Input ~ 0
VBAT7
Text HLabel 4700 4700 0    60   Input ~ 0
VBAT8
$Comp
L PC104 P1
U 1 1 56E49DE7
P 3750 3500
F 0 "P1" H 3750 4200 60  0000 C CNN
F 1 "PC104" H 3750 2800 60  0000 C CNN
F 2 "PC104:PC104" H 3750 3300 60  0001 C CNN
F 3 "" H 3750 3300 60  0000 C CNN
	1    3750 3500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR1
U 1 1 56E49E47
P 3050 3000
F 0 "#PWR1" H 3050 2850 50  0001 C CNN
F 1 "+5V" H 3050 3140 50  0000 C CNN
F 2 "" H 3050 3000 60  0000 C CNN
F 3 "" H 3050 3000 60  0000 C CNN
	1    3050 3000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR2
U 1 1 56E49E55
P 3050 3300
F 0 "#PWR2" H 3050 3150 50  0001 C CNN
F 1 "+3V3" H 3050 3440 50  0000 C CNN
F 2 "" H 3050 3300 60  0000 C CNN
F 3 "" H 3050 3300 60  0000 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 56E49F0D
P 3050 3600
F 0 "#PWR3" H 3050 3350 50  0001 C CNN
F 1 "GND" H 3050 3450 50  0000 C CNN
F 2 "" H 3050 3600 60  0000 C CNN
F 3 "" H 3050 3600 60  0000 C CNN
	1    3050 3600
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR4
U 1 1 56E49F1B
P 3050 4000
F 0 "#PWR4" H 3050 3750 50  0001 C CNN
F 1 "GNDA" H 3050 3850 50  0000 C CNN
F 2 "" H 3050 4000 60  0000 C CNN
F 3 "" H 3050 4000 60  0000 C CNN
	1    3050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3000 3050 3000
Wire Wire Line
	3250 3000 3250 3100
Wire Wire Line
	3250 3400 3250 3300
Wire Wire Line
	3250 3300 3050 3300
Wire Wire Line
	3250 3600 3250 3800
Connection ~ 3250 3700
Wire Wire Line
	3250 4000 3050 4000
Wire Wire Line
	3050 3600 3250 3600
Connection ~ 3250 3600
Connection ~ 3250 3300
Connection ~ 3250 3000
$Comp
L PC104 P1
U 2 1 56E4A250
P 5400 3800
F 0 "P1" H 5400 4800 60  0000 C CNN
F 1 "PC104" H 5400 2700 60  0000 C CNN
F 2 "PC104:PC104" H 5400 3600 60  0001 C CNN
F 3 "" H 5400 3600 60  0000 C CNN
	2    5400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3000 4700 3000
Wire Wire Line
	4900 3000 4900 3100
Connection ~ 4900 3000
Wire Wire Line
	4900 3400 4900 3300
Wire Wire Line
	4900 3300 4700 3300
Connection ~ 4900 3300
Wire Wire Line
	4700 3600 4900 3600
Wire Wire Line
	4900 3600 4900 3700
Connection ~ 4900 3600
Wire Wire Line
	4700 3900 4900 3900
Wire Wire Line
	4900 4000 4700 4000
Wire Wire Line
	4700 4100 4900 4100
Wire Wire Line
	4900 4200 4700 4200
Wire Wire Line
	4700 4400 4900 4400
Wire Wire Line
	4900 4500 4700 4500
Wire Wire Line
	4700 4600 4900 4600
Wire Wire Line
	4900 4700 4700 4700
Text Notes 6450 3200 0    60   ~ 0
Main unregulated system voltage bus (batteries or solar)\n> 5.0 V one or more cells begin charging\nSolar panels only. Can be used more opportunistically\nUnregulated battery voltages
$Comp
L Battery BT1
U 1 1 56E58DA5
P 1900 5500
F 0 "BT1" H 2000 5550 50  0000 L CNN
F 1 "Battery" H 2000 5450 50  0000 L CNN
F 2 "JST:JST-PH-02" V 1900 5540 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 1900 5540 50  0001 C CNN
F 4 "JST" H 1900 5500 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 1900 5500 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 1900 5500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 1900 5500 60  0001 C CNN "1st Distrib. Link"
	1    1900 5500
	1    0    0    -1  
$EndComp
Text HLabel 1900 5350 1    60   Output ~ 0
VBAT1
$Comp
L GND #PWR5
U 1 1 56E5C1B0
P 1900 5650
F 0 "#PWR5" H 1900 5400 50  0001 C CNN
F 1 "GND" H 1900 5500 50  0000 C CNN
F 2 "" H 1900 5650 60  0000 C CNN
F 3 "" H 1900 5650 60  0000 C CNN
	1    1900 5650
	1    0    0    -1  
$EndComp
$Comp
L Battery BT2
U 1 1 56E5C258
P 2400 5500
F 0 "BT2" H 2500 5550 50  0000 L CNN
F 1 "Battery" H 2500 5450 50  0000 L CNN
F 2 "JST:JST-PH-02" V 2400 5540 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 2400 5540 50  0001 C CNN
F 4 "JST" H 2400 5500 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 2400 5500 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 2400 5500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 2400 5500 60  0001 C CNN "1st Distrib. Link"
	1    2400 5500
	1    0    0    -1  
$EndComp
Text HLabel 2400 5350 1    60   Output ~ 0
VBAT2
$Comp
L GND #PWR6
U 1 1 56E5C25F
P 2400 5650
F 0 "#PWR6" H 2400 5400 50  0001 C CNN
F 1 "GND" H 2400 5500 50  0000 C CNN
F 2 "" H 2400 5650 60  0000 C CNN
F 3 "" H 2400 5650 60  0000 C CNN
	1    2400 5650
	1    0    0    -1  
$EndComp
$Comp
L Battery BT3
U 1 1 56E5C2C9
P 2900 5500
F 0 "BT3" H 3000 5550 50  0000 L CNN
F 1 "Battery" H 3000 5450 50  0000 L CNN
F 2 "JST:JST-PH-02" V 2900 5540 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 2900 5540 50  0001 C CNN
F 4 "JST" H 2900 5500 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 2900 5500 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 2900 5500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 2900 5500 60  0001 C CNN "1st Distrib. Link"
	1    2900 5500
	1    0    0    -1  
$EndComp
Text HLabel 2900 5350 1    60   Output ~ 0
VBAT3
$Comp
L GND #PWR7
U 1 1 56E5C2D0
P 2900 5650
F 0 "#PWR7" H 2900 5400 50  0001 C CNN
F 1 "GND" H 2900 5500 50  0000 C CNN
F 2 "" H 2900 5650 60  0000 C CNN
F 3 "" H 2900 5650 60  0000 C CNN
	1    2900 5650
	1    0    0    -1  
$EndComp
$Comp
L Battery BT4
U 1 1 56E5C2DA
P 3400 5500
F 0 "BT4" H 3500 5550 50  0000 L CNN
F 1 "Battery" H 3500 5450 50  0000 L CNN
F 2 "JST:JST-PH-02" V 3400 5540 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 3400 5540 50  0001 C CNN
F 4 "JST" H 3400 5500 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 3400 5500 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 3400 5500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 3400 5500 60  0001 C CNN "1st Distrib. Link"
	1    3400 5500
	1    0    0    -1  
$EndComp
Text HLabel 3400 5350 1    60   Output ~ 0
VBAT4
$Comp
L GND #PWR8
U 1 1 56E5C2E1
P 3400 5650
F 0 "#PWR8" H 3400 5400 50  0001 C CNN
F 1 "GND" H 3400 5500 50  0000 C CNN
F 2 "" H 3400 5650 60  0000 C CNN
F 3 "" H 3400 5650 60  0000 C CNN
	1    3400 5650
	1    0    0    -1  
$EndComp
$Comp
L Battery BT5
U 1 1 56E5C3BE
P 1900 6500
F 0 "BT5" H 2000 6550 50  0000 L CNN
F 1 "Battery" H 2000 6450 50  0000 L CNN
F 2 "JST:JST-PH-02" V 1900 6540 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 1900 6540 50  0001 C CNN
F 4 "JST" H 1900 6500 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 1900 6500 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 1900 6500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 1900 6500 60  0001 C CNN "1st Distrib. Link"
	1    1900 6500
	1    0    0    -1  
$EndComp
Text HLabel 1900 6350 1    60   Output ~ 0
VBAT5
$Comp
L GND #PWR9
U 1 1 56E5C3C5
P 1900 6650
F 0 "#PWR9" H 1900 6400 50  0001 C CNN
F 1 "GND" H 1900 6500 50  0000 C CNN
F 2 "" H 1900 6650 60  0000 C CNN
F 3 "" H 1900 6650 60  0000 C CNN
	1    1900 6650
	1    0    0    -1  
$EndComp
$Comp
L Battery BT6
U 1 1 56E5C3CF
P 2400 6500
F 0 "BT6" H 2500 6550 50  0000 L CNN
F 1 "Battery" H 2500 6450 50  0000 L CNN
F 2 "JST:JST-PH-02" V 2400 6540 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 2400 6540 50  0001 C CNN
F 4 "JST" H 2400 6500 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 2400 6500 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 2400 6500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 2400 6500 60  0001 C CNN "1st Distrib. Link"
	1    2400 6500
	1    0    0    -1  
$EndComp
Text HLabel 2400 6350 1    60   Output ~ 0
VBAT6
$Comp
L GND #PWR10
U 1 1 56E5C3D6
P 2400 6650
F 0 "#PWR10" H 2400 6400 50  0001 C CNN
F 1 "GND" H 2400 6500 50  0000 C CNN
F 2 "" H 2400 6650 60  0000 C CNN
F 3 "" H 2400 6650 60  0000 C CNN
	1    2400 6650
	1    0    0    -1  
$EndComp
$Comp
L Battery BT7
U 1 1 56E5C3E0
P 2900 6500
F 0 "BT7" H 3000 6550 50  0000 L CNN
F 1 "Battery" H 3000 6450 50  0000 L CNN
F 2 "JST:JST-PH-02" V 2900 6540 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 2900 6540 50  0001 C CNN
F 4 "JST" H 2900 6500 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 2900 6500 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 2900 6500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 2900 6500 60  0001 C CNN "1st Distrib. Link"
	1    2900 6500
	1    0    0    -1  
$EndComp
Text HLabel 2900 6350 1    60   Output ~ 0
VBAT7
$Comp
L GND #PWR11
U 1 1 56E5C3E7
P 2900 6650
F 0 "#PWR11" H 2900 6400 50  0001 C CNN
F 1 "GND" H 2900 6500 50  0000 C CNN
F 2 "" H 2900 6650 60  0000 C CNN
F 3 "" H 2900 6650 60  0000 C CNN
	1    2900 6650
	1    0    0    -1  
$EndComp
$Comp
L Battery BT8
U 1 1 56E5C3F1
P 3400 6500
F 0 "BT8" H 3500 6550 50  0000 L CNN
F 1 "Battery" H 3500 6450 50  0000 L CNN
F 2 "JST:JST-PH-02" V 3400 6540 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 3400 6540 50  0001 C CNN
F 4 "JST" H 3400 6500 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 3400 6500 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 3400 6500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 3400 6500 60  0001 C CNN "1st Distrib. Link"
	1    3400 6500
	1    0    0    -1  
$EndComp
Text HLabel 3400 6350 1    60   Output ~ 0
VBAT8
$Comp
L GND #PWR12
U 1 1 56E5C3F8
P 3400 6650
F 0 "#PWR12" H 3400 6400 50  0001 C CNN
F 1 "GND" H 3400 6500 50  0000 C CNN
F 2 "" H 3400 6650 60  0000 C CNN
F 3 "" H 3400 6650 60  0000 C CNN
	1    3400 6650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
