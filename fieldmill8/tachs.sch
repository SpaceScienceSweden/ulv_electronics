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
Sheet 5 9
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
L LM324 U7
U 1 1 58A66839
P 7100 2850
F 0 "U7" H 7150 3050 50  0000 C CNN
F 1 "LTC2052" H 7250 2650 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 7050 2950 50  0001 C CNN
F 3 "" H 7150 3050 50  0000 C CNN
	1    7100 2850
	1    0    0    -1  
$EndComp
$Comp
L LM324 U7
U 2 1 58A66840
P 4850 3100
F 0 "U7" H 4900 3300 50  0000 C CNN
F 1 "LTC2052" H 5000 2900 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 4800 3200 50  0001 C CNN
F 3 "" H 4900 3300 50  0000 C CNN
	2    4850 3100
	1    0    0    -1  
$EndComp
$Comp
L ITR20001 IR1
U 1 1 58A66857
P 4050 2600
F 0 "IR1" H 4050 2850 60  0000 C CNN
F 1 "SG-2BC" H 4050 2750 60  0000 C CNN
F 2 "SCUBE:SG-2BC" H 4050 2600 60  0001 C CNN
F 3 "" H 4050 2600 60  0000 C CNN
F 4 "175-34-043" H 4050 2600 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/reflexdetektor-kodenshi-sg-2bc/p/17534043" H 4050 2600 60  0001 C CNN "1st Distrib. Link"
	1    4050 2600
	0    -1   1    0   
$EndComp
$Comp
L R_Small R18
U 1 1 58A6685E
P 3800 3150
F 0 "R18" H 3830 3170 50  0000 L CNN
F 1 "680" H 3830 3110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3800 3150 50  0001 C CNN
F 3 "" H 3800 3150 50  0000 C CNN
	1    3800 3150
	1    0    0    -1  
$EndComp
$Comp
L R_Small R20
U 1 1 58A66865
P 4250 3400
F 0 "R20" H 4280 3420 50  0000 L CNN
F 1 "100k" H 4280 3360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4250 3400 50  0001 C CNN
F 3 "" H 4250 3400 50  0000 C CNN
	1    4250 3400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R14
U 1 1 58A66879
P 7200 2500
F 0 "R14" H 7230 2520 50  0000 L CNN
F 1 "1M" H 7230 2460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7200 2500 50  0001 C CNN
F 3 "" H 7200 2500 50  0000 C CNN
	1    7200 2500
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R16
U 1 1 58A66880
P 5400 2750
F 0 "R16" H 5430 2770 50  0000 L CNN
F 1 "1k" H 5430 2710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5400 2750 50  0001 C CNN
F 3 "" H 5400 2750 50  0000 C CNN
	1    5400 2750
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R19
U 1 1 58A66887
P 6200 3500
F 0 "R19" H 6230 3520 50  0000 L CNN
F 1 "10k" H 6230 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6200 3500 50  0001 C CNN
F 3 "" H 6200 3500 50  0000 C CNN
	1    6200 3500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR032
U 1 1 58A6688E
P 4550 4050
F 0 "#PWR032" H 4550 3800 50  0001 C CNN
F 1 "GND" H 4550 3900 50  0000 C CNN
F 2 "" H 4550 4050 50  0000 C CNN
F 3 "" H 4550 4050 50  0000 C CNN
	1    4550 4050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 58A66894
P 2750 2000
F 0 "C3" H 2760 2070 50  0000 L CNN
F 1 "100n" H 2760 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2750 2000 50  0001 C CNN
F 3 "" H 2750 2000 50  0000 C CNN
	1    2750 2000
	1    0    0    -1  
$EndComp
Text Notes 7200 4050 0    60   ~ 0
fc = 1/(2*pi*10k*10u) = 1.6 Hz
Wire Wire Line
	3800 3950 3800 3250
Connection ~ 4550 3950
Wire Wire Line
	4250 3950 4250 3500
Connection ~ 4250 3950
Wire Wire Line
	4550 3200 4550 3200
Wire Wire Line
	4550 3200 4550 3450
Wire Wire Line
	4550 3450 5200 3450
Wire Wire Line
	5200 3450 5200 2300
Wire Wire Line
	5200 3100 5150 3100
Wire Wire Line
	4550 3950 4550 4050
Wire Wire Line
	4250 3000 4550 3000
Connection ~ 4250 3000
Wire Wire Line
	4750 3950 4750 3400
Wire Wire Line
	4750 1800 4750 2800
Connection ~ 4750 3950
Connection ~ 4750 1800
Wire Wire Line
	7000 1800 7000 2550
Wire Wire Line
	7000 3950 7000 3150
Connection ~ 5200 3100
Wire Wire Line
	5500 2750 6800 2750
Wire Wire Line
	7100 2500 6700 2500
Wire Wire Line
	6700 2500 6700 2750
Connection ~ 6700 2750
Wire Wire Line
	7450 2500 7300 2500
$Comp
L C_Small C7
U 1 1 58A668CA
P 6200 3750
F 0 "C7" H 6210 3820 50  0000 L CNN
F 1 "10u" H 6210 3670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6200 3750 50  0001 C CNN
F 3 "" H 6200 3750 50  0000 C CNN
	1    6200 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 1800 7000 1800
Wire Wire Line
	5200 2750 5300 2750
Wire Wire Line
	7400 2850 7750 2850
$Comp
L C_Small C6
U 1 1 58A6694B
P 4100 3400
F 0 "C6" H 4110 3470 50  0000 L CNN
F 1 "470p" H 4110 3320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4100 3400 50  0001 C CNN
F 3 "" H 4100 3400 50  0000 C CNN
	1    4100 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 3950 4100 3500
