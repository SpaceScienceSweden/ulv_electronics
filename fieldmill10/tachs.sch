EESchema Schematic File Version 4
LIBS:fieldmill10-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L fieldmill10-rescue:LM324 U7
U 2 1 58A66840
P 6300 3100
F 0 "U7" H 6350 3300 50  0000 C CNN
F 1 "MAX44252ASD+" H 6500 2700 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 6250 3200 50  0001 C CNN
F 3 "" H 6350 3300 50  0000 C CNN
F 4 "Maxim Integrated" H 6300 3100 60  0001 C CNN "Mfg. Name"
F 5 "MAX44252ASD+" H 6300 3100 60  0001 C CNN "Mfg. Part Number"
F 6 "2510952" H 6300 3100 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/maxim-integrated-products/max44252asd/op-f-rst-rkare-10mhz-8v-s-nsoic/dp/2510952" H 6300 3100 60  0001 C CNN "Farnell Link"
F 8 "700-MAX44252ASD+" H 6300 3100 60  0001 C CNN "Mouser PN"
F 9 "MAX44252ASD+-ND" H 6300 3100 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/maxim-integrated/MAX44252ASD/MAX44252ASD-ND/2816359" H 6300 3100 60  0001 C CNN "Digikey Link"
	2    6300 3100
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R18
U 1 1 58A6685E
P 5050 3150
F 0 "R18" H 5080 3170 50  0000 L CNN
F 1 "1k" H 5080 3110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5050 3150 50  0001 C CNN
F 3 "" H 5050 3150 50  0000 C CNN
	1    5050 3150
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R20
U 1 1 58A66865
P 5450 3400
F 0 "R20" H 5480 3420 50  0000 L CNN
F 1 "10k" H 5480 3360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5450 3400 50  0001 C CNN
F 3 "" H 5450 3400 50  0000 C CNN
	1    5450 3400
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R14
U 1 1 58A66879
P 8900 2650
F 0 "R14" H 8930 2670 50  0000 L CNN
F 1 "1M" H 8930 2610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8900 2650 50  0001 C CNN
F 3 "" H 8900 2650 50  0000 C CNN
	1    8900 2650
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R16
U 1 1 58A66880
P 8250 2900
F 0 "R16" H 8280 2920 50  0000 L CNN
F 1 "1k" H 8280 2860 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8250 2900 50  0001 C CNN
F 3 "" H 8250 2900 50  0000 C CNN
	1    8250 2900
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R19
U 1 1 58A66887
P 6850 3200
F 0 "R19" H 6880 3220 50  0000 L CNN
F 1 "10k" H 6880 3160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6850 3200 50  0001 C CNN
F 3 "" H 6850 3200 50  0000 C CNN
	1    6850 3200
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR60
U 1 1 58A6688E
P 6150 4050
F 0 "#PWR60" H 6150 3800 50  0001 C CNN
F 1 "GND" H 6150 3900 50  0000 C CNN
F 2 "" H 6150 4050 50  0000 C CNN
F 3 "" H 6150 4050 50  0000 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
Text Notes 6850 4100 0    60   ~ 0
fc = 1/(2*pi*10k*10u) = 1.6 Hz
Text HLabel 9450 3000 2    60   Input ~ 0
ITACH
$Comp
L fieldmill10-rescue:R_Small R13
U 1 1 58A72048
P 3950 1800
F 0 "R13" H 3980 1820 50  0000 L CNN
F 1 "0" H 3980 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 3950 1800 50  0001 C CNN
F 3 "" H 3950 1800 50  0000 C CNN
	1    3950 1800
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR54
U 1 1 58A7283B
P 4200 2100
F 0 "#PWR54" H 4200 1850 50  0001 C CNN
F 1 "GND" H 4200 1950 50  0000 C CNN
F 2 "" H 4200 2100 50  0000 C CNN
F 3 "" H 4200 2100 50  0000 C CNN
	1    4200 2100
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:+3V3 #PWR53
U 1 1 58B46917
P 3750 1800
F 0 "#PWR53" H 3750 1650 50  0001 C CNN
F 1 "+3V3" H 3750 1940 50  0000 C CNN
F 2 "" H 3750 1800 50  0000 C CNN
F 3 "" H 3750 1800 50  0000 C CNN
	1    3750 1800
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR55
U 1 1 58B47058
P 4550 2100
F 0 "#PWR55" H 4550 1850 50  0001 C CNN
F 1 "GND" H 4550 1950 50  0000 C CNN
F 2 "" H 4550 2100 50  0000 C CNN
F 3 "" H 4550 2100 50  0000 C CNN
	1    4550 2100
	1    0    0    -1  
