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
LIBS:fieldmill10-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 4950 2    60   ~ 0
SENSORP
Text Label 9000 3200 2    60   ~ 0
SENSORN
$Comp
L R_Small R30
U 1 1 58060B75
P 6550 3650
AR Path="/57B05F2F/58060B75" Ref="R30"  Part="1" 
AR Path="/57B0A0EC/58060B75" Ref="R36"  Part="1" 
AR Path="/57B0A102/58060B75" Ref="R42"  Part="1" 
F 0 "R42" H 6580 3670 50  0000 L CNN
F 1 "100M" H 6580 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6550 3650 50  0001 C CNN
F 3 "" H 6550 3650 50  0000 C CNN
F 4 "Vishay" H 6550 3650 60  0001 C CNN "Mfg. Name"
F 5 "CRHV1206AF100MFK" H 6550 3650 60  0001 C CNN "Mfg. Part Number"
F 6 "1109056" H 6550 3650 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/vishay/crhv1206af100mfkft/motst-tunnfilm-100m-1-0-3w-1206/dp/1109056" H 6550 3650 60  0001 C CNN "Farnell Link"
F 8 "71-CRHV1206AF100MFKF" H 6550 3650 60  0001 C CNN "Mouser PN"
F 9 "CRHV100MACT-ND" H 6550 3650 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/vishay-dale/CRHV1206AF100MFKE5/CRHV100MACT-ND/2499032" H 6550 3650 60  0001 C CNN "Digikey Link"
F 11 "9235809" H 6550 3650 60  0001 C CNN "1st Distrib. PN"
F 12 "http://se.farnell.com/yageo-phycomp/rc2010fk-0710ml/motst-tjockfilm-10m-1-0-5w-2010/dp/9235809" H 6550 3650 60  0001 C CNN "1st Distrib. Link"
	1    6550 3650
	0    1    1    0   
$EndComp
$Comp
L C_Small C21
U 1 1 58060BBB
P 6550 3950
AR Path="/57B05F2F/58060BBB" Ref="C21"  Part="1" 
AR Path="/57B0A0EC/58060BBB" Ref="C32"  Part="1" 
AR Path="/57B0A102/58060BBB" Ref="C38"  Part="1" 
F 0 "C38" H 6560 4020 50  0000 L CNN
F 1 "1p" H 6560 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6550 3950 50  0001 C CNN
F 3 "" H 6550 3950 50  0000 C CNN
F 4 "Cornell Dubilier Electronics" H 6550 3950 60  0001 C CNN "Mfg. Name"
F 5 "MC08CA010D-F" H 6550 3950 60  0001 C CNN "Mfg. Part Number"
F 6 "1610819" H 6550 3950 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/cornell-dubilier/mc08ca010d-f/capacitor-rf-microwave-1pf-100v/dp/1610819" H 6550 3950 60  0001 C CNN "Farnell Link"
F 8 "5982-08-100V1.0-F" H 6550 3950 60  0001 C CNN "Mouser PN"
F 9 "338-1339-ND" H 6550 3950 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/cornell-dubilier-electronics-cde/MC08CA010D-F/338-1339-ND/969296" H 6550 3950 60  0001 C CNN "Digikey Link"
	1    6550 3950
	0    1    1    0   
