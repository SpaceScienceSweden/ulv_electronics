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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
P 7800 4950
AR Path="/57B05F2F/57B07577" Ref="P1"  Part="1" 
AR Path="/57B0A0EC/57B07577" Ref="P3"  Part="1" 
AR Path="/57B0A102/57B07577" Ref="P5"  Part="1" 
F 0 "P1" H 7800 5050 50  0000 C CNN
F 1 "SENSOR" V 7900 4950 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 7800 4950 50  0001 C CNN
F 3 "" H 7800 4950 50  0000 C CNN
	1    7800 4950
	1    0    0    -1  
$EndComp
Text Label 7100 4950 0    60   ~ 0
SENSORP
$Comp
L CONN_01X01 P2
U 1 1 57B0948D
P 7800 3200
AR Path="/57B05F2F/57B0948D" Ref="P2"  Part="1" 
AR Path="/57B0A0EC/57B0948D" Ref="P4"  Part="1" 
AR Path="/57B0A102/57B0948D" Ref="P6"  Part="1" 
F 0 "P2" H 7800 3300 50  0000 C CNN
F 1 "SENSOR" V 7900 3200 50  0000 C CNN
F 2 "SCUBE:M3_PTH" H 7800 3200 50  0001 C CNN
F 3 "" H 7800 3200 50  0000 C CNN
	1    7800 3200
	1    0    0    -1  
$EndComp
Text Label 7100 3200 0    60   ~ 0
SENSORN
$Comp
L C_Small C2
U 1 1 57B09ACF
P 2300 4250
AR Path="/57B05F2F/57B09ACF" Ref="C2"  Part="1" 
AR Path="/57B0A0EC/57B09ACF" Ref="C8"  Part="1" 
AR Path="/57B0A102/57B09ACF" Ref="C14"  Part="1" 
F 0 "C2" H 2310 4320 50  0000 L CNN
F 1 "100n" H 2310 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2300 4250 50  0001 C CNN
F 3 "" H 2300 4250 50  0000 C CNN
	1    2300 4250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 57B09BB8
P 2300 4550
AR Path="/57B05F2F/57B09BB8" Ref="C3"  Part="1" 
AR Path="/57B0A0EC/57B09BB8" Ref="C9"  Part="1" 
AR Path="/57B0A102/57B09BB8" Ref="C15"  Part="1" 
F 0 "C3" H 2310 4620 50  0000 L CNN
F 1 "100n" H 2310 4470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2300 4550 50  0001 C CNN
F 3 "" H 2300 4550 50  0000 C CNN
	1    2300 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 57B09C9C
P 2150 4400
AR Path="/57B05F2F/57B09C9C" Ref="#PWR028"  Part="1" 
AR Path="/57B0A0EC/57B09C9C" Ref="#PWR041"  Part="1" 
AR Path="/57B0A102/57B09C9C" Ref="#PWR054"  Part="1" 
F 0 "#PWR028" H 2150 4150 50  0001 C CNN
F 1 "GND" H 2150 4250 50  0000 C CNN
F 2 "" H 2150 4400 50  0000 C CNN
F 3 "" H 2150 4400 50  0000 C CNN
	1    2150 4400
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
L GND #PWR029
U 1 1 58060E17
P 6850 3000
AR Path="/57B05F2F/58060E17" Ref="#PWR029"  Part="1" 
AR Path="/57B0A0EC/58060E17" Ref="#PWR042"  Part="1" 
AR Path="/57B0A102/58060E17" Ref="#PWR055"  Part="1" 
F 0 "#PWR029" H 6850 2750 50  0001 C CNN
F 1 "GND" H 6850 2850 50  0000 C CNN
F 2 "" H 6850 3000 50  0000 C CNN
F 3 "" H 6850 3000 50  0000 C CNN
	1    6850 3000
	0    -1   -1   0   
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
L GND #PWR030
U 1 1 58061120
P 6850 4750
AR Path="/57B05F2F/58061120" Ref="#PWR030"  Part="1" 
AR Path="/57B0A0EC/58061120" Ref="#PWR043"  Part="1" 
AR Path="/57B0A102/58061120" Ref="#PWR056"  Part="1" 
F 0 "#PWR030" H 6850 4500 50  0001 C CNN
F 1 "GND" H 6850 4600 50  0000 C CNN
F 2 "" H 6850 4750 50  0000 C CNN
F 3 "" H 6850 4750 50  0000 C CNN
	1    6850 4750
	0    -1   -1   0   
