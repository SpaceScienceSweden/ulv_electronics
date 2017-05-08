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
LIBS:fieldmill8-cache
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
L CONN_01X01 P1
U 1 1 57B07577
P 9150 4950
AR Path="/57B05F2F/57B07577" Ref="P1"  Part="1" 
AR Path="/57B0A0EC/57B07577" Ref="P3"  Part="1" 
AR Path="/57B0A102/57B07577" Ref="P5"  Part="1" 
F 0 "P1" H 9150 5050 50  0000 C CNN
F 1 "SENSOR" V 9250 4950 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 9150 4950 50  0001 C CNN
F 3 "" H 9150 4950 50  0000 C CNN
	1    9150 4950
	1    0    0    -1  
$EndComp
Text Label 8500 4950 0    60   ~ 0
SENSORP
$Comp
L CONN_01X01 P2
U 1 1 57B0948D
P 9200 3200
AR Path="/57B05F2F/57B0948D" Ref="P2"  Part="1" 
AR Path="/57B0A0EC/57B0948D" Ref="P4"  Part="1" 
AR Path="/57B0A102/57B0948D" Ref="P6"  Part="1" 
F 0 "P2" H 9200 3300 50  0000 C CNN
F 1 "SENSOR" V 9300 3200 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 9200 3200 50  0001 C CNN
F 3 "" H 9200 3200 50  0000 C CNN
	1    9200 3200
	1    0    0    -1  
$EndComp
Text Label 8500 3200 0    60   ~ 0
SENSORN
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
Text Notes 7300 2900 0    60   ~ 0
T filter to block RF but let our 300 Hz signal through\nI would have used a CM choke, but inter-winding leakage may be an issue\nWIth discrete inductors there's nowhere to leak to\nThere's three "layers" of inductors here:\n470 nH to block everything up to about UHF (<=610 MHz)\n19.4 nH to block S-band (<=4 GHz)\n10-ish nH in the traces, hopefully not resonant at 10 GHz, blocking X-band
Text GLabel 7150 2850 1    60   Input ~ 0
VGND
Text Notes 2950 3800 0    47   ~ 0
LTC6241: 2*2.4 mA + I/O, 2.8 .. 6 V\nOutputs drive 5V/(10k+10k) -> 0.25 mA\nTotal: 5.05 mA
Text HLabel 5100 2650 0    60   Input ~ 0
+2V5
Text HLabel 5100 3450 0    60   Input ~ 0
-2V5
$Comp
L L L1
U 1 1 58CE5B9B
P 7550 3200
AR Path="/57B05F2F/58CE5B9B" Ref="L1"  Part="1" 
AR Path="/57B0A0EC/58CE5B9B" Ref="L5"  Part="1" 
AR Path="/57B0A102/58CE5B9B" Ref="L9"  Part="1" 
F 0 "L1" V 7500 3200 50  0000 C CNN
F 1 "470n" V 7625 3200 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 7550 3200 50  0001 C CNN
F 3 "" H 7550 3200 50  0000 C CNN
F 4 "Coilcraft" H 7550 3200 60  0001 C CNN "Mfg. Name"
F 5 "0805HT-R47TGLB" H 7550 3200 60  0001 C CNN "Mfg. Part Number"
F 6 "2286480" H 7550 3200 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/coilcraft/0805ht-r47tglb/inductor-rf-470nh-2-610mhz-smd/dp/2286480" H 7550 3200 60  0001 C CNN "1st Distrib. Link"
	1    7550 3200
	0    1    1    0   