$EndComp
Text HLabel 6000 4850 0    60   Input ~ 0
OUT+
Text HLabel 6000 3950 0    60   Input ~ 0
OUT-
Text Notes 1850 1200 0    60   ~ 0
This design is based on the paper "A Highly Sensitive Field Mill for Registering\nWeak and Strong Variations of the Electric-Field Intensity of the Earth’s Atmosphere" by Boldyrev et al.\nSome differences include removing the OPA1632 for lower complexity and power use,\nand lower values on the feedback resistors due to lack of component choices.\nLower values also reduce the noise due to of variable parasitic capacitances (vibrating metal parts)\nVishay's 1G resistors could also work, and can also be stacked to make 500M. With such\na high value oscillation become an issue due to insufficient compensation
Text Notes 6100 6300 0    60   ~ 0
Silver mica\n1p capacitor serves both to low-pass (1.6 kHz)\nand offer compensation to prevent oscillation\nWithout it oscillation *will* happen
Text Notes 7300 2600 0    60   ~ 0
T filter to block RF but let our 300 Hz signal through\nI would have used a CM choke, but inter-winding leakage may be an issue\nWIth discrete inductors there's nowhere to leak to\nThere's two "layers" of inductors here:\n56 nH to block S-band and X-band (<=23 GHz)\n10-ish nH in the traces
Text GLabel 7150 2850 1    60   Input ~ 0
VGND
Text Notes 2200 3750 0    47   ~ 0
LTC6241: 2*2.4 mA + I/O, 2.8 .. 6 V\nOutputs drive 5V/(10k+10k) -> 0.25 mA\nTotal: 5.05 mA
$Comp
L L L1
U 1 1 58CE5B9B
P 7550 3200
AR Path="/57B05F2F/58CE5B9B" Ref="L1"  Part="1" 
AR Path="/57B0A0EC/58CE5B9B" Ref="L5"  Part="1" 
AR Path="/57B0A102/58CE5B9B" Ref="L9"  Part="1" 
F 0 "L9" V 7500 3200 50  0000 C CNN
F 1 "56n" V 7625 3200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7550 3200 50  0001 C CNN
F 3 "" H 7550 3200 50  0000 C CNN
F 4 "Johanson" H 7550 3200 60  0001 C CNN "Mfg. Name"
F 5 "L-14C56NJV4T" H 7550 3200 60  0001 C CNN "Mfg. Part Number"
F 6 "609-L-14C56NJV4T" H 7550 3200 60  0001 C CNN "Mouser PN"
F 7 "712-1443-1-ND" H 7550 3200 60  0001 C CNN "Digikey PN"
F 8 "https://www.digikey.se/product-detail/en/johanson-technology-inc/L-14C56NJV4T/712-1443-1-ND/1914893" H 7550 3200 60  0001 C CNN "Digikey Link"
	1    7550 3200
	0    1    1    0   
$EndComp
Text Notes 5500 2400 0    60   ~ 0
VGND must be tied to the guard ring!
Wire Wire Line
	8100 4950 8950 4950
Wire Wire Line
	7700 4950 7800 4950
Wire Wire Line
	8100 3200 9000 3200
Wire Wire Line
	7700 3200 7800 3200
Wire Wire Line
	6850 3200 7400 3200
Wire Wire Line
	6100 4850 6100 5700
Wire Wire Line
	6000 3950 6450 3950
Connection ~ 7150 3000
Wire Wire Line
	6850 3000 7150 3000
Wire Wire Line
	7150 2850 7150 4750
Wire Wire Line
	7150 4750 6850 4750
Wire Wire Line
	6850 4950 7400 4950
Wire Wire Line
	6000 4850 6250 4850
Wire Wire Line
	6950 3950 6650 3950
Wire Wire Line
	6950 3200 6950 3950
Connection ~ 6950 3200
Wire Wire Line
	6650 3650 6950 3650
Connection ~ 6950 3650
Wire Wire Line
	6100 3100 6100 3950
Wire Wire Line
	6100 3100 6250 3100
Wire Wire Line
	6450 3650 6100 3650
Connection ~ 6100 3650
Wire Wire Line
	6950 5700 6650 5700
Wire Wire Line
	6950 4950 6950 5700
Connection ~ 6950 4950
Wire Wire Line
	6650 5400 6950 5400
Connection ~ 6950 5400
Wire Wire Line
	6100 5700 6450 5700
Wire Wire Line
	6100 5400 6450 5400