Connection ~ 4100 3950
Wire Wire Line
	4100 3300 4100 3250
Wire Wire Line
	4100 3250 4250 3250
Connection ~ 4250 3250
Wire Wire Line
	3800 3050 3800 2950
Wire Wire Line
	3800 2950 4050 2950
Wire Wire Line
	4050 2950 4050 2900
Connection ~ 7450 2850
Wire Wire Line
	7450 2850 7450 2500
Text HLabel 7750 2850 2    60   Input ~ 0
ITACH
$Comp
L R_Small R13
U 1 1 58A72048
P 2500 1800
F 0 "R13" H 2530 1820 50  0000 L CNN
F 1 "56" H 2530 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 2500 1800 50  0001 C CNN
F 3 "" H 2500 1800 50  0000 C CNN
	1    2500 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 1800 2300 1800
Wire Wire Line
	3800 3950 7000 3950
$Comp
L GND #PWR033
U 1 1 58A7283B
P 2750 2100
F 0 "#PWR033" H 2750 1850 50  0001 C CNN
F 1 "GND" H 2750 1950 50  0000 C CNN
F 2 "" H 2750 2100 50  0000 C CNN
F 3 "" H 2750 2100 50  0000 C CNN
	1    2750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1900 2750 1800
Connection ~ 2750 1800
$Comp
L +3V3 #PWR034
U 1 1 58B46917
P 2300 1800
F 0 "#PWR034" H 2300 1650 50  0001 C CNN
F 1 "+3V3" H 2300 1940 50  0000 C CNN
F 2 "" H 2300 1800 50  0000 C CNN
F 3 "" H 2300 1800 50  0000 C CNN
	1    2300 1800
	0    -1   -1   0   
$EndComp
Text Notes 1550 1550 0    60   ~ 0
TI's LM324ADR handles down to 3.0 V\n3 mA + 1 mA drive\n(3.3-3.1)/4 mA = 56 Ohm\n3.3^2/56 = 200 mW
Text Notes 3750 1600 0    60   ~ 0
IR LED current:\n(3.3-1.2)/680 = 3.1 mA\nUsed to be 1.4 mA, aiming for a bit stronger signal\nTopology inherently latch-up safe
$Comp
L +3V3 #PWR035
U 1 1 58B461FC
P 4250 2250
F 0 "#PWR035" H 4250 2100 50  0001 C CNN
F 1 "+3V3" H 4250 2390 50  0000 C CNN
F 2 "" H 4250 2250 50  0000 C CNN
F 3 "" H 4250 2250 50  0000 C CNN
	1    4250 2250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR036
U 1 1 58B46297
P 4050 2250
F 0 "#PWR036" H 4050 2100 50  0001 C CNN
F 1 "+3V3" H 4050 2390 50  0000 C CNN
F 2 "" H 4050 2250 50  0000 C CNN
F 3 "" H 4050 2250 50  0000 C CNN
	1    4050 2250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 58B46E5A
P 3100 2000
F 0 "C4" H 3110 2070 50  0000 L CNN
F 1 "10u" H 3110 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3100 2000 50  0001 C CNN
F 3 "" H 3100 2000 50  0000 C CNN
	1    3100 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 58B47058
P 3100 2100
F 0 "#PWR037" H 3100 1850 50  0001 C CNN
F 1 "GND" H 3100 1950 50  0000 C CNN
F 2 "" H 3100 2100 50  0000 C CNN
F 3 "" H 3100 2100 50  0000 C CNN
	1    3100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1900 3100 1800
Connection ~ 3100 1800
Text Notes 2400 2450 0    60   ~ 0
-52j Ohm @ 300 Hz
Text HLabel 7750 2300 2    60   Input ~ 0
RAW_ITACH
Wire Wire Line
	5200 2300 7750 2300
Connection ~ 5200 2750
Wire Wire Line
	4250 2900 4250 3300
Text Notes 6500 1650 0    60   ~ 0
TODO: better OP?\nLM324 has 2 mV input offset..\nLTC2052 is auto-zeroing, 2 V/µs
$Comp
L PWR_FLAG #FLG038
U 1 1 58C4677A
P 3350 1700
F 0 "#FLG038" H 3350 1795 50  0001 C CNN
F 1 "PWR_FLAG" H 3350 1880 50  0000 C CNN
F 2 "" H 3350 1700 50  0000 C CNN
F 3 "" H 3350 1700 50  0000 C CNN
	1    3350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1700 3350 1800
Connection ~ 3350 1800
$Comp
L LM324 U7
U 3 1 58CD541E
P 6100 3100
F 0 "U7" H 6150 3300 50  0000 C CNN
F 1 "LTC2052" H 6250 2900 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 6050 3200 50  0001 C CNN
F 3 "" H 6150 3300 50  0000 C CNN
	3    6100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3400 6000 3950
Connection ~ 6000 3950
Connection ~ 6000 1800
Wire Wire Line
	6400 3100 6700 3100
Wire Wire Line
	6700 2950 6800 2950
Wire Wire Line
	6500 3100 6500 3750
Wire Wire Line
	6500 3750 6300 3750
Connection ~ 6500 3100
Wire Wire Line
	6300 3500 6500 3500
Connection ~ 6500 3500
Wire Wire Line
	5750 3750 6100 3750
Wire Wire Line
	5750 3200 5750 3750
Wire Wire Line
	5750 3200 5800 3200
Wire Wire Line
	6100 3500 5750 3500
Connection ~ 5750 3500
Wire Wire Line
	6000 2800 6000 1800
Wire Wire Line
	6700 3100 6700 2950
Wire Wire Line
	5800 3000 5200 3000
Connection ~ 5200 3000
$EndSCHEMATC
