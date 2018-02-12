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
Sheet 2 5
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
F 0 "R30" H 6580 3670 50  0000 L CNN
F 1 "100M" H 6580 3610 50  0000 L CNN
F 2 "SCUBE:Resistor_2010_2512_combined" H 6550 3650 50  0001 C CNN
F 3 "" H 6550 3650 50  0000 C CNN
F 4 "9235809" H 6550 3650 60  0001 C CNN "1st Distrib. PN"
F 5 "http://se.farnell.com/yageo-phycomp/rc2010fk-0710ml/motst-tjockfilm-10m-1-0-5w-2010/dp/9235809" H 6550 3650 60  0001 C CNN "1st Distrib. Link"
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
F 0 "C21" H 6560 4020 50  0000 L CNN
F 1 "1p" H 6560 3870 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6550 3950 50  0001 C CNN
F 3 "" H 6550 3950 50  0000 C CNN
	1    6550 3950
	0    1    1    0   
$EndComp
$Comp
L OP275 U4
U 2 1 580610F1
P 6550 4850
AR Path="/57B05F2F/580610F1" Ref="U4"  Part="2" 
AR Path="/57B0A0EC/580610F1" Ref="U6"  Part="2" 
AR Path="/57B0A102/580610F1" Ref="U8"  Part="2" 
F 0 "U4" H 6550 5000 50  0000 L CNN
F 1 "LTC6241IS8#PBF" H 6550 5100 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6450 4900 50  0001 C CNN
F 3 "" H 6550 5000 50  0000 C CNN
F 4 "1330969" H 6550 4850 60  0001 C CNN "1st Distrib. PN"
F 5 "http://se.farnell.com/linear-technology/ltc6241cs8-pbf/ic-sm-op-amp-dual/dp/1330969" H 6550 4850 60  0001 C CNN "1st Distrib. Link"
	2    6550 4850
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C30
U 1 1 58061109
P 6550 5700
AR Path="/57B05F2F/58061109" Ref="C30"  Part="1" 
AR Path="/57B0A0EC/58061109" Ref="C36"  Part="1" 
AR Path="/57B0A102/58061109" Ref="C42"  Part="1" 
F 0 "C30" H 6560 5770 50  0000 L CNN
F 1 "1p" H 6560 5620 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6550 5700 50  0001 C CNN
F 3 "" H 6550 5700 50  0000 C CNN
	1    6550 5700
	0    1    1    0   
$EndComp
Text HLabel 6000 4850 0    60   Input ~ 0
OUT+
Text HLabel 6000 3950 0    60   Input ~ 0
OUT-
Text Notes 1850 1200 0    60   ~ 0
This design is based on the paper "A Highly Sensitive Field Mill for Registering\nWeak and Strong Variations of the Electric-Field Intensity of the Earth’s Atmosphere" by Boldyrev et al.\nSome differences include removing the OPA1632 for lower complexity and power use,\nand lower values on the feedback resistors due to lack of component choices.\nLower values also reduce the noise due to of variable parasitic capacitances (vibrating metal parts)\nVishay's 1G resistors could also work, and can also be stacked to make 500M. With such\na high value oscillation become an issue due to insufficient compensation
Text Notes 6100 6150 0    60   ~ 0
1p capacitor serves both to low-pass (1.6 kHz)\nand offer compensation to prevent oscillation\nWithout it oscillation *will* happen
$Comp
L R_Small R35
U 1 1 58085E26
P 6550 5400
AR Path="/57B05F2F/58085E26" Ref="R35"  Part="1" 
AR Path="/57B0A0EC/58085E26" Ref="R41"  Part="1" 
AR Path="/57B0A102/58085E26" Ref="R47"  Part="1" 
F 0 "R35" H 6580 5420 50  0000 L CNN
F 1 "100M" H 6580 5360 50  0000 L CNN
F 2 "SCUBE:Resistor_2010_2512_combined" H 6550 5400 50  0001 C CNN
F 3 "" H 6550 5400 50  0000 C CNN
F 4 "9235809" H 6550 5400 60  0001 C CNN "1st Distrib. PN"
F 5 "http://se.farnell.com/yageo-phycomp/rc2010fk-0710ml/motst-tjockfilm-10m-1-0-5w-2010/dp/9235809" H 6550 5400 60  0001 C CNN "1st Distrib. Link"
	1    6550 5400
	0    1    1    0   
$EndComp
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
F 0 "L1" V 7500 3200 50  0000 C CNN
F 1 "56n" V 7625 3200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7550 3200 50  0001 C CNN
F 3 "" H 7550 3200 50  0000 C CNN
F 4 "Johanson" H 7550 3200 60  0001 C CNN "Mfg. Name"
F 5 "L-14C56NJV4T" H 7550 3200 60  0001 C CNN "Mfg. Part Number"
F 6 "712-1443-1-ND" H 7550 3200 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.digikey.se/product-detail/en/johanson-technology-inc/L-14C56NJV4T/712-1443-1-ND/1914893" H 7550 3200 60  0001 C CNN "1st Distrib. Link"
	1    7550 3200
	0    1    1    0   