Connection ~ 6100 5400
Connection ~ 6100 4850
Connection ~ 6100 3950
$Comp
L C_Small C15
U 1 1 58CE9E29
P 7750 3650
AR Path="/57B05F2F/58CE9E29" Ref="C15"  Part="1" 
AR Path="/57B0A0EC/58CE9E29" Ref="C34"  Part="1" 
AR Path="/57B0A102/58CE9E29" Ref="C44"  Part="1" 
F 0 "C44" H 7760 3720 50  0000 L CNN
F 1 "100p" H 7760 3570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7750 3650 50  0001 C CNN
F 3 "" H 7750 3650 50  0000 C CNN
F 4 "300-41-617" H 7750 3650 60  0001 C CNN "Elfa PN"
F 5 "https://www.elfa.se/sv/kondensator-100-pf-50-vdc-panasonic-automotive-industrial-systems-echu1h101gx5/p/30041617" H 7750 3650 60  0001 C CNN "Elfa Link"
F 6 "9695125" H 7750 3650 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/panasonic-electronic-components/echu1h101gx5/cap-film-pps-100pf-50v-smd/dp/9695125" H 7750 3650 60  0001 C CNN "Farnell Link"
F 8 "667-ECH-U1H101GX5" H 7750 3650 60  0001 C CNN "Mouser PN"
F 9 "PCF1284CT-ND" H 7750 3650 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1H101GX5/PCF1284CT-ND/353756" H 7750 3650 60  0001 C CNN "Digikey Link"
	1    7750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3750 7750 4150
Wire Wire Line
	7750 3950 7150 3950
Connection ~ 7150 3950
Connection ~ 7750 3950
Connection ~ 7750 4950
Connection ~ 7750 3200
Text Notes 8100 4450 0    60   ~ 0
Film caps (silver mica also ok)\nThese caps are optional, but should improve the RFI filter\nThe -6 dB point is placed at 310 MHz\nThe caps create a 100 MOhm path to VGND @ 300 Hz,\nwhich if the 50 µV input offset\nchanges sign would give rise to a 0.5 pA current\nLarger caps may be OK, but may affect source capacitance\nHave ordered 100 pF
Wire Wire Line
	7750 4350 7750 4950
Wire Wire Line
	7750 3200 7750 3550
Text Notes 7000 5550 0    60   ~ 0
HVCB1206BKE100M is much better\n0.01% tolerance, +-25 ppm/°C\n67 SEK is a bit pricey though\nHVCB2010FKC100M 1% 50 ppm/°C  29 SEK\nCRHV1206AF100MFK* 1% 100 ppm/°C 23 SEK, most available
$Comp
L +2V5 #PWR35
U 1 1 5A7A17A3
P 6650 2800
AR Path="/57B05F2F/5A7A17A3" Ref="#PWR35"  Part="1" 
AR Path="/57B0A0EC/5A7A17A3" Ref="#PWR41"  Part="1" 
AR Path="/57B0A102/5A7A17A3" Ref="#PWR47"  Part="1" 
F 0 "#PWR47" H 6650 2650 50  0001 C CNN
F 1 "+2V5" H 6650 2940 50  0000 C CNN
F 2 "" H 6650 2800 50  0000 C CNN
F 3 "" H 6650 2800 50  0000 C CNN
	1    6650 2800
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR36
U 1 1 5A7A19AE
P 6650 3400
AR Path="/57B05F2F/5A7A19AE" Ref="#PWR36"  Part="1" 
AR Path="/57B0A0EC/5A7A19AE" Ref="#PWR42"  Part="1" 
AR Path="/57B0A102/5A7A19AE" Ref="#PWR48"  Part="1" 
F 0 "#PWR48" H 6650 3250 50  0001 C CNN
F 1 "-2V5" H 6650 3540 50  0000 C CNN
F 2 "" H 6650 3400 50  0000 C CNN
F 3 "" H 6650 3400 50  0000 C CNN
	1    6650 3400
	-1   0    0    1   
$EndComp
$Comp
L OP275 U4
U 1 1 5806023E
P 6550 3100
AR Path="/57B05F2F/5806023E" Ref="U4"  Part="1" 
AR Path="/57B0A0EC/5806023E" Ref="U6"  Part="1" 
AR Path="/57B0A102/5806023E" Ref="U8"  Part="1" 
F 0 "U8" H 6550 3250 50  0000 L CNN
F 1 "LTC6241IS8#PBF" H 6550 3350 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6450 3150 50  0001 C CNN
F 3 "" H 6550 3250 50  0000 C CNN
F 4 "584-LTC6241IS8#PBF" H 6550 3100 60  0001 C CNN "Mouser PN"
F 5 "LTC6241IS8#PBF-ND" H 6550 3100 60  0001 C CNN "Digikey PN"
F 6 "https://www.digikey.se/products/en?keywords=LTC6241IS8%23PBF" H 6550 3100 60  0001 C CNN "Digikey Link"
	1    6550 3100
	-1   0    0    -1  
