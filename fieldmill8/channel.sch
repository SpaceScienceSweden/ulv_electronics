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
$Comp
L CONN_01X01 P1
U 1 1 57B07577
P 9200 4950
AR Path="/57B05F2F/57B07577" Ref="P1"  Part="1" 
AR Path="/57B0A0EC/57B07577" Ref="P3"  Part="1" 
AR Path="/57B0A102/57B07577" Ref="P5"  Part="1" 
F 0 "P1" H 9200 5050 50  0000 C CNN
F 1 "SENSOR" V 9300 4950 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 9200 4950 50  0001 C CNN
F 3 "" H 9200 4950 50  0000 C CNN
	1    9200 4950
	1    0    0    -1  
$EndComp
Text Label 8550 4950 0    60   ~ 0
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
Text Label 8550 3200 0    60   ~ 0
SENSORN
$Comp
L C_Small C2
U 1 1 57B09ACF
P 3700 2700
AR Path="/57B05F2F/57B09ACF" Ref="C2"  Part="1" 
AR Path="/57B0A0EC/57B09ACF" Ref="C8"  Part="1" 
AR Path="/57B0A102/57B09ACF" Ref="C14"  Part="1" 
F 0 "C2" H 3710 2770 50  0000 L CNN
F 1 "100n" H 3710 2620 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3700 2700 50  0001 C CNN
F 3 "" H 3700 2700 50  0000 C CNN
	1    3700 2700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 57B09BB8
P 3700 3000
AR Path="/57B05F2F/57B09BB8" Ref="C3"  Part="1" 
AR Path="/57B0A0EC/57B09BB8" Ref="C9"  Part="1" 
AR Path="/57B0A102/57B09BB8" Ref="C15"  Part="1" 
F 0 "C3" H 3710 3070 50  0000 L CNN
F 1 "100n" H 3710 2920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3700 3000 50  0001 C CNN
F 3 "" H 3700 3000 50  0000 C CNN
	1    3700 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 57B09C9C
P 3550 2850
AR Path="/57B05F2F/57B09C9C" Ref="#PWR028"  Part="1" 
AR Path="/57B0A0EC/57B09C9C" Ref="#PWR041"  Part="1" 
AR Path="/57B0A102/57B09C9C" Ref="#PWR054"  Part="1" 
F 0 "#PWR028" H 3550 2600 50  0001 C CNN
F 1 "GND" H 3550 2700 50  0000 C CNN
F 2 "" H 3550 2850 50  0000 C CNN
F 3 "" H 3550 2850 50  0000 C CNN
	1    3550 2850
	0    1    1    0   
$EndComp
$Comp
L OP275 U4
U 1 1 5806023E
P 6550 3100
AR Path="/57B05F2F/5806023E" Ref="U4"  Part="1" 
AR Path="/57B0A0EC/5806023E" Ref="U6"  Part="1" 
AR Path="/57B0A102/5806023E" Ref="U8"  Part="1" 
F 0 "U4" H 6550 3250 50  0000 L CNN
F 1 "LTC6241" H 6550 2950 50  0000 L CNN
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
F 1 "LTC6241" H 6550 4700 50  0000 L CNN
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
$Comp
L +2V5 #PWR035
U 1 1 58061BB8
P 3700 2200
AR Path="/57B05F2F/58061BB8" Ref="#PWR035"  Part="1" 
AR Path="/57B0A0EC/58061BB8" Ref="#PWR048"  Part="1" 
AR Path="/57B0A102/58061BB8" Ref="#PWR061"  Part="1" 
F 0 "#PWR035" H 3700 2050 50  0001 C CNN
F 1 "+2V5" H 3700 2340 50  0000 C CNN
F 2 "" H 3700 2200 50  0000 C CNN
F 3 "" H 3700 2200 50  0000 C CNN
	1    3700 2200
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR036
U 1 1 58061C53
P 3700 3500
AR Path="/57B05F2F/58061C53" Ref="#PWR036"  Part="1" 
AR Path="/57B0A0EC/58061C53" Ref="#PWR049"  Part="1" 
AR Path="/57B0A102/58061C53" Ref="#PWR062"  Part="1" 
F 0 "#PWR036" H 3700 3350 50  0001 C CNN
F 1 "-2V5" H 3700 3640 50  0000 C CNN
F 2 "" H 3700 3500 50  0000 C CNN
F 3 "" H 3700 3500 50  0000 C CNN
	1    3700 3500
	-1   0    0    1   
$EndComp
Text HLabel 5850 5000 3    60   Input ~ 0
OUT+
Text HLabel 4650 6450 3    60   Input ~ 0
OUT-
$Comp
L C_Small C20
U 1 1 58067F10
P 3950 4350
AR Path="/57B05F2F/58067F10" Ref="C20"  Part="1" 
AR Path="/57B0A0EC/58067F10" Ref="C31"  Part="1" 
AR Path="/57B0A102/58067F10" Ref="C37"  Part="1" 
F 0 "C20" H 3960 4420 50  0000 L CNN
F 1 "1n" H 3960 4270 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3950 4350 50  0001 C CNN
F 3 "" H 3950 4350 50  0000 C CNN
	1    3950 4350
	0    1    1    0   
