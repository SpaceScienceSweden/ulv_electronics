EESchema Schematic File Version 4
LIBS:fieldmill10-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
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
L fieldmill10-rescue:CONN_01X01 P7
U 1 1 57ADA50A
P 1100 6700
F 0 "P7" H 1100 6800 50  0000 C CNN
F 1 "M3" V 1200 6700 50  0000 C CNN
F 2 "SCUBE:M3_FM_PTH" H 1100 6700 50  0001 C CNN
F 3 "" H 1100 6700 50  0000 C CNN
F 4 "dnf" H 1250 6800 60  0000 C CNN "fit_field"
	1    1100 6700
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR34
U 1 1 57ADA565
P 700 7000
F 0 "#PWR34" H 700 6750 50  0001 C CNN
F 1 "GND" H 700 6850 50  0000 C CNN
F 2 "" H 700 7000 50  0000 C CNN
F 3 "" H 700 7000 50  0000 C CNN
	1    700  7000
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:CONN_01X01 P8
U 1 1 57ADC6AB
P 1100 6900
F 0 "P8" H 1100 7000 50  0000 C CNN
F 1 "M3" V 1200 6900 50  0000 C CNN
F 2 "SCUBE:M3_FM_PTH" H 1100 6900 50  0001 C CNN
F 3 "" H 1100 6900 50  0000 C CNN
F 4 "dnf" H 1250 7000 60  0000 C CNN "fit_field"
	1    1100 6900
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:CONN_01X01 P9
U 1 1 57ADC6D7
P 1100 7100
F 0 "P9" H 1100 7200 50  0000 C CNN
F 1 "M3" V 1200 7100 50  0000 C CNN
F 2 "SCUBE:M3_FM_PTH" H 1100 7100 50  0001 C CNN
F 3 "" H 1100 7100 50  0000 C CNN
F 4 "dnf" H 1250 7200 60  0000 C CNN "fit_field"
	1    1100 7100
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:CONN_01X01 P10
U 1 1 57ADC718
P 1100 7300
F 0 "P10" H 1100 7400 50  0000 C CNN
F 1 "M3" V 1200 7300 50  0000 C CNN
F 2 "SCUBE:M3_FM_PTH" H 1100 7300 50  0001 C CNN
F 3 "" H 1100 7300 50  0000 C CNN
F 4 "dnf" H 1250 7400 60  0000 C CNN "fit_field"
	1    1100 7300
	1    0    0    -1  
$EndComp
$Sheet
S 1500 2550 800  300 
U 57B05F2F
F0 "channel1" 60
F1 "channel.sch" 60
F2 "OUT+" I R 2300 2750 60 
F3 "OUT-" I R 2300 2650 60 
$EndSheet
$Sheet
S 1500 3050 800  300 
U 57B0A0EC
F0 "channel2" 60
F1 "channel.sch" 60
F2 "OUT+" I R 2300 3250 60 
F3 "OUT-" I R 2300 3150 60 
$EndSheet
$Sheet
S 1500 3600 800  300 
U 57B0A102
F0 "channel3" 60
F1 "channel.sch" 60
F2 "OUT+" I R 2300 3800 60 
F3 "OUT-" I R 2300 3700 60 
$EndSheet
$Comp
L fieldmill10-rescue:C_Small C22
U 1 1 57B0EB49
P 8050 1400
F 0 "C22" H 8060 1470 50  0000 L CNN
F 1 "10u" H 8060 1320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8050 1400 50  0001 C CNN
F 3 "" H 8050 1400 50  0000 C CNN
F 4 "KEMET" H 8050 1400 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 8050 1400 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 8050 1400 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 8050 1400 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 8050 1400 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 8050 1400 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 8050 1400 60  0001 C CNN "Digikey Link"
	1    8050 1400
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:ADS131A04 U3
U 1 1 580644B5
P 4400 3300
F 0 "U3" H 4400 3300 60  0000 C CNN
F 1 "ADS131A04IPBS" H 4400 3400 60  0000 C CNN
F 2 "Housings_QFP:LQFP-32_5x5mm_Pitch0.5mm" H 4250 3400 60  0001 C CNN
F 3 "" H 4250 3400 60  0000 C CNN
F 4 "Texas Instruments" H 4400 3300 60  0001 C CNN "Mfg. Name"
F 5 "ADS131A04IPBS" H 4400 3300 60  0001 C CNN "Mfg. Part Number"
F 6 "2580620" H 4400 3300 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/texas-instruments/ads131a04ipbsr/adc-delta-sigma-24bit-128ksps/dp/2580620" H 4400 3300 60  0001 C CNN "Farnell Link"
F 8 "595-ADS131A04IPBS" H 4400 3300 60  0001 C CNN "Mouser PN"
F 9 "296-47690-ND" H 4400 3300 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/texas-instruments/ADS131A04IPBS/296-47690-ND/5994569" H 4400 3300 60  0001 C CNN "Digikey Link"
	1    4400 3300
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R15
U 1 1 58069626
P 2700 2550
F 0 "R15" H 2730 2570 50  0000 L CNN
F 1 "10k" H 2730 2510 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2700 2550 50  0001 C CNN
F 3 "" H 2700 2550 50  0000 C CNN
	1    2700 2550
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R17
U 1 1 580697DA
P 2850 2850
F 0 "R17" H 2880 2870 50  0000 L CNN
F 1 "10k" H 2880 2810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2850 2850 50  0001 C CNN
F 3 "" H 2850 2850 50  0000 C CNN
	1    2850 2850
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R26
U 1 1 58069929
P 2700 3050
F 0 "R26" H 2730 3070 50  0000 L CNN
F 1 "10k" H 2730 3010 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2700 3050 50  0001 C CNN
F 3 "" H 2700 3050 50  0000 C CNN
	1    2700 3050
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R27
U 1 1 58069A4D
P 2850 3350
F 0 "R27" H 2880 3370 50  0000 L CNN
F 1 "10k" H 2880 3310 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2850 3350 50  0001 C CNN
F 3 "" H 2850 3350 50  0000 C CNN
	1    2850 3350
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R28
U 1 1 58069AEA
P 2700 3600
F 0 "R28" H 2730 3620 50  0000 L CNN
F 1 "10k" H 2730 3560 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2700 3600 50  0001 C CNN
F 3 "" H 2700 3600 50  0000 C CNN
	1    2700 3600
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R29
U 1 1 58069B88
P 2850 3900
F 0 "R29" H 2880 3920 50  0000 L CNN
F 1 "10k" H 2880 3860 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2850 3900 50  0001 C CNN
F 3 "" H 2850 3900 50  0000 C CNN
	1    2850 3900
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:C_Small C10
U 1 1 58069C0A
P 3000 2700
F 0 "C10" H 3010 2770 50  0000 L CNN
F 1 "10n" H 3010 2620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3000 2700 50  0001 C CNN
F 3 "" H 3000 2700 50  0000 C CNN
F 4 "Panasonic" H 3000 2700 60  0001 C CNN "Mfg. Name"
F 5 "ECH-U1C103GX5" H 3000 2700 60  0001 C CNN "Mfg. Part Number"
F 6 "300-41-612" H 3000 2700 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/kondensator-10-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c103gx5/p/30041612" H 3000 2700 60  0001 C CNN "Elfa Link"
F 8 "9694897" H 3000 2700 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/panasonic-electronic-components/echu1c103gx5/cap-film-pps-10nf-16v-smd/dp/9694897" H 3000 2700 60  0001 C CNN "Farnell Link"
F 10 "667-ECH-U1C103GX5" H 3000 2700 60  0001 C CNN "Mouser PN"
F 11 "PCF1177CT-ND" H 3000 2700 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C103GX5/PCF1177CT-ND/353724" H 3000 2700 60  0001 C CNN "Digikey Link"
	1    3000 2700
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C13
U 1 1 58075867
P 4350 4400
F 0 "C13" H 4360 4470 50  0000 L CNN
F 1 "1u" H 4360 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4350 4400 50  0001 C CNN
F 3 "" H 4350 4400 50  0000 C CNN
F 4 "KEMET" H 4350 4400 60  0001 C CNN "Mfg. Name"
F 5 "C0805X105K3RACAUTO" H 4350 4400 60  0001 C CNN "Mfg. Part Number"
F 6 "2478267" H 4350 4400 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x105k3racauto/kondensator-mlcc-x7r-1-f-25v-0805/dp/2478267" H 4350 4400 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X105K3RAUTO" H 4350 4400 60  0001 C CNN "Mouser PN"
F 9 "399-6996-1-ND" H 4350 4400 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X105K3RACAUTO/399-6996-1-ND/3314504" H 4350 4400 60  0001 C CNN "Digikey Link"
	1    4350 4400
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR22
U 1 1 58076CF5
P 5100 4500
F 0 "#PWR22" H 5100 4250 50  0001 C CNN
F 1 "GND" H 5100 4350 50  0000 C CNN
F 2 "" H 5100 4500 50  0000 C CNN
F 3 "" H 5100 4500 50  0000 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR6
U 1 1 58079052
P 4450 2050
F 0 "#PWR6" H 4450 1800 50  0001 C CNN
F 1 "GND" H 4450 1900 50  0000 C CNN
F 2 "" H 4450 2050 50  0000 C CNN
F 3 "" H 4450 2050 50  0000 C CNN
	1    4450 2050
	-1   0    0    1   
$EndComp
NoConn ~ 4650 2450
$Comp
L fieldmill10-rescue:GND #PWR10
U 1 1 580791C3
P 4550 2450
F 0 "#PWR10" H 4550 2200 50  0001 C CNN
F 1 "GND" H 4550 2300 50  0000 C CNN
F 2 "" H 4550 2450 50  0000 C CNN
F 3 "" H 4550 2450 50  0000 C CNN
	1    4550 2450
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R11
U 1 1 580792FA
P 4900 2400
F 0 "R11" H 4930 2420 50  0000 L CNN
F 1 "50" H 4930 2360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4900 2400 50  0001 C CNN
F 3 "" H 4900 2400 50  0000 C CNN
	1    4900 2400
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R10
U 1 1 58079FD7
P 3900 2400
F 0 "R10" H 3930 2420 50  0000 L CNN
F 1 "0" H 3930 2360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3900 2400 50  0001 C CNN
F 3 "" H 3900 2400 50  0000 C CNN
	1    3900 2400
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R8
U 1 1 5807A2D4
P 3900 2200
F 0 "R8" H 3930 2220 50  0000 L CNN
F 1 "0" H 3930 2160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3900 2200 50  0001 C CNN
F 3 "" H 3900 2200 50  0000 C CNN
F 4 "dnf" V 3850 2050 60  0000 C CNN "fit_field"
	1    3900 2200
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R2
U 1 1 5807A676
P 3900 1400
F 0 "R2" H 3930 1420 50  0000 L CNN
F 1 "0" H 3930 1360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3900 1400 50  0001 C CNN
F 3 "" H 3900 1400 50  0000 C CNN
	1    3900 1400
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR7
U 1 1 5807B872
P 3600 2200
F 0 "#PWR7" H 3600 1950 50  0001 C CNN
F 1 "GND" H 3600 2050 50  0000 C CNN
F 2 "" H 3600 2200 50  0000 C CNN
F 3 "" H 3600 2200 50  0000 C CNN
	1    3600 2200
	0    1    1    0   