$EndComp
Text HLabel 9450 1900 2    60   Input ~ 0
RAW_ITACH
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG10
U 1 1 58C4677A
P 4800 1700
F 0 "#FLG10" H 4800 1795 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 1880 50  0000 C CNN
F 2 "" H 4800 1700 50  0000 C CNN
F 3 "" H 4800 1700 50  0000 C CNN
	1    4800 1700
	1    0    0    -1  
$EndComp
Text Notes 3150 4450 0    60   ~ 0
R40 might be better/simpler way to get RAW_ITACH to a "lagom" level
$Comp
L fieldmill10-rescue:ITR20001 IR2
U 1 1 58D3D0AF
P 5500 2600
F 0 "IR2" V 5400 2800 60  0000 C CNN
F 1 "ITR20001_in_LPPB032NFSP-RC" V 5550 3450 60  0000 C CNN
F 2 "SCUBE:LPPB032NFSP-RC-ITR20001" H 5500 2600 60  0001 C CNN
F 3 "" H 5500 2600 60  0000 C CNN
F 4 "Sullins" H 5500 2600 60  0001 C CNN "Mfg. Name"
F 5 "LPPB032NFSP-RC" H 5500 2600 60  0001 C CNN "Mfg. Part Number"
F 6 "S9007E-03-ND" H 5500 2600 60  0001 C CNN "Digikey PN"
F 7 "https://www.digikey.com/product-detail/en/sullins-connector-solutions/LPPB032NFSP-RC/S9007E-03-ND/1786349" H 5500 2600 60  0001 C CNN "Digikey Link"
	1    5500 2600
	0    -1   1    0   
$EndComp
$Comp
L fieldmill10-rescue:+3V3 #PWR56
U 1 1 58D3D2E9
P 5500 2250
F 0 "#PWR56" H 5500 2100 50  0001 C CNN
F 1 "+3V3" H 5500 2390 50  0000 C CNN
F 2 "" H 5500 2250 50  0000 C CNN
F 3 "" H 5500 2250 50  0000 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:+3V3 #PWR57
U 1 1 58D3D339
P 5700 2250
F 0 "#PWR57" H 5700 2100 50  0001 C CNN
F 1 "+3V3" H 5700 2390 50  0000 C CNN
F 2 "" H 5700 2250 50  0000 C CNN
F 3 "" H 5700 2250 50  0000 C CNN
	1    5700 2250
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:-5V #PWR59
U 1 1 58D3DB70
P 5700 4000
F 0 "#PWR59" H 5700 4100 50  0001 C CNN
F 1 "-5V" H 5700 4150 50  0000 C CNN
F 2 "" H 5700 4000 50  0000 C CNN
F 3 "" H 5700 4000 50  0000 C CNN
	1    5700 4000
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R40
U 1 1 58D3DCE4
P 5700 3650
F 0 "R40" H 5730 3670 50  0000 L CNN
F 1 "10k" H 5730 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5700 3650 50  0001 C CNN
F 3 "" H 5700 3650 50  0000 C CNN
F 4 "dnf" H 5800 3550 60  0000 C CNN "fit_field"
	1    5700 3650
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C47
U 1 1 58D41B0B
P 5950 3600
F 0 "C47" H 5960 3670 50  0000 L CNN
F 1 "10n" H 5960 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5950 3600 50  0001 C CNN
F 3 "" H 5950 3600 50  0000 C CNN
F 4 "dnf" H 6100 3600 60  0000 C CNN "fit_field"
	1    5950 3600
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:LED D5
U 1 1 58D45386
P 9300 3250
F 0 "D5" H 9300 3350 50  0000 C CNN
F 1 "LED" H 9300 3150 50  0000 C CNN
F 2 "LEDs:LED_0805" H 9300 3250 50  0001 C CNN
F 3 "" H 9300 3250 50  0000 C CNN
F 4 "dnf" H 9450 3150 60  0000 C CNN "fit_field"
	1    9300 3250
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R45
U 1 1 58D453FA
P 9300 3500
F 0 "R45" H 9330 3520 50  0000 L CNN
F 1 "1k" H 9330 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 9300 3500 50  0001 C CNN
F 3 "" H 9300 3500 50  0000 C CNN
	1    9300 3500
	1    0    0    -1  