$EndComp
$Comp
L -2V5 #PWR40
U 1 1 5A7A212C
P 6650 5150
AR Path="/57B05F2F/5A7A212C" Ref="#PWR40"  Part="1" 
AR Path="/57B0A0EC/5A7A212C" Ref="#PWR46"  Part="1" 
AR Path="/57B0A102/5A7A212C" Ref="#PWR52"  Part="1" 
F 0 "#PWR52" H 6650 5000 50  0001 C CNN
F 1 "-2V5" H 6650 5290 50  0000 C CNN
F 2 "" H 6650 5150 50  0000 C CNN
F 3 "" H 6650 5150 50  0000 C CNN
	1    6650 5150
	-1   0    0    1   
$EndComp
$Comp
L +2V5 #PWR39
U 1 1 5A7A218B
P 6650 4550
AR Path="/57B05F2F/5A7A218B" Ref="#PWR39"  Part="1" 
AR Path="/57B0A0EC/5A7A218B" Ref="#PWR45"  Part="1" 
AR Path="/57B0A102/5A7A218B" Ref="#PWR51"  Part="1" 
F 0 "#PWR51" H 6650 4400 50  0001 C CNN
F 1 "+2V5" H 6650 4690 50  0000 C CNN
F 2 "" H 6650 4550 50  0000 C CNN
F 3 "" H 6650 4550 50  0000 C CNN
	1    6650 4550
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR37
U 1 1 5A7A2222
P 5100 4000
AR Path="/57B05F2F/5A7A2222" Ref="#PWR37"  Part="1" 
AR Path="/57B0A0EC/5A7A2222" Ref="#PWR43"  Part="1" 
AR Path="/57B0A102/5A7A2222" Ref="#PWR49"  Part="1" 
F 0 "#PWR49" H 5100 3850 50  0001 C CNN
F 1 "+2V5" H 5100 4140 50  0000 C CNN
F 2 "" H 5100 4000 50  0000 C CNN
F 3 "" H 5100 4000 50  0000 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR38
U 1 1 5A7A2281
P 5100 4500
AR Path="/57B05F2F/5A7A2281" Ref="#PWR38"  Part="1" 
AR Path="/57B0A0EC/5A7A2281" Ref="#PWR44"  Part="1" 
AR Path="/57B0A102/5A7A2281" Ref="#PWR50"  Part="1" 
F 0 "#PWR50" H 5100 4350 50  0001 C CNN
F 1 "-2V5" H 5100 4640 50  0000 C CNN
F 2 "" H 5100 4500 50  0000 C CNN
F 3 "" H 5100 4500 50  0000 C CNN
	1    5100 4500
	-1   0    0    1   
$EndComp
$Comp
L C_Small C20
U 1 1 5A7A2553
P 5100 4100
AR Path="/57B05F2F/5A7A2553" Ref="C20"  Part="1" 
AR Path="/57B0A0EC/5A7A2553" Ref="C25"  Part="1" 
AR Path="/57B0A102/5A7A2553" Ref="C28"  Part="1" 
F 0 "C28" H 5110 4170 50  0000 L CNN
F 1 "100n" H 5110 4020 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5100 4100 50  0001 C CNN
F 3 "" H 5100 4100 50  0000 C CNN
F 4 "ECH-U1C104GX5" H 5100 4100 60  0001 C CNN "Mfg. Part Number"
F 5 "300-41-614" H 5100 4100 60  0001 C CNN "Elfa PN"
F 6 "https://www.elfa.se/sv/kondensator-100-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c104gx5/p/30041614" H 5100 4100 60  0001 C CNN "Elfa Link"
F 7 "9695001" H 5100 4100 60  0001 C CNN "Farnell PN"
F 8 "https://se.farnell.com/panasonic-electronic-components/echu1c104gx5/cap-film-pps-100nf-16v-smd/dp/9695001" H 5100 4100 60  0001 C CNN "Farnell Link"
F 9 "667-ECH-U1C104GX5" H 5100 4100 60  0001 C CNN "Mouser PN"
F 10 "PCF1189CT-ND" H 5100 4100 60  0001 C CNN "Digikey PN"
F 11 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C104GX5/PCF1189CT-ND/353736" H 5100 4100 60  0001 C CNN "Digikey Link"
	1    5100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4200 5100 4300