$EndComp
Text Notes 5500 2400 0    60   ~ 0
VGND must be tied to the guard ring!
$Comp
L L L2
U 1 1 58CE7E67
P 7950 3200
AR Path="/57B05F2F/58CE7E67" Ref="L2"  Part="1" 
AR Path="/57B0A0EC/58CE7E67" Ref="L6"  Part="1" 
AR Path="/57B0A102/58CE7E67" Ref="L10"  Part="1" 
F 0 "L2" V 7900 3200 50  0000 C CNN
F 1 "56n" V 8025 3200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7950 3200 50  0001 C CNN
F 3 "" H 7950 3200 50  0000 C CNN
F 4 "Johanson" H 7950 3200 60  0001 C CNN "Mfg. Name"
F 5 "L-14C56NJV4T" H 7950 3200 60  0001 C CNN "Mfg. Part Number"
F 6 "712-1443-1-ND" H 7950 3200 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.digikey.se/product-detail/en/johanson-technology-inc/L-14C56NJV4T/712-1443-1-ND/1914893" H 7950 3200 60  0001 C CNN "1st Distrib. Link"
	1    7950 3200
	0    1    1    0   
$EndComp
$Comp
L L L4
U 1 1 58CE80E2
P 7950 4950
AR Path="/57B05F2F/58CE80E2" Ref="L4"  Part="1" 
AR Path="/57B0A0EC/58CE80E2" Ref="L8"  Part="1" 
AR Path="/57B0A102/58CE80E2" Ref="L12"  Part="1" 
F 0 "L4" V 7900 4950 50  0000 C CNN
F 1 "56n" V 8025 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7950 4950 50  0001 C CNN
F 3 "" H 7950 4950 50  0000 C CNN
F 4 "Johanson" H 7950 4950 60  0001 C CNN "Mfg. Name"
F 5 "L-14C56NJV4T" H 7950 4950 60  0001 C CNN "Mfg. Part Number"
F 6 "712-1443-1-ND" H 7950 4950 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.digikey.se/product-detail/en/johanson-technology-inc/L-14C56NJV4T/712-1443-1-ND/1914893" H 7950 4950 60  0001 C CNN "1st Distrib. Link"
	1    7950 4950
	0    1    1    0   
$EndComp
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
F 0 "C15" H 7760 3720 50  0000 L CNN
F 1 "100p" H 7760 3570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7750 3650 50  0001 C CNN
F 3 "" H 7750 3650 50  0000 C CNN
	1    7750 3650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C27
U 1 1 58CE9E87
P 7750 4250
AR Path="/57B05F2F/58CE9E87" Ref="C27"  Part="1" 
AR Path="/57B0A0EC/58CE9E87" Ref="C41"  Part="1" 
AR Path="/57B0A102/58CE9E87" Ref="C45"  Part="1" 
F 0 "C27" H 7760 4320 50  0000 L CNN
F 1 "100p" H 7760 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7750 4250 50  0001 C CNN
F 3 "" H 7750 4250 50  0000 C CNN
	1    7750 4250
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
Text Notes 8100 4150 0    60   ~ 0
These caps are optional, but should improve the RFI filter\nThe -6 dB point is placed at 310 MHz\nThe caps create a 100 MOhm path to VGND @ 300 Hz,\nwhich if the 50 µV input offset\nchanges sign would give rise to a 0.5 pA current\nLarger caps may be OK, but may affect source capacitance\nHave ordered 100 pF
$Comp
L L L3
U 1 1 58CEB905
P 7550 4950
AR Path="/57B05F2F/58CEB905" Ref="L3"  Part="1" 
AR Path="/57B0A0EC/58CEB905" Ref="L7"  Part="1" 
AR Path="/57B0A102/58CEB905" Ref="L11"  Part="1" 
F 0 "L3" V 7500 4950 50  0000 C CNN
F 1 "56n" V 7625 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 7550 4950 50  0001 C CNN
F 3 "" H 7550 4950 50  0000 C CNN
F 4 "Johanson" H 7550 4950 60  0001 C CNN "Mfg. Name"
F 5 "L-14C56NJV4T" H 7550 4950 60  0001 C CNN "Mfg. Part Number"
F 6 "712-1443-1-ND" H 7550 4950 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.digikey.se/product-detail/en/johanson-technology-inc/L-14C56NJV4T/712-1443-1-ND/1914893" H 7550 4950 60  0001 C CNN "1st Distrib. Link"
	1    7550 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4350 7750 4950
Wire Wire Line
	7750 3200 7750 3550