$EndComp
Text Notes 3100 1250 0    60   ~ 0
ADC is configured via population of these resistors\nM0 = VDD -> Asynchronous interrupt mode\nM1 = NC -> 16-bit words\nM2 = GND -> Hamming code word validation off
$Comp
L fieldmill10-rescue:+3V3 #PWR15
U 1 1 5807C0BC
P 5700 3700
F 0 "#PWR15" H 5700 3550 50  0001 C CNN
F 1 "+3V3" H 5700 3840 50  0000 C CNN
F 2 "" H 5700 3700 50  0000 C CNN
F 3 "" H 5700 3700 50  0000 C CNN
	1    5700 3700
	-1   0    0    1   
$EndComp
Text Label 5500 2950 0    60   ~ 0
f_ADC
Text Label 5500 3050 0    60   ~ 0
/CS_ADC
Text Label 5500 3250 0    60   ~ 0
MISO
Text Label 5500 3350 0    60   ~ 0
MOSI
Text Label 5500 3450 0    60   ~ 0
/DRDY
Text Label 5500 3550 0    60   ~ 0
/DONE
Text Notes 2400 4050 0    60   ~ 0
800 Hz low-pass
$Comp
L fieldmill10-rescue:R_Small R1
U 1 1 58A538CF
P 5550 3650
F 0 "R1" H 5580 3670 50  0000 L CNN
F 1 "0" H 5580 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 5550 3650 50  0001 C CNN
F 3 "" H 5550 3650 50  0000 C CNN
	1    5550 3650
	0    1    1    0   
$EndComp
$Sheet
S 7800 5850 1050 550 
U 58A6604F
F0 "Tachometers" 60
F1 "tachs.sch" 60
F2 "ITACH" I L 7800 6050 60 
F3 "RAW_ITACH" I L 7800 6150 60 
$EndSheet
Text Label 6700 2450 0    60   ~ 0
ITACH
$Comp
L fieldmill10-rescue:VDD #PWR19
U 1 1 58B4831E
P 5550 4200
F 0 "#PWR19" H 5550 4050 50  0001 C CNN
F 1 "VDD" H 5550 4350 50  0000 C CNN
F 2 "" H 5550 4200 50  0000 C CNN
F 3 "" H 5550 4200 50  0000 C CNN
	1    5550 4200
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:VDD #PWR9
U 1 1 58B483F3
P 4350 2450
F 0 "#PWR9" H 4350 2300 50  0001 C CNN
F 1 "VDD" H 4350 2600 50  0000 C CNN
F 2 "" H 4350 2450 50  0000 C CNN
F 3 "" H 4350 2450 50  0000 C CNN
	1    4350 2450
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:VDD #PWR4
U 1 1 58B48814
P 3700 1600
F 0 "#PWR4" H 3700 1450 50  0001 C CNN
F 1 "VDD" H 3700 1750 50  0000 C CNN
F 2 "" H 3700 1600 50  0000 C CNN
F 3 "" H 3700 1600 50  0000 C CNN
	1    3700 1600
	0    -1   -1   0   
$EndComp
Text Notes 3750 5950 0    60   ~ 0
SMD hylslister:\n143-56-849 2x10\n300-24-844 2x15\n300-24-852 2x17\n300-24-857 2x20
$Comp
L fieldmill10-rescue:GND #PWR14
U 1 1 58BD6877
P 3550 3550
F 0 "#PWR14" H 3550 3300 50  0001 C CNN
F 1 "GND" H 3550 3400 50  0000 C CNN
F 2 "" H 3550 3550 50  0000 C CNN
F 3 "" H 3550 3550 50  0000 C CNN
	1    3550 3550
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R3
U 1 1 58BD6E21
P 3350 4000
F 0 "R3" H 3380 4020 50  0000 L CNN
F 1 "10k" H 3380 3960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3350 4000 50  0001 C CNN
F 3 "" H 3350 4000 50  0000 C CNN
	1    3350 4000
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R5
U 1 1 58BD6FB7
P 3600 4000
F 0 "R5" H 3630 4020 50  0000 L CNN
F 1 "10k" H 3630 3960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3600 4000 50  0001 C CNN
F 3 "" H 3600 4000 50  0000 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR18
U 1 1 58BD7078
P 3600 4100
F 0 "#PWR18" H 3600 3850 50  0001 C CNN
F 1 "GND" H 3600 3950 50  0000 C CNN
F 2 "" H 3600 4100 50  0000 C CNN
F 3 "" H 3600 4100 50  0000 C CNN
	1    3600 4100
	1    0    0    -1  
$EndComp
Text Notes 3500 5400 0    60   ~ 0
AVDD current <= 4.0 mA
$Comp
L fieldmill10-rescue:MAX504 U2
U 1 1 58BF19BF
P 8500 4000
F 0 "U2" H 8500 4500 60  0000 C CNN
F 1 "MAX504ESD" H 8500 4400 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 8500 4000 60  0001 C CNN
F 3 "" H 8500 4000 60  0000 C CNN
F 4 "Maxim Integrated" H 8500 4000 60  0001 C CNN "Mfg. Name"
F 5 "MAX504ESD+" H 8500 4000 60  0001 C CNN "Mfg. Part Number"
F 6 "2514723" H 8500 4000 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/maxim-integrated-products/max504esd/d-a-omvandlare-10bit-nsoic-14/dp/2514723" H 8500 4000 60  0001 C CNN "Farnell Link"
F 8 "700-MAX504ESD" H 8500 4000 60  0001 C CNN "Mouser PN"
F 9 "MAX504ESD+-ND" H 8500 4000 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/maxim-integrated/MAX504ESD/MAX504ESD-ND/1512537" H 8500 4000 60  0001 C CNN "Digikey Link"
	1    8500 4000
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:+5V #PWR13
U 1 1 58BF21A4
P 9900 3450
F 0 "#PWR13" H 9900 3300 50  0001 C CNN
F 1 "+5V" H 9900 3590 50  0000 C CNN
F 2 "" H 9900 3450 50  0000 C CNN
F 3 "" H 9900 3450 50  0000 C CNN
	1    9900 3450
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:-5V #PWR26
U 1 1 58BF224E
P 9650 4850
F 0 "#PWR26" H 9650 4950 50  0001 C CNN
F 1 "-5V" H 9650 5000 50  0000 C CNN
F 2 "" H 9650 4850 50  0000 C CNN
F 3 "" H 9650 4850 50  0000 C CNN
	1    9650 4850
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR24
U 1 1 58BF22D5
P 8500 4500
F 0 "#PWR24" H 8500 4250 50  0001 C CNN
F 1 "GND" H 8500 4350 50  0000 C CNN
F 2 "" H 8500 4500 50  0000 C CNN
F 3 "" H 8500 4500 50  0000 C CNN
	1    8500 4500
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C1
U 1 1 58BF3201
P 9150 4300
F 0 "C1" H 9160 4370 50  0000 L CNN
F 1 "47u" H 9160 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 9150 4300 50  0001 C CNN
F 3 "" H 9150 4300 50  0000 C CNN
F 4 "Murata" H 9150 4300 60  0001 C CNN "Mfg. Name"
F 5 "GCJ32ER70J476KE01L" H 9150 4300 60  0001 C CNN "Mfg. Part Number"
F 6 "81-GCJ32ER70J476KE1L" H 9150 4300 60  0001 C CNN "Mouser PN"
F 7 "490-10559-1-ND" H 9150 4300 60  0001 C CNN "Digikey PN"
F 8 "https://www.digikey.se/product-detail/en/murata-electronics-north-america/GCJ32ER70J476KE01L/490-10559-1-ND/5030050" H 9150 4300 60  0001 C CNN "Digikey Link"
	1    9150 4300
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R9
U 1 1 58BF4228
P 9950 4850
F 0 "R9" H 9980 4870 50  0000 L CNN
F 1 "10k" H 9980 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 9950 4850 50  0001 C CNN
F 3 "" H 9950 4850 50  0000 C CNN
	1    9950 4850
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR27
U 1 1 58BF4302
P 9950 4950
F 0 "#PWR27" H 9950 4700 50  0001 C CNN
F 1 "GND" H 9950 4800 50  0000 C CNN
F 2 "" H 9950 4950 50  0000 C CNN
F 3 "" H 9950 4950 50  0000 C CNN
	1    9950 4950
	1    0    0    -1  
$EndComp
Text GLabel 10900 4700 2    60   Input ~ 0
VGND
Text Label 7650 3800 0    60   ~ 0
MOSI
$Comp
L fieldmill10-rescue:DS18B20Z U5
U 1 1 58C3F75A
P 6250 5550
F 0 "U5" H 6250 5800 60  0000 C CNN
F 1 "DS18B20Z+" H 6250 5700 39  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6250 5550 60  0001 C CNN
F 3 "" H 6250 5550 60  0000 C CNN
F 4 "Maxim Integrated" H 6250 5550 60  0001 C CNN "Mfg. Name"
F 5 "DS18B20Z+" H 6250 5550 60  0001 C CNN "Mfg. Part Number"
F 6 "2518724" H 6250 5550 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/maxim-integrated-products/ds18b20z/ic-thermometer-12bit-0-5degc-soic/dp/2518724" H 6250 5550 60  0001 C CNN "Farnell Link"
F 8 "700-DS18B20Z" H 6250 5550 60  0001 C CNN "Mouser PN"
F 9 "DS18B20Z+-ND" H 6250 5550 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/maxim-integrated/DS18B20Z/DS18B20Z-ND/956982" H 6250 5550 60  0001 C CNN "Digikey Link"
	1    6250 5550
	1    0    0    -1  