Wire Wire Line
	5100 4250 7150 4250
Connection ~ 7150 4250
Connection ~ 5100 4250
$Comp
L CONN_01X01 P14
U 1 1 5A7A2B12
P 5450 3700
AR Path="/57B05F2F/5A7A2B12" Ref="P14"  Part="1" 
AR Path="/57B0A0EC/5A7A2B12" Ref="P15"  Part="1" 
AR Path="/57B0A102/5A7A2B12" Ref="P16"  Part="1" 
F 0 "P16" H 5450 3800 50  0000 C CNN
F 1 "Shield" V 5550 3700 50  0000 C CNN
F 2 "SCUBE:36903205S" H 5450 3700 50  0001 C CNN
F 3 "" H 5450 3700 50  0000 C CNN
	1    5450 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 3900 5450 4250
Connection ~ 5450 4250
Text Notes 4950 3500 0    60   ~ 0
Shield is\nWürth 36103205S frame\nWürth 36903205S lid
$Comp
L OP275 U4
U 2 1 5A8C8BB2
P 6550 4850
AR Path="/57B05F2F/5A8C8BB2" Ref="U4"  Part="2" 
AR Path="/57B0A0EC/5A8C8BB2" Ref="U6"  Part="2" 
AR Path="/57B0A102/5A8C8BB2" Ref="U8"  Part="2" 
F 0 "U8" H 6550 5000 50  0000 L CNN
F 1 "LTC6241IS8#PBF" H 6550 5100 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6450 4900 50  0001 C CNN
F 3 "" H 6550 5000 50  0000 C CNN
F 4 "584-LTC6241IS8#PBF" H 6550 4850 60  0001 C CNN "Mouser PN"
F 5 "LTC6241IS8#PBF-ND" H 6550 4850 60  0001 C CNN "Digikey PN"
F 6 "https://www.digikey.se/products/en?keywords=LTC6241IS8%23PBF" H 6550 4850 60  0001 C CNN "Digikey Link"
	2    6550 4850
	-1   0    0    -1  
$EndComp
$Comp
L L L2
U 1 1 5A8C9302
P 7950 3200
AR Path="/57B05F2F/5A8C9302" Ref="L2"  Part="1" 
AR Path="/57B0A0EC/5A8C9302" Ref="L6"  Part="1" 
AR Path="/57B0A102/5A8C9302" Ref="L10"  Part="1" 
F 0 "L10" V 7900 3200 50  0000 C CNN
F 1 "56n" V 8025 3200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7950 3200 50  0001 C CNN
F 3 "" H 7950 3200 50  0000 C CNN
F 4 "Johanson" H 7950 3200 60  0001 C CNN "Mfg. Name"
F 5 "L-14C56NJV4T" H 7950 3200 60  0001 C CNN "Mfg. Part Number"
F 6 "609-L-14C56NJV4T" H 7950 3200 60  0001 C CNN "Mouser PN"
F 7 "712-1443-1-ND" H 7950 3200 60  0001 C CNN "Digikey PN"
F 8 "https://www.digikey.se/product-detail/en/johanson-technology-inc/L-14C56NJV4T/712-1443-1-ND/1914893" H 7950 3200 60  0001 C CNN "Digikey Link"
	1    7950 3200
	0    1    1    0   