Text Notes 7000 5550 0    60   ~ 0
HVCB1206BKE100M is much better\n0.01% tolerance, +-25 ppm/°C\n67 SEK is a bit pricey though\nHVCB2010FKC100M 1% 50 ppm/°C  29 SEK
$Comp
L +2V5 #PWR041
U 1 1 5A7A17A3
P 6650 2800
AR Path="/57B05F2F/5A7A17A3" Ref="#PWR041"  Part="1" 
AR Path="/57B0A0EC/5A7A17A3" Ref="#PWR047"  Part="1" 
AR Path="/57B0A102/5A7A17A3" Ref="#PWR053"  Part="1" 
F 0 "#PWR041" H 6650 2650 50  0001 C CNN
F 1 "+2V5" H 6650 2940 50  0000 C CNN
F 2 "" H 6650 2800 50  0000 C CNN
F 3 "" H 6650 2800 50  0000 C CNN
	1    6650 2800
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR042
U 1 1 5A7A19AE
P 6650 3400
AR Path="/57B05F2F/5A7A19AE" Ref="#PWR042"  Part="1" 
AR Path="/57B0A0EC/5A7A19AE" Ref="#PWR048"  Part="1" 
AR Path="/57B0A102/5A7A19AE" Ref="#PWR054"  Part="1" 
F 0 "#PWR042" H 6650 3250 50  0001 C CNN
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
F 0 "U4" H 6550 3250 50  0000 L CNN
F 1 "LTC6241IS8#PBF" H 6550 3350 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6450 3150 50  0001 C CNN
F 3 "" H 6550 3250 50  0000 C CNN
F 4 "1330969" H 6550 3100 60  0001 C CNN "1st Distrib. PN"
F 5 "http://se.farnell.com/linear-technology/ltc6241cs8-pbf/ic-sm-op-amp-dual/dp/1330969" H 6550 3100 60  0001 C CNN "1st Distrib. Link"
	1    6550 3100
	-1   0    0    -1  
$EndComp
$Comp
L -2V5 #PWR043
U 1 1 5A7A212C
P 6650 5150
AR Path="/57B05F2F/5A7A212C" Ref="#PWR043"  Part="1" 
AR Path="/57B0A0EC/5A7A212C" Ref="#PWR049"  Part="1" 
AR Path="/57B0A102/5A7A212C" Ref="#PWR055"  Part="1" 
F 0 "#PWR043" H 6650 5000 50  0001 C CNN
F 1 "-2V5" H 6650 5290 50  0000 C CNN
F 2 "" H 6650 5150 50  0000 C CNN
F 3 "" H 6650 5150 50  0000 C CNN
	1    6650 5150
	-1   0    0    1   
$EndComp
$Comp
L +2V5 #PWR044
U 1 1 5A7A218B
P 6650 4550
AR Path="/57B05F2F/5A7A218B" Ref="#PWR044"  Part="1" 
AR Path="/57B0A0EC/5A7A218B" Ref="#PWR050"  Part="1" 
AR Path="/57B0A102/5A7A218B" Ref="#PWR056"  Part="1" 
F 0 "#PWR044" H 6650 4400 50  0001 C CNN
F 1 "+2V5" H 6650 4690 50  0000 C CNN
F 2 "" H 6650 4550 50  0000 C CNN
F 3 "" H 6650 4550 50  0000 C CNN
	1    6650 4550
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR045
U 1 1 5A7A2222
P 5100 4000
AR Path="/57B05F2F/5A7A2222" Ref="#PWR045"  Part="1" 
AR Path="/57B0A0EC/5A7A2222" Ref="#PWR051"  Part="1" 
AR Path="/57B0A102/5A7A2222" Ref="#PWR057"  Part="1" 
F 0 "#PWR045" H 5100 3850 50  0001 C CNN
F 1 "+2V5" H 5100 4140 50  0000 C CNN
F 2 "" H 5100 4000 50  0000 C CNN
F 3 "" H 5100 4000 50  0000 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR046
U 1 1 5A7A2281
P 5100 4500
AR Path="/57B05F2F/5A7A2281" Ref="#PWR046"  Part="1" 
AR Path="/57B0A0EC/5A7A2281" Ref="#PWR052"  Part="1" 
AR Path="/57B0A102/5A7A2281" Ref="#PWR058"  Part="1" 
F 0 "#PWR046" H 5100 4350 50  0001 C CNN
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
F 0 "C20" H 5110 4170 50  0000 L CNN
F 1 "100n" H 5110 4020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5100 4100 50  0001 C CNN
F 3 "" H 5100 4100 50  0000 C CNN
	1    5100 4100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C24
U 1 1 5A7A261A
P 5100 4400
AR Path="/57B05F2F/5A7A261A" Ref="C24"  Part="1" 
AR Path="/57B0A0EC/5A7A261A" Ref="C26"  Part="1" 
AR Path="/57B0A102/5A7A261A" Ref="C29"  Part="1" 
F 0 "C24" H 5110 4470 50  0000 L CNN
F 1 "100n" H 5110 4320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5100 4400 50  0001 C CNN
F 3 "" H 5100 4400 50  0000 C CNN
	1    5100 4400
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
F 0 "P14" H 5450 3800 50  0000 C CNN
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
$EndSCHEMATC