$EndComp
Text Label 6700 2850 0    60   ~ 0
ONEWIRE
$Comp
L fieldmill10-rescue:GND #PWR33
U 1 1 58C40103
P 6750 5700
F 0 "#PWR33" H 6750 5450 50  0001 C CNN
F 1 "GND" H 6750 5550 50  0000 C CNN
F 2 "" H 6750 5700 50  0000 C CNN
F 3 "" H 6750 5700 50  0000 C CNN
	1    6750 5700
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:+3V3 #PWR32
U 1 1 58C40CB6
P 5150 5600
F 0 "#PWR32" H 5150 5450 50  0001 C CNN
F 1 "+3V3" H 5150 5740 50  0000 C CNN
F 2 "" H 5150 5600 50  0000 C CNN
F 3 "" H 5150 5600 50  0000 C CNN
	1    5150 5600
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R12
U 1 1 58C40DC3
P 5300 5600
F 0 "R12" H 5330 5620 50  0000 L CNN
F 1 "0" H 5330 5560 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 5300 5600 50  0001 C CNN
F 3 "" H 5300 5600 50  0000 C CNN
	1    5300 5600
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG4
U 1 1 58C44A30
P 7450 1800
F 0 "#FLG4" H 7450 1895 50  0001 C CNN
F 1 "PWR_FLAG" H 7450 1980 50  0000 C CNN
F 2 "" H 7450 1800 50  0000 C CNN
F 3 "" H 7450 1800 50  0000 C CNN
	1    7450 1800
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG2
U 1 1 58C44C59
P 7250 1600
F 0 "#FLG2" H 7250 1695 50  0001 C CNN
F 1 "PWR_FLAG" H 7250 1780 50  0000 C CNN
F 2 "" H 7250 1600 50  0000 C CNN
F 3 "" H 7250 1600 50  0000 C CNN
	1    7250 1600
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG6
U 1 1 58C457DD
P 5850 3800
F 0 "#FLG6" H 5850 3895 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 3980 50  0000 C CNN
F 2 "" H 5850 3800 50  0000 C CNN
F 3 "" H 5850 3800 50  0000 C CNN
	1    5850 3800
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG7
U 1 1 58C459C4
P 5350 3850
F 0 "#FLG7" H 5350 3945 50  0001 C CNN
F 1 "PWR_FLAG" H 5350 4030 50  0000 C CNN
F 2 "" H 5350 3850 50  0000 C CNN
F 3 "" H 5350 3850 50  0000 C CNN
	1    5350 3850
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG9
U 1 1 58C4625E
P 5450 5550
F 0 "#FLG9" H 5450 5645 50  0001 C CNN
F 1 "PWR_FLAG" H 5450 5730 50  0000 C CNN
F 2 "" H 5450 5550 50  0000 C CNN
F 3 "" H 5450 5550 50  0000 C CNN
	1    5450 5550
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG3
U 1 1 58C73E73
P 7050 1800
F 0 "#FLG3" H 7050 1895 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 1980 50  0000 C CNN
F 2 "" H 7050 1800 50  0000 C CNN
F 3 "" H 7050 1800 50  0000 C CNN
	1    7050 1800
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:+24V #PWR3
U 1 1 58C75C1D
P 6700 1350
F 0 "#PWR3" H 6700 1200 50  0001 C CNN
F 1 "+24V" H 6700 1490 50  0000 C CNN
F 2 "" H 6700 1350 50  0000 C CNN
F 3 "" H 6700 1350 50  0000 C CNN
	1    6700 1350
	1    0    0    -1  
$EndComp
Text Label 6050 1750 2    60   ~ 0
PWM
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG1
U 1 1 58C76342
P 6900 1250
F 0 "#FLG1" H 6900 1345 50  0001 C CNN
F 1 "PWR_FLAG" H 6900 1430 50  0000 C CNN
F 2 "" H 6900 1250 50  0000 C CNN
F 3 "" H 6900 1250 50  0000 C CNN
	1    6900 1250
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR12
U 1 1 58C798D2
P 9950 3250
F 0 "#PWR12" H 9950 3000 50  0001 C CNN
F 1 "GND" H 9950 3100 50  0000 C CNN
F 2 "" H 9950 3250 50  0000 C CNN
F 3 "" H 9950 3250 50  0000 C CNN
	1    9950 3250
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR21
U 1 1 58C79B0A
P 9900 4400
F 0 "#PWR21" H 9900 4150 50  0001 C CNN
F 1 "GND" H 9900 4250 50  0000 C CNN
F 2 "" H 9900 4400 50  0000 C CNN
F 3 "" H 9900 4400 50  0000 C CNN
	1    9900 4400
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:-5V #PWR11
U 1 1 58B4E255
P 8050 2550
F 0 "#PWR11" H 8050 2650 50  0001 C CNN
F 1 "-5V" H 8050 2700 50  0000 C CNN
F 2 "" H 8050 2550 50  0000 C CNN
F 3 "" H 8050 2550 50  0000 C CNN
	1    8050 2550
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:+5V #PWR1
U 1 1 58B4E1AF
P 8050 1000
F 0 "#PWR1" H 8050 850 50  0001 C CNN
F 1 "+5V" H 8050 1140 50  0000 C CNN
F 2 "" H 8050 1000 50  0000 C CNN
F 3 "" H 8050 1000 50  0000 C CNN
	1    8050 1000
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R34
U 1 1 58CDFB31
P 9800 3450
F 0 "R34" H 9830 3470 50  0000 L CNN
F 1 "0" H 9830 3410 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 9800 3450 50  0001 C CNN
F 3 "" H 9800 3450 50  0000 C CNN
	1    9800 3450
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R37
U 1 1 58CE0570
P 9650 4700
F 0 "R37" H 9680 4720 50  0000 L CNN
F 1 "0" H 9680 4660 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 9650 4700 50  0001 C CNN
F 3 "" H 9650 4700 50  0000 C CNN
	1    9650 4700
	1    0    0    -1  