$EndComp
$Comp
L +2V5 #PWR031
U 1 1 58061890
P 6650 2800
AR Path="/57B05F2F/58061890" Ref="#PWR031"  Part="1" 
AR Path="/57B0A0EC/58061890" Ref="#PWR044"  Part="1" 
AR Path="/57B0A102/58061890" Ref="#PWR057"  Part="1" 
F 0 "#PWR031" H 6650 2650 50  0001 C CNN
F 1 "+2V5" H 6650 2940 50  0000 C CNN
F 2 "" H 6650 2800 50  0000 C CNN
F 3 "" H 6650 2800 50  0000 C CNN
	1    6650 2800
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR032
U 1 1 580619F0
P 6650 4550
AR Path="/57B05F2F/580619F0" Ref="#PWR032"  Part="1" 
AR Path="/57B0A0EC/580619F0" Ref="#PWR045"  Part="1" 
AR Path="/57B0A102/580619F0" Ref="#PWR058"  Part="1" 
F 0 "#PWR032" H 6650 4400 50  0001 C CNN
F 1 "+2V5" H 6650 4690 50  0000 C CNN
F 2 "" H 6650 4550 50  0000 C CNN
F 3 "" H 6650 4550 50  0000 C CNN
	1    6650 4550
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR033
U 1 1 58061A5D
P 6650 3400
AR Path="/57B05F2F/58061A5D" Ref="#PWR033"  Part="1" 
AR Path="/57B0A0EC/58061A5D" Ref="#PWR046"  Part="1" 
AR Path="/57B0A102/58061A5D" Ref="#PWR059"  Part="1" 
F 0 "#PWR033" H 6650 3250 50  0001 C CNN
F 1 "-2V5" H 6650 3540 50  0000 C CNN
F 2 "" H 6650 3400 50  0000 C CNN
F 3 "" H 6650 3400 50  0000 C CNN
	1    6650 3400
	-1   0    0    1   
$EndComp
$Comp
L -2V5 #PWR034
U 1 1 58061A93
P 6650 5150
AR Path="/57B05F2F/58061A93" Ref="#PWR034"  Part="1" 
AR Path="/57B0A0EC/58061A93" Ref="#PWR047"  Part="1" 
AR Path="/57B0A102/58061A93" Ref="#PWR060"  Part="1" 
F 0 "#PWR034" H 6650 5000 50  0001 C CNN
F 1 "-2V5" H 6650 5290 50  0000 C CNN
F 2 "" H 6650 5150 50  0000 C CNN
F 3 "" H 6650 5150 50  0000 C CNN
	1    6650 5150
	-1   0    0    1   
$EndComp
$Comp
L +2V5 #PWR035
U 1 1 58061BB8
P 2300 4150
AR Path="/57B05F2F/58061BB8" Ref="#PWR035"  Part="1" 
AR Path="/57B0A0EC/58061BB8" Ref="#PWR048"  Part="1" 
AR Path="/57B0A102/58061BB8" Ref="#PWR061"  Part="1" 
F 0 "#PWR035" H 2300 4000 50  0001 C CNN
F 1 "+2V5" H 2300 4290 50  0000 C CNN
F 2 "" H 2300 4150 50  0000 C CNN
F 3 "" H 2300 4150 50  0000 C CNN
	1    2300 4150
	1    0    0    -1  
$EndComp
$Comp
L -2V5 #PWR036
U 1 1 58061C53
P 2300 4650
AR Path="/57B05F2F/58061C53" Ref="#PWR036"  Part="1" 
AR Path="/57B0A0EC/58061C53" Ref="#PWR049"  Part="1" 
AR Path="/57B0A102/58061C53" Ref="#PWR062"  Part="1" 
F 0 "#PWR036" H 2300 4500 50  0001 C CNN
F 1 "-2V5" H 2300 4790 50  0000 C CNN
F 2 "" H 2300 4650 50  0000 C CNN
F 3 "" H 2300 4650 50  0000 C CNN
	1    2300 4650
	-1   0    0    1   