$EndComp
$Comp
L L L3
U 1 1 5A8C9355
P 7550 4950
AR Path="/57B05F2F/5A8C9355" Ref="L3"  Part="1" 
AR Path="/57B0A0EC/5A8C9355" Ref="L7"  Part="1" 
AR Path="/57B0A102/5A8C9355" Ref="L11"  Part="1" 
F 0 "L11" V 7500 4950 50  0000 C CNN
F 1 "56n" V 7625 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7550 4950 50  0001 C CNN
F 3 "" H 7550 4950 50  0000 C CNN
F 4 "Johanson" H 7550 4950 60  0001 C CNN "Mfg. Name"
F 5 "L-14C56NJV4T" H 7550 4950 60  0001 C CNN "Mfg. Part Number"
F 6 "609-L-14C56NJV4T" H 7550 4950 60  0001 C CNN "Mouser PN"
F 7 "712-1443-1-ND" H 7550 4950 60  0001 C CNN "Digikey PN"
F 8 "https://www.digikey.se/product-detail/en/johanson-technology-inc/L-14C56NJV4T/712-1443-1-ND/1914893" H 7550 4950 60  0001 C CNN "Digikey Link"
	1    7550 4950
	0    1    1    0   
$EndComp
$Comp
L L L4
U 1 1 5A8C93DF
P 7950 4950
AR Path="/57B05F2F/5A8C93DF" Ref="L4"  Part="1" 
AR Path="/57B0A0EC/5A8C93DF" Ref="L8"  Part="1" 
AR Path="/57B0A102/5A8C93DF" Ref="L12"  Part="1" 
F 0 "L12" V 7900 4950 50  0000 C CNN
F 1 "56n" V 8025 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7950 4950 50  0001 C CNN
F 3 "" H 7950 4950 50  0000 C CNN
F 4 "Johanson" H 7950 4950 60  0001 C CNN "Mfg. Name"
F 5 "L-14C56NJV4T" H 7950 4950 60  0001 C CNN "Mfg. Part Number"
F 6 "609-L-14C56NJV4T" H 7950 4950 60  0001 C CNN "Mouser PN"
F 7 "712-1443-1-ND" H 7950 4950 60  0001 C CNN "Digikey PN"
F 8 "https://www.digikey.se/product-detail/en/johanson-technology-inc/L-14C56NJV4T/712-1443-1-ND/1914893" H 7950 4950 60  0001 C CNN "Digikey Link"
	1    7950 4950
	0    1    1    0   
$EndComp
$Comp
L R_Small R32
U 1 1 5A8CBBE1
P 6550 5400
AR Path="/57B05F2F/5A8CBBE1" Ref="R32"  Part="1" 
AR Path="/57B0A0EC/5A8CBBE1" Ref="R33"  Part="1" 
AR Path="/57B0A102/5A8CBBE1" Ref="R35"  Part="1" 
F 0 "R35" H 6580 5420 50  0000 L CNN
F 1 "100M" H 6580 5360 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 6550 5400 50  0001 C CNN
F 3 "" H 6550 5400 50  0000 C CNN
F 4 "Vishay" H 6550 5400 60  0001 C CNN "Mfg. Name"
F 5 "CRHV1206AF100MFK" H 6550 5400 60  0001 C CNN "Mfg. Part Number"
F 6 "1109056" H 6550 5400 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/vishay/crhv1206af100mfkft/motst-tunnfilm-100m-1-0-3w-1206/dp/1109056" H 6550 5400 60  0001 C CNN "Farnell Link"
F 8 "71-CRHV1206AF100MFKF" H 6550 5400 60  0001 C CNN "Mouser PN"
F 9 "CRHV100MACT-ND" H 6550 5400 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/vishay-dale/CRHV1206AF100MFKE5/CRHV100MACT-ND/2499032" H 6550 5400 60  0001 C CNN "Digikey Link"
F 11 "9235809" H 6550 5400 60  0001 C CNN "1st Distrib. PN"
F 12 "http://se.farnell.com/yageo-phycomp/rc2010fk-0710ml/motst-tjockfilm-10m-1-0-5w-2010/dp/9235809" H 6550 5400 60  0001 C CNN "1st Distrib. Link"
	1    6550 5400
	0    1    1    0   