$EndComp
Text Notes 9550 3350 0    60   ~ 0
(3.3-2.0)/1000 = 1.3 mA
Text Notes 1350 3700 0    60   ~ 0
Experiment results:\n680 ohm drive, 100k shunt to GND, 3 mm distance -> 0.8 .. 3.3 V swing\n1k2 drive seems OK too\n470 pF seems a bit on the low side\n47 nF was way too much\ncutoff @ 3rd harmonic, 100 Hz signal:\nC <= 1/(2*pi*100e3*300) = 5.3 n -> 4n7 should be perfect\n\nReduced 100k shunt to 10k, increased cap from 1n to 10n
$Comp
L fieldmill10-rescue:R_Small R53
U 1 1 599B2A1E
P 7150 3200
F 0 "R53" H 7180 3220 50  0000 L CNN
F 1 "10k" H 7180 3160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7150 3200 50  0001 C CNN
F 3 "" H 7150 3200 50  0000 C CNN
	1    7150 3200
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R55
U 1 1 599B393F
P 8450 3400
F 0 "R55" H 8480 3420 50  0000 L CNN
F 1 "0" H 8480 3360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8450 3400 50  0001 C CNN
F 3 "" H 8450 3400 50  0000 C CNN
	1    8450 3400
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R54
U 1 1 599B43EB
P 8300 3200
F 0 "R54" H 8330 3220 50  0000 L CNN
F 1 "0" H 8330 3160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8300 3200 50  0001 C CNN
F 3 "" H 8300 3200 50  0000 C CNN
F 4 "dnf" V 8250 3050 60  0000 C CNN "fit_field"
	1    8300 3200
	0    1    1    0   
$EndComp
Text Notes 6700 4500 0    60   ~ 0
Both Sallen-Key (2nd order) and straight RC (1st order) low-pass possible\nFor S-K, populate R19, R53, C31, C19 and R55. Leave R54 open.\nFor RC, populate, R19, R53, C31 and R54. Leave C19 and R55 open.
Text Notes 5100 2950 0    60   ~ 0
2.1 mA
NoConn ~ 9900 3700
NoConn ~ 9900 3900
NoConn ~ 10500 3800
$Comp
L fieldmill10-rescue:R_Small R25
U 1 1 5A6DE2CA
P 6900 2450
F 0 "R25" H 6930 2470 50  0000 L CNN
F 1 "10k" H 6930 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6900 2450 50  0001 C CNN
F 3 "" H 6900 2450 50  0000 C CNN
F 4 "dnf" H 6800 2450 60  0000 C CNN "fit_field"
	1    6900 2450
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R24
U 1 1 5A6DE375
P 6900 2150
F 0 "R24" H 6930 2170 50  0000 L CNN
F 1 "10k" H 6930 2110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6900 2150 50  0001 C CNN
F 3 "" H 6900 2150 50  0000 C CNN
F 4 "dnf" H 6800 2150 60  0000 C CNN "fit_field"
	1    6900 2150
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR58
U 1 1 5A6DE6AD
P 6900 2550
F 0 "#PWR58" H 6900 2300 50  0001 C CNN
F 1 "GND" H 6900 2400 50  0000 C CNN
F 2 "" H 6900 2550 50  0000 C CNN
F 3 "" H 6900 2550 50  0000 C CNN
	1    6900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3950 5050 3250
Wire Wire Line
	6000 3200 6000 3450
Wire Wire Line
	6650 1900 6650 2900
Wire Wire Line
	6650 3100 6600 3100
Wire Wire Line
	5700 3000 6000 3000
Connection ~ 5700 3000
Wire Wire Line
	6200 3950 6200 3400
Wire Wire Line
	6200 1800 6200 2800
Connection ~ 6200 3950
Connection ~ 6200 1800
Connection ~ 6650 3100
Wire Wire Line
	9150 2650 9000 2650
Wire Wire Line
	4050 1800 4200 1800
Wire Wire Line
	9100 3000 9150 3000
Wire Wire Line
	5300 3050 5300 3300
Wire Wire Line
	5050 2950 5500 2950
Connection ~ 9150 3000
Wire Wire Line
	9150 3000 9150 2650