$EndComp
$Comp
L +2V5 #PWR037
U 1 1 580620CD
P 4300 4250
AR Path="/57B05F2F/580620CD" Ref="#PWR037"  Part="1" 
AR Path="/57B0A0EC/580620CD" Ref="#PWR050"  Part="1" 
AR Path="/57B0A102/580620CD" Ref="#PWR063"  Part="1" 
F 0 "#PWR037" H 4300 4100 50  0001 C CNN
F 1 "+2V5" H 4300 4390 50  0000 C CNN
F 2 "" H 4300 4250 50  0000 C CNN
F 3 "" H 4300 4250 50  0000 C CNN
	1    4300 4250
	0    -1   -1   0   
$EndComp
$Comp
L -2V5 #PWR038
U 1 1 58062167
P 5500 4250
AR Path="/57B05F2F/58062167" Ref="#PWR038"  Part="1" 
AR Path="/57B0A0EC/58062167" Ref="#PWR051"  Part="1" 
AR Path="/57B0A102/58062167" Ref="#PWR064"  Part="1" 
F 0 "#PWR038" H 5500 4100 50  0001 C CNN
F 1 "-2V5" H 5500 4390 50  0000 C CNN
F 2 "" H 5500 4250 50  0000 C CNN
F 3 "" H 5500 4250 50  0000 C CNN
	1    5500 4250
	0    1    1    0   
$EndComp
Text Notes 3450 3150 0    39   ~ 0
We could use a higher supply voltage here,\nthen attenuate the output so it fits within the +-2.5V supply of the ADC
Text HLabel 5750 5000 3    60   Input ~ 0
OUT+
Text HLabel 4950 5000 3    60   Input ~ 0
OUT-
$Comp
L C_Small C20
U 1 1 58067F10
P 3950 4350
AR Path="/57B05F2F/58067F10" Ref="C20"  Part="1" 
AR Path="/57B0A0EC/58067F10" Ref="C31"  Part="1" 
AR Path="/57B0A102/58067F10" Ref="C37"  Part="1" 
F 0 "C20" H 3960 4420 50  0000 L CNN
F 1 "220n" H 3960 4270 50  0000 L CNN
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
	6850 3200 7600 3200
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
	3600 3950 6450 3950
Connection ~ 6950 3650
Wire Wire Line
	6650 3650 6950 3650
Connection ~ 6950 3200
Wire Wire Line
	6850 4950 7600 4950
Wire Wire Line
	6950 3200 6950 3950
Wire Wire Line
	6950 3950 6650 3950
Connection ~ 2300 4400
Wire Wire Line
	2300 4350 2300 4450
Wire Wire Line
	2150 4400 2300 4400
Text Notes 1700 2000 0    60   ~ 0
This design is based on the paper "A Highly Sensitive Field Mill for Registering\nWeak and Strong Variations of the Electric-Field Intensity of the Earth’s Atmosphere" by Boldyrev et al.\nSome differences include swapping the OPA1632 for an AD8555 to increase dynamic range,\nand lower values on the feedback resistors due to lack of component choices.\nLower values also reduce the noise due to of variable parasitic capacitances (vibrating metal parts)\nVishay's 1G resistors could also work, and can also be stacked to make 500M. With such\na high value oscillation become an issue due to insufficient compensation
Text Notes 6050 4350 0    60   ~ 0
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
	3600 3950 3600 4550
Wire Wire Line
	3600 4550 4300 4550
Wire Wire Line
	5500 4550 6100 4550
Wire Wire Line
	6100 4850 6250 4850
Wire Wire Line
	5750 5000 5750 4350
Wire Wire Line
	5750 4350 5500 4350
$Comp
L GND #PWR?
U 1 1 58A24440
P 4950 4900
F 0 "#PWR?" H 4950 4650 50  0001 C CNN
F 1 "GND" H 4950 4750 50  0000 C CNN
F 2 "" H 4950 4900 50  0000 C CNN
F 3 "" H 4950 4900 50  0000 C CNN
	1    4950 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 4900 4950 5000
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
L +2V5 #PWR?
U 1 1 58A24ABB
P 5500 4450
F 0 "#PWR?" H 5500 4300 50  0001 C CNN
F 1 "+2V5" H 5500 4590 50  0000 C CNN
F 2 "" H 5500 4450 50  0000 C CNN
F 3 "" H 5500 4450 50  0000 C CNN
	1    5500 4450
	0    1    1    0   
$EndComp
Text Notes 3650 3900 0    60   ~ 0
We could put the RFI filter from the datasheet here
$EndSCHEMATC