$EndComp
Connection ~ 6100 3950
Connection ~ 6100 4850
Connection ~ 6100 5400
Wire Wire Line
	6100 5400 6450 5400
Wire Wire Line
	6100 4550 6100 5700
Wire Wire Line
	6100 5700 6450 5700
Connection ~ 6950 5400
Wire Wire Line
	6650 5400 6950 5400
Connection ~ 6950 4950
Wire Wire Line
	6950 4950 6950 5700
Wire Wire Line
	6950 5700 6650 5700
Connection ~ 6100 3650
Wire Wire Line
	6450 3650 6100 3650
Wire Wire Line
	6100 3100 6250 3100
Wire Wire Line
	6100 3100 6100 3950
Wire Wire Line
	4200 3950 6450 3950
Connection ~ 6950 3650
Wire Wire Line
	6650 3650 6950 3650
Connection ~ 6950 3200
Wire Wire Line
	6950 3200 6950 3950
Wire Wire Line
	6950 3950 6650 3950
Connection ~ 3700 2850
Wire Wire Line
	3700 2800 3700 2900
Wire Wire Line
	3550 2850 3700 2850
Text Notes 1850 1200 0    60   ~ 0
This design is based on the paper "A Highly Sensitive Field Mill for Registering\nWeak and Strong Variations of the Electric-Field Intensity of the Earth’s Atmosphere" by Boldyrev et al.\nSome differences include swapping the OPA1632 for an AD8555 to increase dynamic range,\nand lower values on the feedback resistors due to lack of component choices.\nLower values also reduce the noise due to of variable parasitic capacitances (vibrating metal parts)\nVishay's 1G resistors could also work, and can also be stacked to make 500M. With such\na high value oscillation become an issue due to insufficient compensation
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
$Comp
L AD8555 U?
U 1 1 58A236FB
P 4900 4400
F 0 "U?" H 4900 4750 60  0000 C CNN
F 1 "AD8555" H 4900 4650 60  0000 C CNN
F 2 "" H 4950 4400 60  0000 C CNN
F 3 "" H 4950 4400 60  0000 C CNN
	1    4900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3950 4200 4550
Wire Wire Line
	4200 4550 4300 4550
Wire Wire Line
	5500 4550 6100 4550
Wire Wire Line
	6100 4850 6250 4850
Wire Wire Line
	5850 5000 5850 4350
Wire Wire Line
	5850 4350 5500 4350
$Comp
L GND #PWR?
U 1 1 58A24440
P 4650 6350
F 0 "#PWR?" H 4650 6100 50  0001 C CNN
F 1 "GND" H 4650 6200 50  0000 C CNN
F 2 "" H 4650 6350 50  0000 C CNN
F 3 "" H 4650 6350 50  0000 C CNN
	1    4650 6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 6350 4650 6450
Text Notes 3150 5950 0    60   ~ 0
TODO: Get at V_ADC somehow?\nOr divide +-2V5 to obtain virtual ground?\nDC offset shouldn't be a problem\nWe can get 127.5/256 or 128.5/256, so +-10 mV from GND\nThis virtual ground will need a buffer\nWe might need to look for a slightly more suitable IC
$Comp
L GND #PWR?
U 1 1 58A2470B
P 3850 4350
F 0 "#PWR?" H 3850 4100 50  0001 C CNN
F 1 "GND" H 3850 4200 50  0000 C CNN
F 2 "" H 3850 4350 50  0000 C CNN
F 3 "" H 3850 4350 50  0000 C CNN
	1    3850 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 4350 4300 4350
$Comp
L Transformer_1P_1S T?
U 1 1 58A4585A
P 7900 4050
F 0 "T?" H 7900 4300 50  0000 C CNN
F 1 "Data CM choke" H 7900 3750 50  0000 C CNN
F 2 "" H 7900 4050 50  0000 C CNN
F 3 "" H 7900 4050 50  0000 C CNN
	1    7900 4050
	0    1    1    0   
$EndComp
$Comp
L D_TVS_x2_AAC D?
U 1 1 58A45944
P 8500 4050
F 0 "D?" H 8500 4225 50  0000 C CNN
F 1 "D_TVS_x2_AAC" H 8500 4150 50  0000 C CNN
F 2 "" H 8350 4050 50  0000 C CNN
F 3 "" H 8350 4050 50  0000 C CNN
	1    8500 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 4950 9000 4950
Wire Wire Line
	8500 4950 8500 4400
Wire Wire Line
	8500 3700 8500 3200
Wire Wire Line
	8100 3200 9000 3200
$Comp
L GND #PWR?
U 1 1 58A45D0E
P 8650 4050
F 0 "#PWR?" H 8650 3800 50  0001 C CNN
F 1 "GND" H 8650 3900 50  0000 C CNN
F 2 "" H 8650 4050 50  0000 C CNN
F 3 "" H 8650 4050 50  0000 C CNN
	1    8650 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 3650 8100 3200