Wire Wire Line
	3850 1800 3750 1800
Wire Wire Line
	5050 3950 5300 3950
Wire Wire Line
	4200 1900 4200 1800
Connection ~ 4200 1800
Wire Wire Line
	4550 1900 4550 1800
Connection ~ 4550 1800
Wire Wire Line
	6650 1900 9450 1900
Wire Wire Line
	4800 1700 4800 1800
Connection ~ 4800 1800
Wire Wire Line
	8150 2900 6650 2900
Connection ~ 6650 2900
Wire Wire Line
	5300 3950 5300 3500
Wire Wire Line
	6650 3450 6000 3450
Wire Wire Line
	5500 2950 5500 2900
Wire Wire Line
	5700 2900 5700 3000
Wire Wire Line
	5700 3750 5700 3900
Wire Wire Line
	5950 3700 5950 3900
Wire Wire Line
	5950 3900 5700 3900
Connection ~ 5700 3900
Wire Wire Line
	5450 3950 5450 3500
Wire Wire Line
	5300 3050 5450 3050
Wire Wire Line
	5450 3300 5450 3050
Connection ~ 5450 3050
Wire Wire Line
	5950 3500 5950 3450
Wire Wire Line
	5950 3450 5700 3450
Connection ~ 5700 3050
Connection ~ 5700 3450
Wire Wire Line
	9300 3100 9300 3000
Connection ~ 9300 3000
Wire Wire Line
	5050 2950 5050 3050
Wire Wire Line
	6750 3200 6650 3200
Connection ~ 6650 3200
Wire Wire Line
	8700 3300 8700 3950
Connection ~ 8700 3950
Wire Wire Line
	9300 3950 9300 3600
Wire Wire Line
	7250 3200 7350 3200
Wire Wire Line
	7350 3500 7350 3200
Connection ~ 7350 3200
Wire Wire Line
	6950 3200 7000 3200
Wire Wire Line
	7450 3100 7000 3100
Wire Wire Line
	7000 3100 7000 3200
Connection ~ 7000 3200
Wire Wire Line
	8350 2900 8450 2900
Wire Wire Line
	7650 3100 7850 3100
Wire Wire Line
	7350 3700 7350 3950
Connection ~ 7350 3950
Wire Wire Line
	8000 3850 8000 3950
Connection ~ 8000 3950
Wire Wire Line
	8450 3500 8450 3550
Wire Wire Line
	8450 3100 8450 3200
Connection ~ 8450 3100
Wire Wire Line
	8000 1800 8000 3250
Wire Wire Line
	8700 1800 8700 2700
Connection ~ 8000 1800
Wire Wire Line
	8800 2650 8450 2650
Wire Wire Line
	8450 2650 8450 2900
Connection ~ 8450 2900
Wire Wire Line
	6150 4050 6150 3950
Connection ~ 6150 3950
Wire Wire Line
	8400 3200 8450 3200
Connection ~ 8450 3200
Wire Wire Line
	8450 3550 8400 3550
Wire Wire Line
	8450 3900 7750 3900
Wire Wire Line
	7750 3900 7750 3650
Wire Wire Line
	7750 3650 7800 3650
Connection ~ 8450 3550
Wire Wire Line
	7800 3450 7750 3450
Wire Wire Line
	7750 3450 7750 3200
Connection ~ 7750 3200
Connection ~ 5300 3950
Connection ~ 5450 3950
Wire Wire Line
	6900 2050 6900 1800
Connection ~ 6900 1800
Wire Wire Line
	6900 2250 6900 2300
Wire Wire Line
	6900 2300 7850 2300
Wire Wire Line
	7850 2300 7850 3100