$EndComp
Text Notes 6150 2200 0    60   ~ 0
VGND must be tied to the guard ring!
$Comp
L L L2
U 1 1 58CE7E67
P 7950 3200
AR Path="/57B05F2F/58CE7E67" Ref="L2"  Part="1" 
AR Path="/57B0A0EC/58CE7E67" Ref="L6"  Part="1" 
AR Path="/57B0A102/58CE7E67" Ref="L10"  Part="1" 
F 0 "L2" V 7900 3200 50  0000 C CNN
F 1 "19n4" V 8025 3200 50  0000 C CNN
F 2 "SCUBE:0806SQ-19N" H 7950 3200 50  0001 C CNN
F 3 "" H 7950 3200 50  0000 C CNN
F 4 "Coilcraft" H 7950 3200 60  0001 C CNN "Mfg. Name"
F 5 "0806SQ-19NGLB" H 7950 3200 60  0001 C CNN "Mfg. Part Number"
F 6 "2286600" H 7950 3200 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/coilcraft/0806sq-19nglb/inductor-rf-19-4nh-2-4ghz-smd/dp/2286600" H 7950 3200 60  0001 C CNN "1st Distrib. Link"
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
F 1 "19n4" V 8025 4950 50  0000 C CNN
F 2 "SCUBE:0806SQ-19N" H 7950 4950 50  0001 C CNN
F 3 "" H 7950 4950 50  0000 C CNN
F 4 "Coilcraft" H 7950 4950 60  0001 C CNN "Mfg. Name"
F 5 "0806SQ-19NGLB" H 7950 4950 60  0001 C CNN "Mfg. Part Number"
F 6 "2286600" H 7950 4950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/coilcraft/0806sq-19nglb/inductor-rf-19-4nh-2-4ghz-smd/dp/2286600" H 7950 4950 60  0001 C CNN "1st Distrib. Link"
	1    7950 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 4950 8950 4950
Wire Wire Line
	7800 4950 7700 4950
Wire Wire Line
	8100 3200 9000 3200
Wire Wire Line
	7800 3200 7700 3200
Wire Wire Line
	6850 3200 7400 3200
Connection ~ 5450 3450
Wire Wire Line
	6650 3450 6650 3400
Wire Wire Line
	6650 5200 6650 5150
Wire Wire Line
	5450 5200 6650 5200
Wire Wire Line
	5450 3450 5450 5200
Wire Wire Line
	5100 3450 6650 3450
Connection ~ 5550 2650
Wire Wire Line
	5550 4200 5550 2650
Wire Wire Line
	6650 4200 5550 4200
Wire Wire Line
	6650 4550 6650 4200
Wire Wire Line
	6650 2650 6650 2800
Wire Wire Line
	5100 2650 6650 2650
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
F 1 "4p7" H 7760 3570 50  0000 L CNN
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
F 1 "4p7" H 7760 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7750 4250 50  0001 C CNN
F 3 "" H 7750 4250 50  0000 C CNN
	1    7750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4150 7750 3750
Wire Wire Line
	7750 3950 7150 3950
Connection ~ 7150 3950
Connection ~ 7750 3950
Wire Wire Line
	7750 4350 7750 4950
Connection ~ 7750 4950
Wire Wire Line
	7750 3550 7750 3200
Connection ~ 7750 3200
Text Notes 8050 3900 0    60   ~ 0
These caps are optional, but should improve the RFI filter\nThe -6 dB point is placed at 527 MHz\nThe caps create a 100 MOhm path to VGND @ 300 Hz,\nwhich if the 50 µV input offset\nchanges sign would give rise to a 0.5 pA current
$Comp
L L L3
U 1 1 58CEB905
P 7550 4950
AR Path="/57B05F2F/58CEB905" Ref="L3"  Part="1" 
AR Path="/57B0A0EC/58CEB905" Ref="L7"  Part="1" 
AR Path="/57B0A102/58CEB905" Ref="L11"  Part="1" 
F 0 "L3" V 7500 4950 50  0000 C CNN
F 1 "470n" V 7625 4950 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 7550 4950 50  0001 C CNN
F 3 "" H 7550 4950 50  0000 C CNN
F 4 "Coilcraft" H 7550 4950 60  0001 C CNN "Mfg. Name"
F 5 "0805HT-R47TGLB" H 7550 4950 60  0001 C CNN "Mfg. Part Number"
F 6 "2286480" H 7550 4950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/coilcraft/0805ht-r47tglb/inductor-rf-470nh-2-610mhz-smd/dp/2286480" H 7550 4950 60  0001 C CNN "1st Distrib. Link"
	1    7550 4950
	0    1    1    0   
$EndComp
$EndSCHEMATC