Connection ~ 8500 3200
Wire Wire Line
	8100 4450 8100 4950
Connection ~ 8500 4950
Wire Wire Line
	7700 4950 7700 4450
Wire Wire Line
	7700 3200 7700 3650
Text Notes 7500 3100 0    60   ~ 0
RF protection circuitry\nLow-Z for LF\nHigh-Z for HF
Text Notes 8700 3850 0    60   ~ 0
Low-leakage TVS\nCan be 1V or lower, depending on virtual ground
Text Notes 6750 2500 0    60   ~ 0
TODO: Virtual ground
Text GLabel 7150 2850 1    60   Input ~ 0
VGND
Wire Wire Line
	7150 4750 6850 4750
Wire Wire Line
	7150 2850 7150 4750
Wire Wire Line
	6850 3000 7150 3000
Connection ~ 7150 3000
Wire Wire Line
	6850 4950 7700 4950
Wire Wire Line
	6850 3200 7700 3200
$Comp
L R_Small R?
U 1 1 58A473EA
P 3700 3300
F 0 "R?" H 3730 3320 50  0000 L CNN
F 1 "56" H 3730 3260 50  0000 L CNN
F 2 "" H 3700 3300 50  0000 C CNN
F 3 "" H 3700 3300 50  0000 C CNN
	1    3700 3300
	1    0    0    -1  
$EndComp
Text Notes 800  3100 0    47   ~ 0
Simple latch-up protection\nLTC6241: 2*2.4 mA + I/O, 2.8 .. 6 V\nAD8555: 2.5 mA + I/O, 2.7 .. 5.5 V\nInput voltage: 5V\nMin voltage: 4V (high enough for raising 75% alarm in ADS131A04)\nTotal shunt < (5-4)/(2*2.4 + 1 + 2.5) = 135 Ohm ≃ 2*56\nShorted rails -> 45 mA, 113 mW in resistors\nWorst-case power in single IC: 5/(4*56)*2.5 = 56 mW\nSchottkies allow protection diodes in ICs to function
$Comp
L R_Small R?
U 1 1 58A47577
P 3700 2400
F 0 "R?" H 3730 2420 50  0000 L CNN
F 1 "56" H 3730 2360 50  0000 L CNN
F 2 "" H 3700 2400 50  0000 C CNN
F 3 "" H 3700 2400 50  0000 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2500 3700 2600
Wire Wire Line
	3700 2550 6650 2550
Connection ~ 3700 2550
Wire Wire Line
	6650 2550 6650 2800
Wire Wire Line
	6650 4550 6650 4150
Wire Wire Line
	6650 4150 6000 4150
Wire Wire Line
	6000 4150 6000 2550
Connection ~ 6000 2550
Wire Wire Line
	3700 3100 3700 3200
Wire Wire Line
	3700 3150 5950 3150
Wire Wire Line
	5950 3150 5950 5150
Wire Wire Line
	5950 3450 6650 3450
Wire Wire Line
	6650 3450 6650 3400
Connection ~ 3700 3150
Wire Wire Line
	5950 5150 6650 5150
Connection ~ 5950 3450
Wire Wire Line
	5500 4250 5550 4250
Wire Wire Line
	5550 4250 5550 3150
Connection ~ 5550 3150
Wire Wire Line
	4300 4250 4250 4250
Wire Wire Line
	4250 4250 4250 2550
Connection ~ 4250 2550
Wire Wire Line
	5500 4450 5600 4450
Wire Wire Line
	5600 4450 5600 2550
Connection ~ 5600 2550
Text Notes 3250 5050 0    60   ~ 0
We could put the RFI filter from the datasheet here
$Comp
L D_Schottky_Small D?
U 1 1 58A4CED1
P 4000 2400
F 0 "D?" H 3850 2450 50  0000 L CNN
F 1 "SMS240" H 3850 2300 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 4000 2400 50  0001 C CNN
F 3 "" V 4000 2400 50  0000 C CNN
	1    4000 2400
	0    1    1    0   
$EndComp
$Comp
L D_Schottky_Small D?
U 1 1 58A4CEFC
P 4000 3300
F 0 "D?" H 3850 3350 50  0000 L CNN
F 1 "SMS240" H 3850 3200 50  0000 L CNN
F 2 "Diodes_SMD:MELF_Standard" V 4000 3300 50  0001 C CNN
F 3 "" V 4000 3300 50  0000 C CNN
	1    4000 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2500 4000 2550
Connection ~ 4000 2550
Wire Wire Line
	4000 2300 4000 2250
Wire Wire Line
	4000 2250 3700 2250
Wire Wire Line
	3700 2200 3700 2300
Connection ~ 3700 2250
Wire Wire Line
	3700 3400 3700 3500
Wire Wire Line
	3700 3450 4000 3450
Wire Wire Line
	4000 3450 4000 3400
Connection ~ 3700 3450
Wire Wire Line
	4000 3200 4000 3150
Connection ~ 4000 3150
$EndSCHEMATC