Connection ~ 7850 3100
Connection ~ 6900 2300
Text Notes 7100 2250 0    49   ~ 0
Fixed threshold\nValues are just guesses
$Comp
L fieldmill10-rescue:LM324 U7
U 1 1 5A8C787B
P 8800 3000
F 0 "U7" H 8850 3200 50  0000 C CNN
F 1 "MAX44252ASD+" H 9000 2600 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8750 3100 50  0001 C CNN
F 3 "" H 8850 3200 50  0000 C CNN
F 4 "Maxim Integrated" H 8800 3000 60  0001 C CNN "Mfg. Name"
F 5 "MAX44252ASD+" H 8800 3000 60  0001 C CNN "Mfg. Part Number"
F 6 "2510952" H 8800 3000 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/maxim-integrated-products/max44252asd/op-f-rst-rkare-10mhz-8v-s-nsoic/dp/2510952" H 8800 3000 60  0001 C CNN "Farnell Link"
F 8 "700-MAX44252ASD+" H 8800 3000 60  0001 C CNN "Mouser PN"
F 9 "MAX44252ASD+-ND" H 8800 3000 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/maxim-integrated/MAX44252ASD/MAX44252ASD-ND/2816359" H 8800 3000 60  0001 C CNN "Digikey Link"
	1    8800 3000
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:LM324 U7
U 3 1 5A8C7A52
P 8100 3550
F 0 "U7" H 8150 3750 50  0000 C CNN
F 1 "MAX44252ASD+" H 8300 3300 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8050 3650 50  0001 C CNN
F 3 "" H 8150 3750 50  0000 C CNN
F 4 "Maxim Integrated" H 8100 3550 60  0001 C CNN "Mfg. Name"
F 5 "MAX44252ASD+" H 8100 3550 60  0001 C CNN "Mfg. Part Number"
F 6 "2510952" H 8100 3550 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/maxim-integrated-products/max44252asd/op-f-rst-rkare-10mhz-8v-s-nsoic/dp/2510952" H 8100 3550 60  0001 C CNN "Farnell Link"
F 8 "700-MAX44252ASD+" H 8100 3550 60  0001 C CNN "Mouser PN"
F 9 "MAX44252ASD+-ND" H 8100 3550 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/maxim-integrated/MAX44252ASD/MAX44252ASD-ND/2816359" H 8100 3550 60  0001 C CNN "Digikey Link"
	3    8100 3550
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:LM324 U7
U 4 1 5A8C7C01
P 10200 3800
F 0 "U7" H 10250 4000 50  0000 C CNN
F 1 "MAX44252ASD+" H 10400 3400 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 10150 3900 50  0001 C CNN
F 3 "" H 10250 4000 50  0000 C CNN
F 4 "Maxim Integrated" H 10200 3800 60  0001 C CNN "Mfg. Name"
F 5 "MAX44252ASD+" H 10200 3800 60  0001 C CNN "Mfg. Part Number"
F 6 "2510952" H 10200 3800 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/maxim-integrated-products/max44252asd/op-f-rst-rkare-10mhz-8v-s-nsoic/dp/2510952" H 10200 3800 60  0001 C CNN "Farnell Link"
F 8 "700-MAX44252ASD+" H 10200 3800 60  0001 C CNN "Mouser PN"
F 9 "MAX44252ASD+-ND" H 10200 3800 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/maxim-integrated/MAX44252ASD/MAX44252ASD-ND/2816359" H 10200 3800 60  0001 C CNN "Digikey Link"
	4    10200 3800
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C60
U 1 1 5AA7B261
P 4200 2000
F 0 "C60" H 4210 2070 50  0000 L CNN
F 1 "100n" H 4210 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 4200 2000 50  0001 C CNN
F 3 "" H 4200 2000 50  0000 C CNN
F 4 "ECH-U1C104GX5" H 4200 2000 60  0001 C CNN "Mfg. Part Number"
F 5 "300-41-614" H 4200 2000 60  0001 C CNN "Elfa PN"
F 6 "https://www.elfa.se/sv/kondensator-100-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c104gx5/p/30041614" H 4200 2000 60  0001 C CNN "Elfa Link"
F 7 "9695001" H 4200 2000 60  0001 C CNN "Farnell PN"
F 8 "https://se.farnell.com/panasonic-electronic-components/echu1c104gx5/cap-film-pps-100nf-16v-smd/dp/9695001" H 4200 2000 60  0001 C CNN "Farnell Link"
F 9 "667-ECH-U1C104GX5" H 4200 2000 60  0001 C CNN "Mouser PN"
F 10 "PCF1189CT-ND" H 4200 2000 60  0001 C CNN "Digikey PN"
F 11 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C104GX5/PCF1189CT-ND/353736" H 4200 2000 60  0001 C CNN "Digikey Link"
	1    4200 2000
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C23
U 1 1 5AA86FDF
P 5300 3400
F 0 "C23" H 5310 3470 50  0000 L CNN
F 1 "10n" H 5310 3320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5300 3400 50  0001 C CNN
F 3 "" H 5300 3400 50  0000 C CNN
F 4 "Panasonic" H 5300 3400 60  0001 C CNN "Mfg. Name"
F 5 "ECH-U1C103GX5" H 5300 3400 60  0001 C CNN "Mfg. Part Number"
F 6 "300-41-612" H 5300 3400 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/kondensator-10-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c103gx5/p/30041612" H 5300 3400 60  0001 C CNN "Elfa Link"
F 8 "9694897" H 5300 3400 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/panasonic-electronic-components/echu1c103gx5/cap-film-pps-10nf-16v-smd/dp/9694897" H 5300 3400 60  0001 C CNN "Farnell Link"
F 10 "667-ECH-U1C103GX5" H 5300 3400 60  0001 C CNN "Mouser PN"
F 11 "PCF1177CT-ND" H 5300 3400 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C103GX5/PCF1177CT-ND/353724" H 5300 3400 60  0001 C CNN "Digikey Link"
	1    5300 3400
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:C_Small C18
U 1 1 5AA83FA8
P 4550 2000
F 0 "C18" H 4560 2070 50  0000 L CNN
F 1 "10u" H 4560 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4550 2000 50  0001 C CNN
F 3 "" H 4550 2000 50  0000 C CNN
F 4 "KEMET" H 4550 2000 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 4550 2000 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 4550 2000 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 4550 2000 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 4550 2000 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 4550 2000 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 4550 2000 60  0001 C CNN "Digikey Link"
	1    4550 2000
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C31
U 1 1 5AA83FE4
P 7350 3600
F 0 "C31" H 7360 3670 50  0000 L CNN
F 1 "10u" H 7360 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7350 3600 50  0001 C CNN
F 3 "" H 7350 3600 50  0000 C CNN
F 4 "KEMET" H 7350 3600 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 7350 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 7350 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 7350 3600 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 7350 3600 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 7350 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 7350 3600 60  0001 C CNN "Digikey Link"
	1    7350 3600
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C19
U 1 1 5AA84096
P 7550 3100
F 0 "C19" H 7560 3170 50  0000 L CNN
F 1 "10u" H 7560 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7550 3100 50  0001 C CNN
F 3 "" H 7550 3100 50  0000 C CNN
F 4 "KEMET" H 7550 3100 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 7550 3100 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 7550 3100 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 7550 3100 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 7550 3100 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 7550 3100 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 7550 3100 60  0001 C CNN "Digikey Link"
	1    7550 3100
	0    -1   -1   0   