$EndComp
$Comp
L C_Small C30
U 1 1 5AA6A1EF
P 6550 5700
AR Path="/57B05F2F/5AA6A1EF" Ref="C30"  Part="1" 
AR Path="/57B0A0EC/5AA6A1EF" Ref="C36"  Part="1" 
AR Path="/57B0A102/5AA6A1EF" Ref="C42"  Part="1" 
F 0 "C42" H 6560 5770 50  0000 L CNN
F 1 "1p" H 6560 5620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6550 5700 50  0001 C CNN
F 3 "" H 6550 5700 50  0000 C CNN
F 4 "Cornell Dubilier Electronics" H 6550 5700 60  0001 C CNN "Mfg. Name"
F 5 "MC08CA010D-F" H 6550 5700 60  0001 C CNN "Mfg. Part Number"
F 6 "1610819" H 6550 5700 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/cornell-dubilier/mc08ca010d-f/capacitor-rf-microwave-1pf-100v/dp/1610819" H 6550 5700 60  0001 C CNN "Farnell Link"
F 8 "5982-08-100V1.0-F" H 6550 5700 60  0001 C CNN "Mouser PN"
F 9 "338-1339-ND" H 6550 5700 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/cornell-dubilier-electronics-cde/MC08CA010D-F/338-1339-ND/969296" H 6550 5700 60  0001 C CNN "Digikey Link"
	1    6550 5700
	0    1    1    0   
$EndComp
$Comp
L C_Small C27
U 1 1 5AA6AA65
P 7750 4250
AR Path="/57B05F2F/5AA6AA65" Ref="C27"  Part="1" 
AR Path="/57B0A0EC/5AA6AA65" Ref="C41"  Part="1" 
AR Path="/57B0A102/5AA6AA65" Ref="C45"  Part="1" 
F 0 "C45" H 7760 4320 50  0000 L CNN
F 1 "100p" H 7760 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7750 4250 50  0001 C CNN
F 3 "" H 7750 4250 50  0000 C CNN
F 4 "300-41-617" H 7750 4250 60  0001 C CNN "Elfa PN"
F 5 "https://www.elfa.se/sv/kondensator-100-pf-50-vdc-panasonic-automotive-industrial-systems-echu1h101gx5/p/30041617" H 7750 4250 60  0001 C CNN "Elfa Link"
F 6 "9695125" H 7750 4250 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/panasonic-electronic-components/echu1h101gx5/cap-film-pps-100pf-50v-smd/dp/9695125" H 7750 4250 60  0001 C CNN "Farnell Link"
F 8 "667-ECH-U1H101GX5" H 7750 4250 60  0001 C CNN "Mouser PN"
F 9 "PCF1284CT-ND" H 7750 4250 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1H101GX5/PCF1284CT-ND/353756" H 7750 4250 60  0001 C CNN "Digikey Link"
	1    7750 4250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C57
U 1 1 5AA7AF95
P 5100 4400
AR Path="/57B05F2F/5AA7AF95" Ref="C57"  Part="1" 
AR Path="/57B0A0EC/5AA7AF95" Ref="C58"  Part="1" 
AR Path="/57B0A102/5AA7AF95" Ref="C59"  Part="1" 
F 0 "C59" H 5110 4470 50  0000 L CNN
F 1 "100n" H 5110 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 5100 4400 50  0001 C CNN
F 3 "" H 5100 4400 50  0000 C CNN
F 4 "ECH-U1C104GX5" H 5100 4400 60  0001 C CNN "Mfg. Part Number"
F 5 "300-41-614" H 5100 4400 60  0001 C CNN "Elfa PN"
F 6 "https://www.elfa.se/sv/kondensator-100-nf-16-vdc-panasonic-automotive-industrial-systems-echu1c104gx5/p/30041614" H 5100 4400 60  0001 C CNN "Elfa Link"
F 7 "9695001" H 5100 4400 60  0001 C CNN "Farnell PN"
F 8 "https://se.farnell.com/panasonic-electronic-components/echu1c104gx5/cap-film-pps-100nf-16v-smd/dp/9695001" H 5100 4400 60  0001 C CNN "Farnell Link"
F 9 "667-ECH-U1C104GX5" H 5100 4400 60  0001 C CNN "Mouser PN"
F 10 "PCF1189CT-ND" H 5100 4400 60  0001 C CNN "Digikey PN"
F 11 "https://www.digikey.se/product-detail/en/panasonic-electronic-components/ECH-U1C104GX5/PCF1189CT-ND/353736" H 5100 4400 60  0001 C CNN "Digikey Link"
	1    5100 4400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