$EndComp
Text Notes 2700 7450 0    60   ~ 0
AD5551: external ref, bipolar\nAD7304: external ref, quad, bipolar\nAD7249: internal ref, dual, bipolar (+-15 Vsupply!), pricey, W-SOIC finns i lager (farnell)\nAD5722R: alternative to AD7249, TSSOP :(\nDAC2932: fairly complex..\nLTC1650: external ref, +-5V, 16-bit\nSLAS269F: internal ref, octal, bipolar\nDAC714: internal ref, single, bipolar, +-11.4 minimum :(\nMAX526: extern ref, parallel, bipolar\nMAX504ESD: internal ref, bipolar, good accuracy, -40..85°C, in stock @ farnell\nUse SPDT switch to toggle between DAC and GND
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG8
U 1 1 58CF3BAA
P 9450 4650
F 0 "#FLG8" H 9450 4745 50  0001 C CNN
F 1 "PWR_FLAG" H 9450 4830 50  0000 C CNN
F 2 "" H 9450 4650 50  0000 C CNN
F 3 "" H 9450 4650 50  0000 C CNN
	1    9450 4650
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:PWR_FLAG #FLG5
U 1 1 58CF414B
P 9450 3400
F 0 "#FLG5" H 9450 3495 50  0001 C CNN
F 1 "PWR_FLAG" H 9450 3580 50  0000 C CNN
F 2 "" H 9450 3400 50  0000 C CNN
F 3 "" H 9450 3400 50  0000 C CNN
	1    9450 3400
	1    0    0    -1  
$EndComp
Text GLabel 5450 2800 1    60   Input ~ 0
SCLK
Text GLabel 7700 4000 0    60   Input ~ 0
SCLK
$Comp
L fieldmill10-rescue:R_Small R38
U 1 1 58D40091
P 6000 3150
F 0 "R38" V 6050 3250 50  0000 L CNN
F 1 "50" V 6000 3100 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6000 3150 50  0001 C CNN
F 3 "" H 6000 3150 50  0000 C CNN
	1    6000 3150
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:CONN_02X12 P12
U 1 1 58D45A24
P 6400 2100
F 0 "P12" H 6400 2750 50  0000 C CNN
F 1 "CONN_02X12" V 6400 2100 50  0000 C CNN
F 2 "SCUBE:LPPB122NFSP-RC-holes" H 6400 900 50  0001 C CNN
F 3 "" H 6400 900 50  0000 C CNN
F 4 "Sullins" H 6400 2100 60  0001 C CNN "Mfg. Name"
F 5 "LPPB122NFSP-RC" H 6400 2100 60  0001 C CNN "Mfg. Part Number"
F 6 "S9007E-12-ND" H 6400 2100 60  0001 C CNN "Digikey PN"
F 7 "https://www.digikey.com/products/en?keywords=LPPB122NFSP-RC" H 6400 2100 60  0001 C CNN "Digikey Link"
	1    6400 2100
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:CONN_02X12 P13
U 1 1 58D46C40
P 6400 3400
F 0 "P13" H 6400 4050 50  0000 C CNN
F 1 "CONN_02X12" V 6400 3400 50  0000 C CNN
F 2 "SCUBE:LPPB122NFSP-RC-holes" H 6400 2200 50  0001 C CNN
F 3 "" H 6400 2200 50  0000 C CNN
	1    6400 3400
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR16
U 1 1 58D4991A
P 6750 3850
F 0 "#PWR16" H 6750 3600 50  0001 C CNN
F 1 "GND" H 6750 3700 50  0000 C CNN
F 2 "" H 6750 3850 50  0000 C CNN
F 3 "" H 6750 3850 50  0000 C CNN
	1    6750 3850
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:C_Small C52
U 1 1 599C1D4E
P 10350 4850
F 0 "C52" H 10360 4920 50  0000 L CNN
F 1 "1n" H 10360 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10350 4850 50  0001 C CNN
F 3 "" H 10350 4850 50  0000 C CNN
F 4 "dnf" H 10450 5050 60  0000 C CNN "fit_field"
	1    10350 4850
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R56
U 1 1 599C2802
P 10150 4700
F 0 "R56" H 10180 4720 50  0000 L CNN
F 1 "0" H 10180 4660 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 10150 4700 50  0001 C CNN
F 3 "" H 10150 4700 50  0000 C CNN
	1    10150 4700
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:C_Small C53
U 1 1 599C420E
P 10550 4850
F 0 "C53" H 10560 4920 50  0000 L CNN
F 1 "1n" H 10560 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10550 4850 50  0001 C CNN
F 3 "" H 10550 4850 50  0000 C CNN
F 4 "dnf" H 10650 5050 60  0000 C CNN "fit_field"
	1    10550 4850
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C54
U 1 1 599C4355
P 10750 4850
F 0 "C54" H 10760 4920 50  0000 L CNN
F 1 "1n" H 10760 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10750 4850 50  0001 C CNN
F 3 "" H 10750 4850 50  0000 C CNN
F 4 "dnf" H 10850 5050 60  0000 C CNN "fit_field"
	1    10750 4850
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR28
U 1 1 599C5333
P 10350 4950
F 0 "#PWR28" H 10350 4700 50  0001 C CNN
F 1 "GND" H 10350 4800 50  0000 C CNN
F 2 "" H 10350 4950 50  0000 C CNN
F 3 "" H 10350 4950 50  0000 C CNN
	1    10350 4950
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR29
U 1 1 599C5464
P 10550 4950
F 0 "#PWR29" H 10550 4700 50  0001 C CNN
F 1 "GND" H 10550 4800 50  0000 C CNN
F 2 "" H 10550 4950 50  0000 C CNN
F 3 "" H 10550 4950 50  0000 C CNN
	1    10550 4950
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR30
U 1 1 599C5595
P 10750 4950
F 0 "#PWR30" H 10750 4700 50  0001 C CNN
F 1 "GND" H 10750 4800 50  0000 C CNN
F 2 "" H 10750 4950 50  0000 C CNN
F 3 "" H 10750 4950 50  0000 C CNN
	1    10750 4950
	1    0    0    -1  
$EndComp
Text Notes 8400 5650 0    60   ~ 0
Capacitance between VGND and GND is 77 pF (measured)\nMAX504 can drive this quite comfortably\nIf more capacitance is needed, populate\nR56 with 100k and C52..54 with 1 nF
NoConn ~ 7950 4200
Text Notes 9000 1050 0    60   ~ 0
TLV1117-25IDCY or any other -40..+125°C\nSOT-223 +2.5V LDO should be fine
$Comp
L fieldmill10-rescue:+2V5 #PWR2
U 1 1 5A79F7CC
P 10050 1200
F 0 "#PWR2" H 10050 1050 50  0001 C CNN
F 1 "+2V5" H 10050 1340 50  0000 C CNN
F 2 "" H 10050 1200 50  0000 C CNN
F 3 "" H 10050 1200 50  0000 C CNN
	1    10050 1200
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:-2V5 #PWR8
U 1 1 5A79F8AA
P 10000 2250
F 0 "#PWR8" H 10000 2100 50  0001 C CNN
F 1 "-2V5" H 10000 2390 50  0000 C CNN
F 2 "" H 10000 2250 50  0000 C CNN
F 3 "" H 10000 2250 50  0000 C CNN
	1    10000 2250
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:-2V5 #PWR31
U 1 1 5A7A3AB2
P 4150 5050
F 0 "#PWR31" H 4150 4900 50  0001 C CNN
F 1 "-2V5" H 4150 5190 50  0000 C CNN
F 2 "" H 4150 5050 50  0000 C CNN
F 3 "" H 4150 5050 50  0000 C CNN
	1    4150 5050
	-1   0    0    1   
$EndComp
$Comp
L fieldmill10-rescue:+2V5 #PWR20
U 1 1 5A7A3B6E
P 3650 4400
F 0 "#PWR20" H 3650 4250 50  0001 C CNN
F 1 "+2V5" H 3650 4540 50  0000 C CNN
F 2 "" H 3650 4400 50  0000 C CNN
F 3 "" H 3650 4400 50  0000 C CNN
	1    3650 4400
	0    -1   -1   0   
$EndComp
$Comp
L fieldmill10-rescue:C_Small C8
U 1 1 5A7A7279
P 8950 1400
F 0 "C8" H 8960 1470 50  0000 L CNN
F 1 "10u" H 8960 1320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8950 1400 50  0001 C CNN
F 3 "" H 8950 1400 50  0000 C CNN
	1    8950 1400
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR5
U 1 1 5A7A7801
P 8450 1800
F 0 "#PWR5" H 8450 1550 50  0001 C CNN
F 1 "GND" H 8450 1650 50  0000 C CNN
F 2 "" H 8450 1800 50  0000 C CNN
F 3 "" H 8450 1800 50  0000 C CNN
	1    8450 1800
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R23
U 1 1 5A7A806D
P 9050 2050
F 0 "R23" H 9080 2070 50  0000 L CNN
F 1 "1k" H 9080 2010 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 9050 2050 50  0001 C CNN
F 3 "" H 9050 2050 50  0000 C CNN
	1    9050 2050
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R22
U 1 1 5A7A82F6
P 9050 1750
F 0 "R22" H 9080 1770 50  0000 L CNN
F 1 "1k" H 9080 1710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 9050 1750 50  0001 C CNN
F 3 "" H 9050 1750 50  0000 C CNN
	1    9050 1750
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:D_Zener D2
U 1 1 5A7AB472
P 9850 1750
F 0 "D2" H 9850 1650 50  0000 C CNN
F 1 "1SMA5919BT3G" H 9850 1850 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 9850 1750 50  0001 C CNN
F 3 "" H 9850 1750 50  0000 C CNN
F 4 "ON Semiconductor" H 9850 1750 60  0001 C CNN "Mfg. Name"
F 5 "1SMA5919BT3G" H 9850 1750 60  0001 C CNN "Mfg. Part Number"
F 6 "300-50-189" H 9850 1750 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/zenerdiod-sma-on-semiconductor-1sma5919bt3g/p/30050189" H 9850 1750 60  0001 C CNN "Elfa Link"
F 8 "1431141" H 9850 1750 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/on-semiconductor/1sma5919bt3g/diode-zener-5-6v-1-5w/dp/1431141" H 9850 1750 60  0001 C CNN "Farnell Link"
F 10 "863-1SMA5919BT3G" H 9850 1750 60  0001 C CNN "Mouser PN"
F 11 "1SMA5919BT3GOSCT-ND" H 9850 1750 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/on-semiconductor/1SMA5919BT3G/1SMA5919BT3GOSCT-ND/917675" H 9850 1750 60  0001 C CNN "Digikey Link"
	1    9850 1750
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:D D1
U 1 1 5A7AC670
P 8600 750
F 0 "D1" H 8600 850 50  0000 C CNN
F 1 "STTH102A" H 8600 650 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 8600 750 50  0001 C CNN
F 3 "" H 8600 750 50  0000 C CNN
F 4 "STMicroelectronics" H 8600 750 60  0001 C CNN "Mfg. Name"
F 5 "STTH102A" H 8600 750 60  0001 C CNN "Mfg. Part Number"
F 6 "300-34-074" H 8600 750 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/likriktardiod-sma-200-st-stth102a/p/30034074" H 8600 750 60  0001 C CNN "Elfa Link"
F 8 "9907874" H 8600 750 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/stmicroelectronics/stth102a/diode-ultrafast-1a-200v-sma/dp/9907874" H 8600 750 60  0001 C CNN "Farnell Link"
F 10 "511-STTH102A" H 8600 750 60  0001 C CNN "Mouser PN"
F 11 "497-2500-1-ND" H 8600 750 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/stmicroelectronics/STTH102A/497-2500-1-ND/603882" H 8600 750 60  0001 C CNN "Digikey Link"
	1    8600 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 750  8950 750 
Wire Wire Line
	8450 750  8250 750 
Wire Wire Line
	8150 2600 8450 2600
Wire Wire Line
	8750 2600 9200 2600
Connection ~ 8650 1600
Wire Wire Line
	8650 1600 8650 1650
Connection ~ 8650 1900
Wire Wire Line
	8650 1900 8650 1850
Connection ~ 9850 2250
Wire Wire Line
	9850 2250 9850 1900
Connection ~ 9850 1200
Wire Wire Line
	9850 1200 9850 1600
Connection ~ 9650 2250
Connection ~ 9050 1600
Wire Wire Line
	9650 1600 9650 2000
Connection ~ 9050 2250
Wire Wire Line
	9650 2250 9650 2200
Connection ~ 8600 1600
Wire Wire Line
	8600 1600 8600 1500
Connection ~ 8950 1600
Wire Wire Line
	8950 1600 8950 1500
Wire Wire Line
	8950 750  8950 1150
Wire Wire Line
	8950 1200 9850 1200
Wire Wire Line
	7900 1600 8050 1600
Wire Wire Line
	9050 1600 9050 1650
Connection ~ 8150 2250
Wire Wire Line
	6150 2250 6650 2250
Connection ~ 9050 1900
Wire Wire Line
	8600 1900 8600 1950
Wire Wire Line
	8600 1900 8650 1900
Wire Wire Line
	9050 1850 9050 1900
Wire Wire Line
	9050 2150 9050 2250
Wire Wire Line
	9000 2250 9050 2250
Connection ~ 8250 1200
Wire Wire Line
	7750 1200 8050 1200
Wire Wire Line
	3600 3800 3600 3900
Wire Wire Line
	4150 4150 4150 4200
Wire Wire Line
	3300 2950 3550 2950
Wire Wire Line
	3250 3050 3550 3050
Wire Wire Line
	3200 3150 3550 3150
Wire Wire Line
	3200 3250 3550 3250
Wire Wire Line
	3250 3350 3550 3350
Wire Wire Line
	3300 3450 3550 3450
Connection ~ 10750 4700
Wire Wire Line
	10750 4700 10750 4750
Connection ~ 10550 4700
Wire Wire Line
	10550 4700 10550 4750
Connection ~ 10350 4700
Wire Wire Line
	10350 4750 10350 4700
Wire Wire Line
	10250 4700 10350 4700
Wire Wire Line
	9950 4700 10050 4700
Wire Wire Line
	9950 4500 9950 4700
Wire Wire Line
	6700 1650 6700 1550
Connection ~ 7450 2250
Connection ~ 7250 2050
Connection ~ 6700 2250
Wire Wire Line
	6700 2350 6700 2250
Connection ~ 6700 2050
Wire Wire Line
	6700 2050 6700 2150
Wire Wire Line
	6150 2150 6650 2150
Connection ~ 6700 1850
Wire Wire Line
	6700 1850 6700 1950
Connection ~ 6650 3950
Connection ~ 6700 3850
Wire Wire Line
	6700 3850 6700 3950
Wire Wire Line
	6150 3950 6650 3950
Connection ~ 6650 2850
Wire Wire Line
	7350 2550 7350 4100
Connection ~ 6650 2550
Connection ~ 6650 1550
Connection ~ 6700 1550
Wire Wire Line
	6150 1550 6650 1550
Connection ~ 6650 3850
Wire Wire Line
	6150 3850 6650 3850
Connection ~ 6150 3750
Connection ~ 6100 3650
Wire Wire Line
	6100 3650 6100 3750
Wire Wire Line
	6100 3750 6150 3750
Connection ~ 5450 3150
Wire Wire Line
	5450 3150 5450 2800
Connection ~ 9650 4500
Wire Wire Line
	9650 4500 9450 4500
Wire Wire Line
	9450 4500 9450 4650
Wire Wire Line
	7600 3350 9350 3350
Wire Wire Line
	9350 3450 9450 3450
Wire Wire Line
	7600 3350 7600 3900
Wire Wire Line
	9650 4850 9650 4800
Connection ~ 9650 4400
Wire Wire Line
	9650 4400 9700 4400
Connection ~ 6650 1650
Wire Wire Line
	6150 1650 6650 1650
Wire Wire Line
	7150 5200 5700 5200
Connection ~ 7050 1850
Wire Wire Line
	7050 1850 7050 1800
Connection ~ 6650 1850
Connection ~ 6650 1950
Connection ~ 6650 2050
Connection ~ 6650 2150
Connection ~ 6650 2250
Connection ~ 6650 2350
Connection ~ 6650 2450
Connection ~ 6150 2950
Connection ~ 6150 3050
Connection ~ 6150 3150
Connection ~ 6150 3250
Connection ~ 6150 3350
Connection ~ 6150 3450
Connection ~ 6150 3550
Connection ~ 6150 3650
Connection ~ 5400 3650
Connection ~ 5700 3650
Wire Wire Line
	5700 3700 5700 3650
Connection ~ 5850 3650
Wire Wire Line
	5850 3650 5850 3800
Wire Wire Line
	5650 3650 5700 3650
Wire Wire Line
	4600 4900 4500 4900
Connection ~ 5450 5600
Wire Wire Line
	5450 5550 5450 5600
Wire Wire Line
	7450 2250 7450 1800
Wire Wire Line
	7250 2050 7250 1600
Connection ~ 6700 5700
Wire Wire Line
	6700 5900 6700 5700
Wire Wire Line
	6650 5700 6700 5700
Wire Wire Line
	5550 5900 6700 5900
Wire Wire Line
	5550 5850 5550 5900
Connection ~ 5550 5600
Wire Wire Line
	5550 5600 5550 5650
Wire Wire Line
	5400 5600 5450 5600
Wire Wire Line
	5200 5600 5150 5600
Wire Wire Line
	6150 2850 6650 2850
Wire Wire Line
	7150 2850 7150 5200
Wire Wire Line
	5700 5200 5700 5700
Wire Wire Line
	5700 5700 5850 5700
Wire Wire Line
	6150 2550 6650 2550
Wire Wire Line
	7350 4100 7950 4100
Wire Wire Line
	7700 4000 7950 4000
Wire Wire Line
	7600 3900 7950 3900
Wire Wire Line
	7650 3800 7950 3800
Wire Wire Line
	800  7000 700  7000
Wire Wire Line
	800  6700 800  6900
Wire Wire Line
	800  6700 900  6700
Wire Wire Line
	800  7300 900  7300
Connection ~ 800  7000
Wire Wire Line
	800  7100 900  7100
Connection ~ 800  7100
Wire Wire Line
	900  6900 800  6900
Connection ~ 800  6900
Wire Wire Line
	3200 3050 3200 3150
Wire Wire Line
	2800 3050 3000 3050
Wire Wire Line
	3000 3050 3000 3100
Wire Wire Line
	3000 3300 3000 3350
Wire Wire Line
	2950 3350 3000 3350
Wire Wire Line
	3200 3350 3200 3250
Wire Wire Line
	3250 2850 3250 3050
Wire Wire Line
	2950 2850 3000 2850
Wire Wire Line
	3000 2850 3000 2800
Wire Wire Line
	3300 2550 3300 2950
Wire Wire Line
	2800 2550 3000 2550
Wire Wire Line
	3000 2550 3000 2600
Wire Wire Line
	3000 3650 3000 3600
Wire Wire Line
	2800 3600 3000 3600
Wire Wire Line
	3250 3600 3250 3350
Wire Wire Line
	3300 3900 3300 3450
Wire Wire Line
	2950 3900 3000 3900
Wire Wire Line
	3000 3900 3000 3850
Connection ~ 3000 3900
Wire Wire Line
	2450 3600 2600 3600
Connection ~ 3000 3600
Connection ~ 3000 3350
Connection ~ 3000 3050
Connection ~ 3000 2850
Connection ~ 3000 2550
Wire Wire Line
	4250 4200 4250 4150
Connection ~ 4150 4200
Wire Wire Line
	4500 4250 4500 4400
Wire Wire Line
	4500 4400 4450 4400
Wire Wire Line
	4200 4250 4350 4250
Wire Wire Line
	4350 4250 4350 4150
Wire Wire Line
	4650 4200 4750 4200
Wire Wire Line
	4750 4150 4750 4200
Wire Wire Line
	4650 4200 4650 4150
Connection ~ 4750 4200
Connection ~ 4150 4900
Wire Wire Line
	4600 4650 4600 4700
Connection ~ 4500 4900
Connection ~ 4500 4400
Wire Wire Line
	4450 2250 4450 2450
Wire Wire Line
	4050 1800 4050 2400
Wire Wire Line
	4050 2400 4000 2400
Wire Wire Line
	4050 1800 4000 1800
Connection ~ 4050 2400
Wire Wire Line
	4150 1600 4150 2200
Wire Wire Line
	4150 2200 4000 2200
Wire Wire Line
	4150 1600 4000 1600
Connection ~ 4150 2200
Wire Wire Line
	4250 1400 4250 2000
Wire Wire Line
	4250 2000 4000 2000
Wire Wire Line
	4250 1400 4000 1400
Connection ~ 4250 2000
Wire Wire Line
	3800 1400 3750 1400
Wire Wire Line
	3750 1400 3750 1600
Wire Wire Line
	3750 1800 3800 1800
Wire Wire Line
	3700 1600 3750 1600
Connection ~ 3750 1600
Wire Wire Line
	3800 2000 3650 2000
Wire Wire Line
	3650 2000 3650 2200
Wire Wire Line
	3650 2400 3800 2400
Wire Wire Line
	3600 2200 3650 2200
Connection ~ 3650 2200
Wire Wire Line
	5250 3450 6150 3450
Wire Wire Line
	5250 3350 6150 3350
Wire Wire Line
	5250 3250 6150 3250
Wire Wire Line
	6100 3150 6150 3150
Wire Wire Line
	5250 3150 5450 3150
Wire Wire Line
	5250 3050 6150 3050
Wire Wire Line
	4800 2400 4750 2400
Wire Wire Line
	4750 2400 4750 2450
Wire Wire Line
	5000 2400 5350 2400
Wire Wire Line
	5350 2400 5350 2950
Wire Wire Line
	5350 2950 6150 2950
Wire Wire Line
	5250 3550 6150 3550
Wire Wire Line
	5400 3650 5400 3850
Wire Wire Line
	2450 3900 2750 3900
Connection ~ 5400 4200
Wire Wire Line
	5250 3650 5400 3650
Wire Wire Line
	2750 3350 2450 3350
Wire Wire Line
	2450 3350 2450 3250
Wire Wire Line
	2450 3250 2300 3250
Wire Wire Line
	2300 3150 2450 3150
Wire Wire Line
	2450 3150 2450 3050
Wire Wire Line
	2450 3050 2600 3050
Wire Wire Line
	2750 2850 2450 2850
Wire Wire Line
	2450 2850 2450 2750
Wire Wire Line
	2450 2750 2300 2750
Wire Wire Line
	2300 2650 2450 2650
Wire Wire Line
	2450 2650 2450 2550
Wire Wire Line
	2450 2550 2600 2550
Wire Wire Line
	2450 3900 2450 3800
Wire Wire Line
	2450 3800 2300 3800
Wire Wire Line
	2300 3700 2450 3700
Wire Wire Line
	2450 3700 2450 3600
Wire Wire Line
	7250 6050 7800 6050
Wire Wire Line
	7250 2450 7250 6050
Wire Wire Line
	6150 2450 6650 2450
Wire Wire Line
	6150 2350 6650 2350
Wire Wire Line
	6150 2050 6650 2050
Wire Wire Line
	6150 1950 6650 1950
Wire Wire Line
	6150 1850 6650 1850
Wire Wire Line
	4250 4200 4150 4200
Wire Wire Line
	7800 6150 3350 6150
Wire Wire Line
	3350 6150 3350 4100
Wire Wire Line
	3350 3800 3450 3800
Wire Wire Line
	3350 3800 3350 3900
Wire Wire Line
	3550 3650 3450 3650
Wire Wire Line
	3450 3650 3450 3800
Connection ~ 3450 3800
Wire Wire Line
	9050 4000 9650 4000
Wire Wire Line
	9650 4000 9650 4400
Wire Wire Line
	9050 4450 9050 4300
Wire Wire Line
	7950 4450 8500 4450
Wire Wire Line
	7950 4450 7950 4300
Wire Wire Line
	8500 4500 8500 4450
Connection ~ 8500 4450
Wire Wire Line
	9050 4100 9050 4150
Wire Wire Line
	9150 3450 9150 4150
Wire Wire Line
	9050 4150 9150 4150
Connection ~ 9050 4150
Wire Wire Line
	9150 4450 9150 4400
Connection ~ 9050 4450
Wire Wire Line
	9050 3700 9100 3700
Wire Wire Line
	9100 3700 9100 3900
Connection ~ 9100 3900
Wire Wire Line
	9150 3450 7950 3450
Wire Wire Line
	7950 3450 7950 3700
Connection ~ 9150 4150
Wire Wire Line
	9050 3900 9100 3900
Wire Wire Line
	9350 3350 9350 3450
Wire Wire Line
	8250 750  8250 1200
Wire Wire Line
	8150 2150 8150 2250
Wire Wire Line
	8450 1800 8450 1600
Connection ~ 8450 1600
Wire Wire Line
	8050 1000 8050 1200
Connection ~ 8050 1200
Wire Wire Line
	8050 1500 8050 1600
Connection ~ 8050 1600
Wire Wire Line
	8050 2000 8050 2250
Connection ~ 8050 2250
Connection ~ 9950 4700
Wire Wire Line
	9050 3800 9350 3800
Text Notes 9950 1400 0    60   ~ 0
Load is 3*5 + 4 ≃ 20 mA
Text Notes 8150 3100 0    60   ~ 0
LM337 is the only SOT-223 negative voltage\nregulator that can do -2.5V.\n1k||18k = 947\n-(1.25*(1+947/1k)+65µA*947) = -2.495 V
$Comp
L fieldmill10-rescue:R_Small R21
U 1 1 5A7C19B4
P 8850 1750
F 0 "R21" H 8880 1770 50  0000 L CNN
F 1 "18k" H 8880 1710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8850 1750 50  0001 C CNN
F 3 "" H 8850 1750 50  0000 C CNN
	1    8850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1850 8850 1900
Connection ~ 8850 1900
Wire Wire Line
	8850 1650 8850 1600
Connection ~ 8850 1600
Connection ~ 9350 3450
Wire Wire Line
	7750 1850 7750 1200
Wire Wire Line
	7900 2050 7900 1600
Wire Wire Line
	9450 3400 9450 3450
Connection ~ 9450 3450
Wire Wire Line
	9400 2200 9400 2250
Connection ~ 9400 2250
Text Notes 9300 2450 0    60   ~ 0
Protection diodes per datasheet
$Comp
L fieldmill10-rescue:LM1117-2.5-4PIN U10
U 1 1 5A79C1FE
P 8600 1200
F 0 "U10" H 8700 950 50  0000 C CNN
F 1 "LDL1117S25R" H 8600 1450 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 8600 1200 50  0001 C CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/group3/0e/5a/00/ca/10/1a/4f/a5/DM00366442/files/DM00366442.pdf/jcr:content/translations/en.DM00366442.pdf" H 8600 1200 50  0001 C CNN
F 4 "STMicroelectronics" H 8600 1200 60  0001 C CNN "Mfg. Name"
F 5 "LDL1117S25R" H 8600 1200 60  0001 C CNN "Mfg. Part Number"
F 6 "2778100" H 8600 1200 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/stmicroelectronics/ldl1117s25r/ldo-fixed-2-5v-1-2a-sot-223-4/dp/2778100" H 8600 1200 60  0001 C CNN "Farnell Link"
F 8 "511-LDL1117S25R" H 8600 1200 60  0001 C CNN "Mouser PN"
F 9 "497-17237-1-ND" H 8600 1200 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/stmicroelectronics/LDL1117S25R/497-17237-1-ND/7102077" H 8600 1200 60  0001 C CNN "Digikey Link"
	1    8600 1200
	1    0    0    -1  
$EndComp
Connection ~ 8950 1200
Wire Wire Line
	8900 1250 8950 1250
Connection ~ 8950 1250
Wire Wire Line
	8900 1150 8950 1150
Connection ~ 8950 1150
$Comp
L fieldmill10-rescue:LM337IMP-4PIN U9
U 1 1 5A79CDB4
P 8600 2200
F 0 "U9" H 8400 2000 50  0000 C CNN
F 1 "LM337IMP/NOPB" H 8500 2000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 8600 2100 50  0001 C CIN
F 3 "" H 8600 2200 50  0000 C CNN
F 4 "Texas Instruments" H 8600 2200 60  0001 C CNN "Mfg. Name"
F 5 "LM337IMP/NOPB" H 8600 2200 60  0001 C CNN "Mfg. Part Number"
F 6 "173-28-875" H 8600 2200 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/spaenningsregulator-37-sot-223-lm337-texas-instruments-lm337imp-nopb/p/17328875" H 8600 2200 60  0001 C CNN "Elfa Link"
F 8 "2781817" H 8600 2200 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/texas-instruments/lm337imp-nopb/linear-volt-reg-1-2-37v-1-5a-sot223/dp/2781817" H 8600 2200 60  0001 C CNN "Farnell Link"
F 10 "926-LM337IMP/NOPB" H 8600 2200 60  0001 C CNN "Mouser PN"
F 11 "LM337IMP/NOPBCT-ND" H 8600 2200 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/texas-instruments/LM337IMP-NOPB/LM337IMP-NOPBCT-ND/270746" H 8600 2200 60  0001 C CNN "Digikey Link"
	1    8600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2150 8150 2150
$Comp
L fieldmill10-rescue:ADG601 U1
U 1 1 5A82C595
P 10400 3900
F 0 "U1" H 10400 4300 60  0000 C CNN
F 1 "ADG601BRTZ" H 10400 4200 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 10400 3900 60  0001 C CNN
F 3 "" H 10400 3900 60  0000 C CNN
F 4 "1661035" H 10400 3900 60  0001 C CNN "Farnell PN"
F 5 "https://se.farnell.com/analog-devices/adg601brtz-reel7/analogue-switch-spst-2ohm-sot23/dp/1661035" H 10400 3900 60  0001 C CNN "Farnell Link"
F 6 "584-ADG601BRTZ-R7" H 10400 3900 60  0001 C CNN "Mouser PN"
F 7 "ADG601BRTZ-REEL7CT-ND" H 10400 3900 60  0001 C CNN "Digikey PN"
F 8 "https://www.digikey.se/product-detail/en/analog-devices-inc/ADG601BRTZ-REEL7/ADG601BRTZ-REEL7CT-ND/820426" H 10400 3900 60  0001 C CNN "Digikey Link"
F 9 "+adg601" H 10400 4100 60  0000 C CNN "fit_field"
	1    10400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 3900 11100 3900
Wire Wire Line
	11100 3900 11100 4200
Wire Wire Line
	11100 4500 9950 4500
$Comp
L fieldmill10-rescue:GND #PWR17
U 1 1 5A82CC17
P 10850 4000
F 0 "#PWR17" H 10850 3750 50  0001 C CNN
F 1 "GND" H 10850 3850 50  0000 C CNN
F 2 "" H 10850 4000 50  0000 C CNN
F 3 "" H 10850 4000 50  0000 C CNN
	1    10850 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10850 3800 10900 3800
Wire Wire Line
	10900 3800 10900 3150
Wire Wire Line
	10900 3150 7450 3150
Wire Wire Line
	7450 2650 7450 3150
Wire Wire Line
	6150 2650 6650 2650
Connection ~ 6650 2650
Text Label 6700 2650 0    60   ~ 0
EN_VGND
$Comp
L fieldmill10-rescue:R_Small R31
U 1 1 5A82D6C5
P 10400 4200
F 0 "R31" H 10430 4220 50  0000 L CNN
F 1 "0" H 10430 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 10400 4200 50  0001 C CNN
F 3 "" H 10400 4200 50  0000 C CNN
F 4 "-adg601,-lab" V 10350 4550 60  0000 C CNN "fit_field"
	1    10400 4200
	0    1    1    0   
$EndComp
Connection ~ 9650 4000
Wire Wire Line
	9650 3250 9750 3250
Wire Wire Line
	9650 3250 9650 3450
Connection ~ 9650 3450
Connection ~ 9350 3800
Wire Wire Line
	10300 4200 9900 4200
Wire Wire Line
	9900 4200 9900 3900
Connection ~ 9900 3900
Wire Wire Line
	10500 4200 11100 4200
Connection ~ 11100 4200
Text Notes 8200 600  0    60   ~ 0
Any SMA diode is fine
Text Notes 10000 1650 0    60   ~ 0
Any 5V6 SMA Zener is fine
Wire Wire Line
	9200 2600 9200 2250
Connection ~ 9200 2250
$Comp
L fieldmill10-rescue:D D3
U 1 1 5A8C26A3
P 9400 2050
F 0 "D3" H 9400 1950 50  0000 C CNN
F 1 "STTH102A" H 9400 2150 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 9400 2050 50  0001 C CNN
F 3 "" H 9400 2050 50  0000 C CNN
F 4 "STMicroelectronics" H 9400 2050 60  0001 C CNN "Mfg. Name"
F 5 "STTH102A" H 9400 2050 60  0001 C CNN "Mfg. Part Number"
F 6 "300-34-074" H 9400 2050 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/likriktardiod-sma-200-st-stth102a/p/30034074" H 9400 2050 60  0001 C CNN "Elfa Link"
F 8 "9907874" H 9400 2050 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/stmicroelectronics/stth102a/diode-ultrafast-1a-200v-sma/dp/9907874" H 9400 2050 60  0001 C CNN "Farnell Link"
F 10 "511-STTH102A" H 9400 2050 60  0001 C CNN "Mouser PN"
F 11 "497-2500-1-ND" H 9400 2050 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/stmicroelectronics/STTH102A/497-2500-1-ND/603882" H 9400 2050 60  0001 C CNN "Digikey Link"
	1    9400 2050
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:D D4
U 1 1 5A8C2B10
P 8600 2600
F 0 "D4" H 8600 2500 50  0000 C CNN
F 1 "STTH102A" H 8600 2700 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" H 8600 2600 50  0001 C CNN
F 3 "" H 8600 2600 50  0000 C CNN
F 4 "STMicroelectronics" H 8600 2600 60  0001 C CNN "Mfg. Name"
F 5 "STTH102A" H 8600 2600 60  0001 C CNN "Mfg. Part Number"
F 6 "300-34-074" H 8600 2600 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/likriktardiod-sma-200-st-stth102a/p/30034074" H 8600 2600 60  0001 C CNN "Elfa Link"
F 8 "9907874" H 8600 2600 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/stmicroelectronics/stth102a/diode-ultrafast-1a-200v-sma/dp/9907874" H 8600 2600 60  0001 C CNN "Farnell Link"
F 10 "511-STTH102A" H 8600 2600 60  0001 C CNN "Mouser PN"
F 11 "497-2500-1-ND" H 8600 2600 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/stmicroelectronics/STTH102A/497-2500-1-ND/603882" H 8600 2600 60  0001 C CNN "Digikey Link"
	1    8600 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 1250 6900 1450
Wire Wire Line
	6900 1450 6700 1450
Connection ~ 6700 1450
Connection ~ 6150 1750
Wire Wire Line
	5800 1750 6150 1750
$Sheet
S 4850 1600 950  300 
U 5AA6613A
F0 "motor_filter" 60
F1 "motor_filter.sch" 60
F2 "PWM" I R 5800 1750 60 
$EndSheet
$Comp
L fieldmill10-rescue:C_Small C3
U 1 1 5AA7BC0A
P 5350 4400
F 0 "C3" H 5360 4470 50  0000 L CNN
F 1 "100n" H 5360 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5350 4400 50  0001 C CNN
F 3 "" H 5350 4400 50  0000 C CNN
F 4 "Panasonic" H 5350 4400 60  0001 C CNN "Mfg. Name"
F 5 "ECH-U1C104GX5" H 5350 4400 60  0001 C CNN "Mfg. Part Number"
F 6 "300-41-614" H 5350 4400 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/kondensator-100-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c104gx5/p/30041614" H 5350 4400 60  0001 C CNN "Elfa Link"
F 8 "9695001" H 5350 4400 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/panasonic-electronic-components/echu1c104gx5/cap-film-pps-100nf-16v-smd/dp/9695001" H 5350 4400 60  0001 C CNN "Farnell Link"
F 10 "667-ECH-U1C104GX5" H 5350 4400 60  0001 C CNN "Mouser PN"
F 11 "PCF1189CT-ND" H 5350 4400 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C104GX5/PCF1189CT-ND/353736" H 5350 4400 60  0001 C CNN "Digikey Link"
	1    5350 4400
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR23
U 1 1 5AA7BCAA
P 5350 4500
F 0 "#PWR23" H 5350 4250 50  0001 C CNN
F 1 "GND" H 5350 4350 50  0000 C CNN
F 2 "" H 5350 4500 50  0000 C CNN
F 3 "" H 5350 4500 50  0000 C CNN
	1    5350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4300 5350 4200
Connection ~ 5350 4200
$Comp
L fieldmill10-rescue:C_Small C24
U 1 1 5AA7C428
P 3900 4550
F 0 "C24" H 3910 4620 50  0000 L CNN
F 1 "100n" H 3910 4470 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3900 4550 50  0001 C CNN
F 3 "" H 3900 4550 50  0000 C CNN
F 4 "ECH-U1C104GX5" H 3900 4550 60  0001 C CNN "Mfg. Part Number"
F 5 "300-41-614" H 3900 4550 60  0001 C CNN "Elfa PN"
F 6 "https://www.elfa.se/sv/kondensator-100-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c104gx5/p/30041614" H 3900 4550 60  0001 C CNN "Elfa Link"
F 7 "9695001" H 3900 4550 60  0001 C CNN "Farnell PN"
F 8 "https://se.farnell.com/panasonic-electronic-components/echu1c104gx5/cap-film-pps-100nf-16v-smd/dp/9695001" H 3900 4550 60  0001 C CNN "Farnell Link"
F 9 "667-ECH-U1C104GX5" H 3900 4550 60  0001 C CNN "Mouser PN"
F 10 "PCF1189CT-ND" H 3900 4550 60  0001 C CNN "Digikey PN"
F 11 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C104GX5/PCF1189CT-ND/353736" H 3900 4550 60  0001 C CNN "Digikey Link"
	1    3900 4550
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C56
U 1 1 5AA7C4D2
P 3900 4850
F 0 "C56" H 3910 4920 50  0000 L CNN
F 1 "100n" H 3910 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3900 4850 50  0001 C CNN
F 3 "" H 3900 4850 50  0000 C CNN
F 4 "ECH-U1C104GX5" H 3900 4850 60  0001 C CNN "Mfg. Part Number"
F 5 "300-41-614" H 3900 4850 60  0001 C CNN "Elfa PN"
F 6 "https://www.elfa.se/sv/kondensator-100-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c104gx5/p/30041614" H 3900 4850 60  0001 C CNN "Elfa Link"
F 7 "9695001" H 3900 4850 60  0001 C CNN "Farnell PN"
F 8 "https://se.farnell.com/panasonic-electronic-components/echu1c104gx5/cap-film-pps-100nf-16v-smd/dp/9695001" H 3900 4850 60  0001 C CNN "Farnell Link"
F 9 "667-ECH-U1C104GX5" H 3900 4850 60  0001 C CNN "Mouser PN"
F 10 "PCF1189CT-ND" H 3900 4850 60  0001 C CNN "Digikey PN"
F 11 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C104GX5/PCF1189CT-ND/353736" H 3900 4850 60  0001 C CNN "Digikey Link"
	1    3900 4850
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:GND #PWR25
U 1 1 5AA7CC11
P 3800 4700
F 0 "#PWR25" H 3800 4450 50  0001 C CNN
F 1 "GND" H 3800 4550 50  0000 C CNN
F 2 "" H 3800 4700 50  0000 C CNN
F 3 "" H 3800 4700 50  0000 C CNN
	1    3800 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 4400 3900 4400
Wire Wire Line
	4050 4400 4050 4150
Wire Wire Line
	3900 4400 3900 4450
Connection ~ 3900 4400
Wire Wire Line
	3900 4650 3900 4700
Wire Wire Line
	3800 4700 3900 4700
Connection ~ 3900 4700
Wire Wire Line
	4150 5000 3900 5000
Wire Wire Line
	3900 5000 3900 4950
Connection ~ 4150 5000
$Comp
L fieldmill10-rescue:C_Small C29
U 1 1 5AA7DC34
P 4350 4600
F 0 "C29" H 4360 4670 50  0000 L CNN
F 1 "100n" H 4360 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 4350 4600 50  0001 C CNN
F 3 "" H 4350 4600 50  0000 C CNN
F 4 "ECH-U1C104GX5" H 4350 4600 60  0001 C CNN "Mfg. Part Number"
F 5 "300-41-614" H 4350 4600 60  0001 C CNN "Elfa PN"
F 6 "https://www.elfa.se/sv/kondensator-100-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c104gx5/p/30041614" H 4350 4600 60  0001 C CNN "Elfa Link"
F 7 "9695001" H 4350 4600 60  0001 C CNN "Farnell PN"
F 8 "https://se.farnell.com/panasonic-electronic-components/echu1c104gx5/cap-film-pps-100nf-16v-smd/dp/9695001" H 4350 4600 60  0001 C CNN "Farnell Link"
F 9 "667-ECH-U1C104GX5" H 4350 4600 60  0001 C CNN "Mouser PN"
F 10 "PCF1189CT-ND" H 4350 4600 60  0001 C CNN "Digikey PN"
F 11 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C104GX5/PCF1189CT-ND/353736" H 4350 4600 60  0001 C CNN "Digikey Link"
	1    4350 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 3850 5400 3850
Connection ~ 5400 3850
$Comp
L fieldmill10-rescue:C_Small C26
U 1 1 5AA7EB28
P 4800 4550
F 0 "C26" H 4810 4620 50  0000 L CNN
F 1 "100n" H 4810 4470 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 4800 4550 50  0001 C CNN
F 3 "" H 4800 4550 50  0000 C CNN
F 4 "ECH-U1C104GX5" H 4800 4550 60  0001 C CNN "Mfg. Part Number"
F 5 "300-41-614" H 4800 4550 60  0001 C CNN "Elfa PN"
F 6 "https://www.elfa.se/sv/kondensator-100-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c104gx5/p/30041614" H 4800 4550 60  0001 C CNN "Elfa Link"
F 7 "9695001" H 4800 4550 60  0001 C CNN "Farnell PN"
F 8 "https://se.farnell.com/panasonic-electronic-components/echu1c104gx5/cap-film-pps-100nf-16v-smd/dp/9695001" H 4800 4550 60  0001 C CNN "Farnell Link"
F 9 "667-ECH-U1C104GX5" H 4800 4550 60  0001 C CNN "Mouser PN"
F 10 "PCF1189CT-ND" H 4800 4550 60  0001 C CNN "Digikey PN"
F 11 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C104GX5/PCF1189CT-ND/353736" H 4800 4550 60  0001 C CNN "Digikey Link"
	1    4800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4250 4200 4400
Wire Wire Line
	4200 4600 4250 4600
Wire Wire Line
	4250 4400 4200 4400
Connection ~ 4200 4400
Wire Wire Line
	4450 4600 4500 4600
Connection ~ 4500 4600
Wire Wire Line
	4500 4250 4450 4250
Wire Wire Line
	4450 4250 4450 4150
Wire Wire Line
	4800 4650 4800 4700
Wire Wire Line
	4800 4700 4600 4700
Connection ~ 4600 4700
Wire Wire Line
	4800 4350 4800 4450
Wire Wire Line
	4550 4350 4600 4350
Wire Wire Line
	4550 4350 4550 4150
Wire Wire Line
	4600 4450 4600 4350
Connection ~ 4600 4350
Wire Wire Line
	5100 4300 5100 4200
Connection ~ 5100 4200
$Comp
L fieldmill10-rescue:C_Small C61
U 1 1 5AA8127E
P 9350 4300
F 0 "C61" H 9360 4370 50  0000 L CNN
F 1 "100n" H 9360 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 9350 4300 50  0001 C CNN
F 3 "" H 9350 4300 50  0000 C CNN
F 4 "ECH-U1C104GX5" H 9350 4300 60  0001 C CNN "Mfg. Part Number"
F 5 "300-41-614" H 9350 4300 60  0001 C CNN "Elfa PN"
F 6 "https://www.elfa.se/sv/kondensator-100-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c104gx5/p/30041614" H 9350 4300 60  0001 C CNN "Elfa Link"
F 7 "9695001" H 9350 4300 60  0001 C CNN "Farnell PN"
F 8 "https://se.farnell.com/panasonic-electronic-components/echu1c104gx5/cap-film-pps-100nf-16v-smd/dp/9695001" H 9350 4300 60  0001 C CNN "Farnell Link"
F 9 "667-ECH-U1C104GX5" H 9350 4300 60  0001 C CNN "Mouser PN"
F 10 "PCF1189CT-ND" H 9350 4300 60  0001 C CNN "Digikey PN"
F 11 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C104GX5/PCF1189CT-ND/353736" H 9350 4300 60  0001 C CNN "Digikey Link"
	1    9350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4150 9350 4200
Wire Wire Line
	9350 4450 9350 4400
Connection ~ 9150 4450
$Comp
L fieldmill10-rescue:C_Small C7
U 1 1 5AA8682D
P 3000 3200
F 0 "C7" H 3010 3270 50  0000 L CNN
F 1 "10n" H 3010 3120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3000 3200 50  0001 C CNN
F 3 "" H 3000 3200 50  0000 C CNN
F 4 "Panasonic" H 3000 3200 60  0001 C CNN "Mfg. Name"
F 5 "ECH-U1C103GX5" H 3000 3200 60  0001 C CNN "Mfg. Part Number"
F 6 "300-41-612" H 3000 3200 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/kondensator-10-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c103gx5/p/30041612" H 3000 3200 60  0001 C CNN "Elfa Link"
F 8 "9694897" H 3000 3200 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/panasonic-electronic-components/echu1c103gx5/cap-film-pps-10nf-16v-smd/dp/9694897" H 3000 3200 60  0001 C CNN "Farnell Link"
F 10 "667-ECH-U1C103GX5" H 3000 3200 60  0001 C CNN "Mouser PN"
F 11 "PCF1177CT-ND" H 3000 3200 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C103GX5/PCF1177CT-ND/353724" H 3000 3200 60  0001 C CNN "Digikey Link"
	1    3000 3200
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C11
U 1 1 5AA86961
P 3000 3750
F 0 "C11" H 3010 3820 50  0000 L CNN
F 1 "10n" H 3010 3670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3000 3750 50  0001 C CNN
F 3 "" H 3000 3750 50  0000 C CNN
F 4 "Panasonic" H 3000 3750 60  0001 C CNN "Mfg. Name"
F 5 "ECH-U1C103GX5" H 3000 3750 60  0001 C CNN "Mfg. Part Number"
F 6 "300-41-612" H 3000 3750 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/kondensator-10-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c103gx5/p/30041612" H 3000 3750 60  0001 C CNN "Elfa Link"
F 8 "9694897" H 3000 3750 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/panasonic-electronic-components/echu1c103gx5/cap-film-pps-10nf-16v-smd/dp/9694897" H 3000 3750 60  0001 C CNN "Farnell Link"
F 10 "667-ECH-U1C103GX5" H 3000 3750 60  0001 C CNN "Mouser PN"
F 11 "PCF1177CT-ND" H 3000 3750 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C103GX5/PCF1177CT-ND/353724" H 3000 3750 60  0001 C CNN "Digikey Link"
	1    3000 3750
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C16
U 1 1 5AA7EB26
P 4600 4550
F 0 "C16" H 4610 4620 50  0000 L CNN
F 1 "1u" H 4610 4470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4600 4550 50  0001 C CNN
F 3 "" H 4600 4550 50  0000 C CNN
F 4 "KEMET" H 4600 4550 60  0001 C CNN "Mfg. Name"
F 5 "C0805X105K3RACAUTO" H 4600 4550 60  0001 C CNN "Mfg. Part Number"
F 6 "2478267" H 4600 4550 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x105k3racauto/kondensator-mlcc-x7r-1-f-25v-0805/dp/2478267" H 4600 4550 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X105K3RAUTO" H 4600 4550 60  0001 C CNN "Mouser PN"
F 9 "399-6996-1-ND" H 4600 4550 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X105K3RACAUTO/399-6996-1-ND/3314504" H 4600 4550 60  0001 C CNN "Digikey Link"
	1    4600 4550
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C6
U 1 1 5AA7EC53
P 4450 2150
F 0 "C6" H 4460 2220 50  0000 L CNN
F 1 "1u" H 4460 2070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4450 2150 50  0001 C CNN
F 3 "" H 4450 2150 50  0000 C CNN
F 4 "KEMET" H 4450 2150 60  0001 C CNN "Mfg. Name"
F 5 "C0805X105K3RACAUTO" H 4450 2150 60  0001 C CNN "Mfg. Part Number"
F 6 "2478267" H 4450 2150 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x105k3racauto/kondensator-mlcc-x7r-1-f-25v-0805/dp/2478267" H 4450 2150 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X105K3RAUTO" H 4450 2150 60  0001 C CNN "Mouser PN"
F 9 "399-6996-1-ND" H 4450 2150 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X105K3RACAUTO/399-6996-1-ND/3314504" H 4450 2150 60  0001 C CNN "Digikey Link"
	1    4450 2150
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C4
U 1 1 5AA81520
P 8050 1900
F 0 "C4" H 8060 1970 50  0000 L CNN
F 1 "10u" H 8060 1820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8050 1900 50  0001 C CNN
F 3 "" H 8050 1900 50  0000 C CNN
F 4 "KEMET" H 8050 1900 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 8050 1900 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 8050 1900 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 8050 1900 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 8050 1900 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 8050 1900 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 8050 1900 60  0001 C CNN "Digikey Link"
	1    8050 1900
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C2
U 1 1 5AA8164B
P 8650 1750
F 0 "C2" H 8660 1820 50  0000 L CNN
F 1 "10u" H 8660 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8650 1750 50  0001 C CNN
F 3 "" H 8650 1750 50  0000 C CNN
F 4 "KEMET" H 8650 1750 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 8650 1750 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 8650 1750 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 8650 1750 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 8650 1750 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 8650 1750 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 8650 1750 60  0001 C CNN "Digikey Link"
	1    8650 1750
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C5
U 1 1 5AA8177F
P 9650 2100
F 0 "C5" H 9660 2170 50  0000 L CNN
F 1 "10u" H 9660 2020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9650 2100 50  0001 C CNN
F 3 "" H 9650 2100 50  0000 C CNN
F 4 "KEMET" H 9650 2100 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 9650 2100 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 9650 2100 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 9650 2100 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 9650 2100 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 9650 2100 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 9650 2100 60  0001 C CNN "Digikey Link"
	1    9650 2100
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C9
U 1 1 5AA8192C
P 9850 3250
F 0 "C9" H 9860 3320 50  0000 L CNN
F 1 "10u" H 9860 3170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9850 3250 50  0001 C CNN
F 3 "" H 9850 3250 50  0000 C CNN
F 4 "KEMET" H 9850 3250 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 9850 3250 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 9850 3250 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 9850 3250 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 9850 3250 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 9850 3250 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 9850 3250 60  0001 C CNN "Digikey Link"
	1    9850 3250
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:C_Small C14
U 1 1 5AA81D4D
P 9800 4400
F 0 "C14" H 9810 4470 50  0000 L CNN
F 1 "10u" H 9810 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9800 4400 50  0001 C CNN
F 3 "" H 9800 4400 50  0000 C CNN
F 4 "KEMET" H 9800 4400 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 9800 4400 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 9800 4400 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 9800 4400 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 9800 4400 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 9800 4400 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 9800 4400 60  0001 C CNN "Digikey Link"
	1    9800 4400
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:C_Small C17
U 1 1 5AA822A0
P 5550 5750
F 0 "C17" H 5560 5820 50  0000 L CNN
F 1 "10u" H 5560 5670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5550 5750 50  0001 C CNN
F 3 "" H 5550 5750 50  0000 C CNN
F 4 "KEMET" H 5550 5750 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 5550 5750 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 5550 5750 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 5550 5750 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 5550 5750 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 5550 5750 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 5550 5750 60  0001 C CNN "Digikey Link"
	1    5550 5750
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:C_Small C12
U 1 1 5AA82BA5
P 5100 4400
F 0 "C12" H 5110 4470 50  0000 L CNN
F 1 "10u" H 5110 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5100 4400 50  0001 C CNN
F 3 "" H 5100 4400 50  0000 C CNN
F 4 "KEMET" H 5100 4400 60  0001 C CNN "Mfg. Name"
F 5 "C0805X106M8RACAUTO" H 5100 4400 60  0001 C CNN "Mfg. Part Number"
F 6 "2776919" H 5100 4400 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/kemet/c0805x106m8racauto/cap-mlcc-aec-q200-x7r-20-10v-0805/dp/2776919" H 5100 4400 60  0001 C CNN "Farnell Link"
F 8 "80-C0805X106M8RAUTO" H 5100 4400 60  0001 C CNN "Mouser PN"
F 9 "399-15692-1-ND" H 5100 4400 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/kemet/C0805X106M8RACAUTO/399-15692-1-ND/7427572" H 5100 4400 60  0001 C CNN "Digikey Link"
	1    5100 4400
	1    0    0    -1  
$EndComp
$Comp
L fieldmill10-rescue:R_Small R4
U 1 1 5AD7BF6A
P 3900 1600
F 0 "R4" H 3930 1620 50  0000 L CNN
F 1 "0" H 3930 1560 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3900 1600 50  0001 C CNN
F 3 "" H 3900 1600 50  0000 C CNN
F 4 "dnf" V 3850 1750 60  0000 C CNN "fit_field"
	1    3900 1600
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R6
U 1 1 5AD7CC29
P 3900 1800
F 0 "R6" H 3930 1820 50  0000 L CNN
F 1 "0" H 3930 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3900 1800 50  0001 C CNN
F 3 "" H 3900 1800 50  0000 C CNN
F 4 "dnf" V 3850 1950 60  0000 C CNN "fit_field"
	1    3900 1800
	0    1    1    0   
$EndComp
$Comp
L fieldmill10-rescue:R_Small R7
U 1 1 5AD7D420
P 3900 2000
F 0 "R7" H 3930 2020 50  0000 L CNN
F 1 "0" H 3930 1960 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3900 2000 50  0001 C CNN
F 3 "" H 3900 2000 50  0000 C CNN
F 4 "dnf" V 3850 1850 60  0000 C CNN "fit_field"
	1    3900 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 1600 8850 1600
Wire Wire Line
	8650 1900 8850 1900
Wire Wire Line
	9850 2250 10000 2250
Wire Wire Line
	9850 1200 10050 1200
Wire Wire Line
	9650 2250 9850 2250
Wire Wire Line
	9050 1600 9650 1600
Wire Wire Line
	9050 2250 9200 2250
Wire Wire Line
	8600 1600 8650 1600
Wire Wire Line
	8950 1600 9050 1600
Wire Wire Line
	8150 2250 8200 2250
Wire Wire Line
	8150 2250 8150 2600
Wire Wire Line
	9050 1900 9050 1950
Wire Wire Line
	9050 1900 9400 1900
Wire Wire Line
	8250 1200 8300 1200
Wire Wire Line
	10750 4700 10900 4700
Wire Wire Line
	10550 4700 10750 4700
Wire Wire Line
	10350 4700 10550 4700
Wire Wire Line
	7450 2250 8050 2250
Wire Wire Line
	7250 2050 7900 2050
Wire Wire Line
	6700 2250 7450 2250
Wire Wire Line
	6700 2050 7250 2050
Wire Wire Line
	6700 1850 7050 1850
Wire Wire Line
	6650 3950 6700 3950
Wire Wire Line
	6700 3850 6750 3850
Wire Wire Line
	6650 2850 7150 2850
Wire Wire Line
	6650 2550 7350 2550
Wire Wire Line
	6650 1550 6700 1550
Wire Wire Line
	6700 1550 6700 1450
Wire Wire Line
	6650 3850 6700 3850
Wire Wire Line
	6150 3750 6650 3750
Wire Wire Line
	6100 3650 6150 3650
Wire Wire Line
	5450 3150 5900 3150
Wire Wire Line
	9650 4500 9650 4600
Wire Wire Line
	9650 4400 9650 4500
Wire Wire Line
	6650 1650 6700 1650
Wire Wire Line
	7050 1850 7750 1850
Wire Wire Line
	6650 1850 6700 1850
Wire Wire Line
	6650 1950 6700 1950
Wire Wire Line
	6650 2050 6700 2050
Wire Wire Line
	6650 2150 6700 2150
Wire Wire Line
	6650 2250 6700 2250
Wire Wire Line
	6650 2350 6700 2350
Wire Wire Line
	6650 2450 7250 2450
Wire Wire Line
	6150 2950 6650 2950
Wire Wire Line
	6150 3050 6650 3050
Wire Wire Line
	6150 3150 6650 3150
Wire Wire Line
	6150 3250 6650 3250
Wire Wire Line
	6150 3350 6650 3350
Wire Wire Line
	6150 3450 6650 3450
Wire Wire Line
	6150 3550 6650 3550
Wire Wire Line
	6150 3650 6650 3650
Wire Wire Line
	5400 3650 5450 3650
Wire Wire Line
	5700 3650 5850 3650
Wire Wire Line
	5850 3650 6100 3650
Wire Wire Line
	5450 5600 5550 5600
Wire Wire Line
	6700 5700 6750 5700
Wire Wire Line
	5550 5600 5850 5600
Wire Wire Line
	800  7000 800  7100
Wire Wire Line
	800  7100 800  7300
Wire Wire Line
	800  6900 800  7000
Wire Wire Line
	3000 3900 3300 3900
Wire Wire Line
	3000 3600 3250 3600
Wire Wire Line
	3000 3350 3200 3350
Wire Wire Line
	3000 3050 3200 3050
Wire Wire Line
	3000 2850 3250 2850
Wire Wire Line
	3000 2550 3300 2550
Wire Wire Line
	4150 4200 4150 4900
Wire Wire Line
	4750 4200 5100 4200
Wire Wire Line
	4150 4900 4150 5000
Wire Wire Line
	4500 4900 4150 4900
Wire Wire Line
	4500 4400 4500 4600
Wire Wire Line
	4050 2400 4050 2450
Wire Wire Line
	4150 2200 4150 2450
Wire Wire Line
	4250 2000 4250 2450
Wire Wire Line
	3750 1600 3750 1800
Wire Wire Line
	3750 1600 3800 1600
Wire Wire Line
	3650 2200 3650 2400
Wire Wire Line
	3650 2200 3800 2200
Wire Wire Line
	5400 4200 5550 4200
Wire Wire Line
	3450 3800 3600 3800
Wire Wire Line
	8500 4450 9050 4450
Wire Wire Line
	9050 4150 9050 4200
Wire Wire Line
	9050 4450 9150 4450
Wire Wire Line
	9100 3900 9900 3900
Wire Wire Line
	9150 4150 9150 4200
Wire Wire Line
	9150 4150 9350 4150
Wire Wire Line
	8450 1600 8600 1600
Wire Wire Line
	8050 1200 8250 1200
Wire Wire Line
	8050 1200 8050 1300
Wire Wire Line
	8050 1600 8450 1600
Wire Wire Line
	8050 1600 8050 1800
Wire Wire Line
	8050 2250 8050 2550
Wire Wire Line
	8050 2250 8150 2250
Wire Wire Line
	9950 4700 9950 4750
Wire Wire Line
	8850 1900 9050 1900
Wire Wire Line
	8850 1600 8950 1600
Wire Wire Line
	9350 3450 9350 3800
Wire Wire Line
	9450 3450 9650 3450
Wire Wire Line
	9400 2250 9650 2250
Wire Wire Line
	8950 1200 8950 1250
Wire Wire Line
	8950 1250 8950 1300
Wire Wire Line
	8950 1150 8950 1200
Wire Wire Line
	6650 2650 7450 2650
Wire Wire Line
	9650 4000 9950 4000
Wire Wire Line
	9650 3450 9700 3450
Wire Wire Line
	9350 3800 9950 3800
Wire Wire Line
	9900 3900 9950 3900
Wire Wire Line
	11100 4200 11100 4500
Wire Wire Line
	9200 2250 9400 2250
Wire Wire Line
	6700 1450 6700 1350
Wire Wire Line
	6150 1750 6650 1750
Wire Wire Line
	5350 4200 5400 4200
Wire Wire Line
	3900 4400 4050 4400
Wire Wire Line
	3900 4700 3900 4750
Wire Wire Line
	4150 5000 4150 5050
Wire Wire Line
	5400 3850 5400 4200
Wire Wire Line
	4200 4400 4200 4600
Wire Wire Line
	4500 4600 4500 4900
Wire Wire Line
	4600 4700 4600 4900
Wire Wire Line
	4600 4350 4800 4350
Wire Wire Line
	5100 4200 5350 4200
Wire Wire Line
	9150 4450 9350 4450
$EndSCHEMATC