$EndComp
Text Notes 9500 1850 0    60   ~ 0
Sampled by ADC
Wire Wire Line
	5700 3000 5700 3050
Wire Wire Line
	6200 3950 7350 3950
Wire Wire Line
	6200 1800 6900 1800
Wire Wire Line
	6650 3100 6650 3200
Wire Wire Line
	9150 3000 9300 3000
Wire Wire Line
	4200 1800 4550 1800
Wire Wire Line
	4550 1800 4800 1800
Wire Wire Line
	4800 1800 6200 1800
Wire Wire Line
	6650 2900 6650 3100
Wire Wire Line
	5700 3900 5700 4000
Wire Wire Line
	5450 3050 5700 3050
Wire Wire Line
	5700 3050 5700 3450
Wire Wire Line
	5700 3450 5700 3550
Wire Wire Line
	9300 3000 9450 3000
Wire Wire Line
	6650 3200 6650 3450
Wire Wire Line
	8700 3950 9300 3950
Wire Wire Line
	7350 3200 7750 3200
Wire Wire Line
	7000 3200 7050 3200
Wire Wire Line
	7350 3950 8000 3950
Wire Wire Line
	8000 3950 8700 3950
Wire Wire Line
	8450 3100 8500 3100
Wire Wire Line
	8000 1800 8700 1800
Wire Wire Line
	8450 2900 8500 2900
Wire Wire Line
	6150 3950 6200 3950
Wire Wire Line
	8450 3200 8450 3300
Wire Wire Line
	8450 3550 8450 3900
Wire Wire Line
	7750 3200 8200 3200
Wire Wire Line
	5300 3950 5450 3950
Wire Wire Line
	5450 3950 6150 3950
Wire Wire Line
	6900 1800 8000 1800
Wire Wire Line
	7850 3100 8450 3100
Wire Wire Line
	6900 2300 6900 2350
$EndSCHEMATC
