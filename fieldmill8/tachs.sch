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
P 8550 2850
F 0 "U7" H 8600 3050 50  0000 C CNN
F 1 "MAX44252ASD+" V 8500 2350 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 8500 2950 50  0001 C CNN
F 3 "" H 8600 3050 50  0000 C CNN
	1    8550 2850
	1    0    0    -1  
$EndComp
$Comp
L LM324 U7
U 2 1 58A66840
P 6300 3100
F 0 "U7" H 6350 3300 50  0000 C CNN
F 1 "MAX44252ASD+" H 6500 2700 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 6250 3200 50  0001 C CNN
F 3 "" H 6350 3300 50  0000 C CNN
	2    6300 3100
	1    0    0    -1  
$EndComp
$Comp
L ITR20001 IR1
U 1 1 58A66857
P 5050 2600
F 0 "IR1" H 5050 2850 60  0000 C CNN
F 1 "SG-2BC" H 5050 2750 60  0000 C CNN
F 2 "SCUBE:SG-2BC" H 5050 2600 60  0001 C CNN
F 3 "" H 5050 2600 60  0000 C CNN
F 4 "175-34-043" H 5050 2600 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/reflexdetektor-kodenshi-sg-2bc/p/17534043" H 5050 2600 60  0001 C CNN "1st Distrib. Link"
	1    5050 2600
	0    -1   1    0   
$EndComp
$Comp
L R_Small R18
U 1 1 58A6685E
P 5050 3150
F 0 "R18" H 5080 3170 50  0000 L CNN
F 1 "680" H 5080 3110 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5050 3150 50  0001 C CNN
F 3 "" H 5050 3150 50  0000 C CNN
	1    5050 3150
	1    0    0    -1  
$EndComp
$Comp
L R_Small R20
U 1 1 58A66865
P 5450 3400
F 0 "R20" H 5480 3420 50  0000 L CNN
F 1 "100k" H 5480 3360 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5450 3400 50  0001 C CNN
F 3 "" H 5450 3400 50  0000 C CNN
	1    5450 3400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R14
U 1 1 58A66879
P 8650 2500
F 0 "R14" H 8680 2520 50  0000 L CNN
F 1 "1M" H 8680 2460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8650 2500 50  0001 C CNN
F 3 "" H 8650 2500 50  0000 C CNN
	1    8650 2500
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R16
U 1 1 58A66880
P 6850 2750
F 0 "R16" H 6880 2770 50  0000 L CNN
F 1 "1k" H 6880 2710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6850 2750 50  0001 C CNN
F 3 "" H 6850 2750 50  0000 C CNN
	1    6850 2750
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R19
U 1 1 58A66887
P 7650 3500
F 0 "R19" H 7680 3520 50  0000 L CNN
F 1 "10k" H 7680 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7650 3500 50  0001 C CNN
F 3 "" H 7650 3500 50  0000 C CNN
	1    7650 3500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR034
U 1 1 58A6688E
P 6150 4050
F 0 "#PWR034" H 6150 3800 50  0001 C CNN
F 1 "GND" H 6150 3900 50  0000 C CNN
F 2 "" H 6150 4050 50  0000 C CNN
F 3 "" H 6150 4050 50  0000 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 58A66894
P 4200 2000
F 0 "C3" H 4210 2070 50  0000 L CNN
F 1 "100n" H 4210 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4200 2000 50  0001 C CNN
F 3 "" H 4200 2000 50  0000 C CNN
	1    4200 2000
	1    0    0    -1  
$EndComp
Text Notes 7100 4100 0    60   ~ 0
fc = 1/(2*pi*10k*10u) = 1.6 Hz
$Comp
L C_Small C7
U 1 1 58A668CA
P 7650 3750
F 0 "C7" H 7660 3820 50  0000 L CNN
F 1 "10u" H 7660 3670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7650 3750 50  0001 C CNN
F 3 "" H 7650 3750 50  0000 C CNN
	1    7650 3750
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 58A6694B
P 5300 3400
F 0 "C6" H 5310 3470 50  0000 L CNN
F 1 "470p" H 5310 3320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5300 3400 50  0001 C CNN
F 3 "" H 5300 3400 50  0000 C CNN
	1    5300 3400
	-1   0    0    1   
$EndComp
Text HLabel 9200 2850 2    60   Input ~ 0
ITACH
$Comp
L R_Small R13
U 1 1 58A72048
P 3950 1800
F 0 "R13" H 3980 1820 50  0000 L CNN
F 1 "56" H 3980 1760 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 3950 1800 50  0001 C CNN
F 3 "" H 3950 1800 50  0000 C CNN
	1    3950 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR035
U 1 1 58A7283B
P 4200 2100
F 0 "#PWR035" H 4200 1850 50  0001 C CNN
F 1 "GND" H 4200 1950 50  0000 C CNN
F 2 "" H 4200 2100 50  0000 C CNN
F 3 "" H 4200 2100 50  0000 C CNN
	1    4200 2100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR036
U 1 1 58B46917
P 3750 1800
F 0 "#PWR036" H 3750 1650 50  0001 C CNN
F 1 "+3V3" H 3750 1940 50  0000 C CNN
F 2 "" H 3750 1800 50  0000 C CNN
F 3 "" H 3750 1800 50  0000 C CNN
	1    3750 1800
	0    -1   -1   0   
$EndComp
Text Notes 3000 1550 0    60   ~ 0
TI's LM324ADR handles down to 3.0 V\nLTC2052 down to 2.7 V\n3 mA + 1 mA drive\n(3.3-3.1)/4 mA = 56 Ohm\n3.3^2/56 = 200 mW
Text Notes 5200 1600 0    60   ~ 0
IR LED current:\n(3.3-1.2)/680 = 3.1 mA\nUsed to be 1.4 mA, aiming for a bit stronger signal\nTopology inherently latch-up safe
$Comp
L +3V3 #PWR037
U 1 1 58B461FC
P 5250 2250
F 0 "#PWR037" H 5250 2100 50  0001 C CNN
F 1 "+3V3" H 5250 2390 50  0000 C CNN
F 2 "" H 5250 2250 50  0000 C CNN
F 3 "" H 5250 2250 50  0000 C CNN
	1    5250 2250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR038
U 1 1 58B46297
P 5050 2250
F 0 "#PWR038" H 5050 2100 50  0001 C CNN
F 1 "+3V3" H 5050 2390 50  0000 C CNN
F 2 "" H 5050 2250 50  0000 C CNN
F 3 "" H 5050 2250 50  0000 C CNN
	1    5050 2250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 58B46E5A
P 4550 2000
F 0 "C4" H 4560 2070 50  0000 L CNN
F 1 "10u" H 4560 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4550 2000 50  0001 C CNN
F 3 "" H 4550 2000 50  0000 C CNN
	1    4550 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 58B47058
P 4550 2100
F 0 "#PWR039" H 4550 1850 50  0001 C CNN
F 1 "GND" H 4550 1950 50  0000 C CNN
F 2 "" H 4550 2100 50  0000 C CNN
F 3 "" H 4550 2100 50  0000 C CNN
	1    4550 2100
	1    0    0    -1  
$EndComp
Text Notes 3850 2450 0    60   ~ 0
-52j Ohm @ 300 Hz
Text HLabel 9200 2300 2    60   Input ~ 0
RAW_ITACH
Text Notes 7950 1650 0    60   ~ 0
TODO: better OP?\nLM324 has 2 mV input offset..\nLTC2052 is auto-zeroing, 2 V/µs\nMAX44252ASD+ 6 µV input offset
$Comp
L PWR_FLAG #FLG040
U 1 1 58C4677A
P 4800 1700
F 0 "#FLG040" H 4800 1795 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 1880 50  0000 C CNN
F 2 "" H 4800 1700 50  0000 C CNN
F 3 "" H 4800 1700 50  0000 C CNN
	1    4800 1700
	1    0    0    -1  
$EndComp
$Comp
L LM324 U7
U 3 1 58CD541E
P 7550 3100
F 0 "U7" H 7600 3300 50  0000 C CNN
F 1 "MAX44252ASD+" V 7150 2850 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 7500 3200 50  0001 C CNN
F 3 "" H 7600 3300 50  0000 C CNN
	3    7550 3100
	1    0    0    -1  
$EndComp
$Comp
L MAX504 U17
U 1 1 58D36987
P 3400 3700
F 0 "U17" H 3400 4200 60  0000 C CNN
F 1 "MAX504" H 3400 4100 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3400 3700 60  0001 C CNN
F 3 "" H 3400 3700 60  0000 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
$Comp
L -5V #PWR41
U 1 1 58D3698E
P 4250 4550
F 0 "#PWR41" H 4250 4650 50  0001 C CNN
F 1 "-5V" H 4250 4700 50  0000 C CNN
F 2 "" H 4250 4550 50  0000 C CNN
F 3 "" H 4250 4550 50  0000 C CNN
	1    4250 4550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR041
U 1 1 58D36994
P 3400 4200
F 0 "#PWR041" H 3400 3950 50  0001 C CNN
F 1 "GND" H 3400 4050 50  0000 C CNN
F 2 "" H 3400 4200 50  0000 C CNN
F 3 "" H 3400 4200 50  0000 C CNN
	1    3400 4200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C48
U 1 1 58D3699E
P 4050 4000
F 0 "C48" H 4060 4070 50  0000 L CNN
F 1 "33u" H 4060 3920 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 4050 4000 50  0001 C CNN
F 3 "" H 4050 4000 50  0000 C CNN
F 4 "Murata" H 4050 4000 60  0001 C CNN "Mfg. Name"
F 5 "GRM32ER71A476KE15L" H 4050 4000 60  0001 C CNN "Mfg. Part Number"
F 6 "165-76-820" H 4050 4000 60  0001 C CNN "1st Distrib. PN"
F 7 "https://www.elfa.se/sv/kondensator-47-uf-10-vdc-1210-murata-grm32er71a476ke15l/p/16576820" H 4050 4000 60  0001 C CNN "1st Distrib. Link"
	1    4050 4000
	1    0    0    -1  
$EndComp
NoConn ~ 2850 3900
$Comp
L C_Small C46
U 1 1 58D369CB
P 4400 3250
F 0 "C46" H 4410 3320 50  0000 L CNN
F 1 "10u" H 4410 3170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4400 3250 50  0001 C CNN
F 3 "" H 4400 3250 50  0000 C CNN
	1    4400 3250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR042
U 1 1 58D369D2
P 4500 3250
F 0 "#PWR042" H 4500 3000 50  0001 C CNN
F 1 "GND" H 4500 3100 50  0000 C CNN
F 2 "" H 4500 3250 50  0000 C CNN
F 3 "" H 4500 3250 50  0000 C CNN
	1    4500 3250
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C49
U 1 1 58D369D8
P 4400 4100
F 0 "C49" H 4410 4170 50  0000 L CNN
F 1 "10u" H 4410 4020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4400 4100 50  0001 C CNN
F 3 "" H 4400 4100 50  0000 C CNN
	1    4400 4100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR043
U 1 1 58D369DF
P 4500 4100
F 0 "#PWR043" H 4500 3850 50  0001 C CNN
F 1 "GND" H 4500 3950 50  0000 C CNN
F 2 "" H 4500 4100 50  0000 C CNN
F 3 "" H 4500 4100 50  0000 C CNN
	1    4500 4100
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R39
U 1 1 58D369E9
P 4250 2800
F 0 "R39" H 4280 2820 50  0000 L CNN
F 1 "390" H 4280 2760 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 4250 2800 50  0001 C CNN
F 3 "" H 4250 2800 50  0000 C CNN
	1    4250 2800
	1    0    0    -1  
$EndComp
$Comp
L R_Small R44
U 1 1 58D369F0
P 4250 4400
F 0 "R44" H 4280 4420 50  0000 L CNN
F 1 "390" H 4280 4360 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 4250 4400 50  0001 C CNN
F 3 "" H 4250 4400 50  0000 C CNN
	1    4250 4400
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG044
U 1 1 58D369FB
P 4050 4350
F 0 "#FLG044" H 4050 4445 50  0001 C CNN
F 1 "PWR_FLAG" H 4050 4530 50  0000 C CNN
F 2 "" H 4050 4350 50  0000 C CNN
F 3 "" H 4050 4350 50  0000 C CNN
	1    4050 4350
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR045
U 1 1 58D36A07
P 4250 2700
F 0 "#PWR045" H 4250 2550 50  0001 C CNN
F 1 "+5V" H 4250 2840 50  0000 C CNN
F 2 "" H 4250 2700 50  0000 C CNN
F 3 "" H 4250 2700 50  0000 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG046
U 1 1 58D36A0D
P 3950 2900
F 0 "#FLG046" H 3950 2995 50  0001 C CNN
F 1 "PWR_FLAG" H 3950 3080 50  0000 C CNN
F 2 "" H 3950 2900 50  0000 C CNN
F 3 "" H 3950 2900 50  0000 C CNN
	1    3950 2900
	1    0    0    -1  
$EndComp
Text HLabel 2250 3500 0    60   Input ~ 0
DIN
Text GLabel 2250 3700 0    60   Input ~ 0
SCLK
Text GLabel 2250 3800 0    60   Input ~ 0
/CS_DACS
$Comp
L R_Small R43
U 1 1 58D3A2A2
P 5150 3750
F 0 "R43" H 5180 3770 50  0000 L CNN
F 1 "10k" H 5180 3710 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5150 3750 50  0001 C CNN
F 3 "" H 5150 3750 50  0000 C CNN
	1    5150 3750
	1    0    0    -1  
$EndComp
Text Notes 5000 4750 0    60   ~ 0
Lots of customizability here:\nR43 is fallback in case MAX504 breaks\nReplace with 0 Ohm if not using MAX504\nR40 might be better/simpler way to get RAW_ITACH to a "lagom" level\nDon't populate R20/R43 or MAX504 in this case, obviously
Wire Wire Line
	5050 3950 5050 3250
Connection ~ 6150 3950
Wire Wire Line
	6000 3200 6000 3200
Wire Wire Line
	6000 3200 6000 3450
Wire Wire Line
	6650 2300 6650 3450
Wire Wire Line
	6650 3100 6600 3100
Wire Wire Line
	6150 3950 6150 4050
Wire Wire Line
	5700 3000 6000 3000
Connection ~ 5700 3000
Wire Wire Line
	6200 3950 6200 3400
Wire Wire Line
	6200 1800 6200 2800
Connection ~ 6200 3950
Connection ~ 6200 1800
Wire Wire Line
	8450 1800 8450 2550
Wire Wire Line
	8450 3950 8450 3150
Connection ~ 6650 3100
Wire Wire Line
	6950 2750 8250 2750
Wire Wire Line
	8550 2500 8150 2500
Wire Wire Line
	8150 2500 8150 2750
Connection ~ 8150 2750
Wire Wire Line
	8900 2500 8750 2500
Wire Wire Line
	4050 1800 8450 1800
Wire Wire Line
	6650 2750 6750 2750
Wire Wire Line
	8850 2850 9200 2850
Wire Wire Line
	5300 3050 5300 3300
Wire Wire Line
	5050 2900 5050 3050
Wire Wire Line
	5050 3000 5650 3000
Connection ~ 8900 2850
Wire Wire Line
	8900 2850 8900 2500
Wire Wire Line
	3850 1800 3750 1800
Wire Wire Line
	5050 3950 8450 3950
Wire Wire Line
	4200 1900 4200 1800
Connection ~ 4200 1800
Wire Wire Line
	4550 1900 4550 1800
Connection ~ 4550 1800
Wire Wire Line
	6650 2300 9200 2300
Connection ~ 6650 2750
Wire Wire Line
	4800 1700 4800 1800
Connection ~ 4800 1800
Wire Wire Line
	7450 3400 7450 3950
Connection ~ 7450 3950
Connection ~ 7450 1800
Wire Wire Line
	7850 3100 8150 3100
Wire Wire Line
	8150 2950 8250 2950
Wire Wire Line
	7950 3100 7950 3750
Wire Wire Line
	7950 3750 7750 3750
Connection ~ 7950 3100
Wire Wire Line
	7750 3500 7950 3500
Connection ~ 7950 3500
Wire Wire Line
	7200 3750 7550 3750
Wire Wire Line
	7200 3200 7200 3750
Wire Wire Line
	7200 3200 7250 3200
Wire Wire Line
	7550 3500 7200 3500
Connection ~ 7200 3500
Wire Wire Line
	7450 2800 7450 1800
Wire Wire Line
	8150 3100 8150 2950
Wire Wire Line
	7250 3000 6650 3000
Connection ~ 6650 3000
Connection ~ 4050 3850
Wire Wire Line
	2850 3150 2850 3400
Wire Wire Line
	4050 3150 2850 3150
Connection ~ 4000 3600
Wire Wire Line
	4000 3400 4000 3600
Wire Wire Line
	3950 3400 4000 3400
Connection ~ 3950 4150
Wire Wire Line
	4050 4150 4050 4100
Connection ~ 3950 3850
Wire Wire Line
	4050 3850 3950 3850
Wire Wire Line
	4050 3150 4050 3900
Wire Wire Line
	3950 3800 3950 3900
Connection ~ 3400 4150
Wire Wire Line
	3400 4200 3400 4150
Wire Wire Line
	2850 4150 2850 4000
Wire Wire Line
	2850 4150 4050 4150
Wire Wire Line
	3950 4150 3950 4000
Wire Wire Line
	4250 3700 4250 4300
Wire Wire Line
	4250 2900 4250 3500
Wire Wire Line
	3950 3600 5450 3600
Wire Wire Line
	3950 3700 4250 3700
Wire Wire Line
	4250 3500 3950 3500
Wire Wire Line
	2500 3600 2850 3600
Wire Wire Line
	2250 3700 2850 3700
Wire Wire Line
	2850 3800 2250 3800
Wire Wire Line
	4250 4100 4300 4100
Connection ~ 4250 4100
Wire Wire Line
	4300 3250 4250 3250
Connection ~ 4250 3250
Wire Wire Line
	4250 4550 4250 4500
Wire Wire Line
	2500 3600 2500 3050
Wire Wire Line
	2500 3050 4250 3050
Connection ~ 4250 3050
Wire Wire Line
	4050 4350 4050 4200
Wire Wire Line
	4050 4200 4250 4200
Connection ~ 4250 4200
Wire Wire Line
	5300 3600 5300 3500
Connection ~ 5300 3600
Wire Wire Line
	6650 3450 6000 3450
Wire Wire Line
	3950 2900 3950 3050
Connection ~ 3950 3050
$Comp
L ITR20001 IR2
U 1 1 58D3D0AF
P 5650 2600
F 0 "IR2" H 5650 2850 60  0000 C CNN
F 1 "ITR20001" H 5650 2750 60  0000 C CNN
F 2 "SCUBE:ITR20001-smd" H 5650 2600 60  0001 C CNN
F 3 "" H 5650 2600 60  0000 C CNN
F 4 "175-34-043" H 5650 2600 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/reflexdetektor-kodenshi-sg-2bc/p/17534043" H 5650 2600 60  0001 C CNN "1st Distrib. Link"
	1    5650 2600
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 3000 5650 2900
Connection ~ 5050 3000
Wire Wire Line
	5250 2900 5250 2950
Wire Wire Line
	5250 2950 5850 2950
Wire Wire Line
	5850 2950 5850 2900
Connection ~ 5700 2950
$Comp
L +3V3 #PWR047
U 1 1 58D3D2E9
P 5650 2250
F 0 "#PWR047" H 5650 2100 50  0001 C CNN
F 1 "+3V3" H 5650 2390 50  0000 C CNN
F 2 "" H 5650 2250 50  0000 C CNN
F 3 "" H 5650 2250 50  0000 C CNN
	1    5650 2250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR048
U 1 1 58D3D339
P 5850 2250
F 0 "#PWR048" H 5850 2100 50  0001 C CNN
F 1 "+3V3" H 5850 2390 50  0000 C CNN
F 2 "" H 5850 2250 50  0000 C CNN
F 3 "" H 5850 2250 50  0000 C CNN
	1    5850 2250
	1    0    0    -1  
$EndComp
$Comp
L -5V #PWR37
U 1 1 58D3DB70
P 5700 4000
F 0 "#PWR37" H 5700 4100 50  0001 C CNN
F 1 "-5V" H 5700 4150 50  0000 C CNN
F 2 "" H 5700 4000 50  0000 C CNN
F 3 "" H 5700 4000 50  0000 C CNN
	1    5700 4000
	-1   0    0    1   
$EndComp
$Comp
L R_Small R40
U 1 1 58D3DCE4
P 5700 3650
F 0 "R40" H 5730 3670 50  0000 L CNN
F 1 "220k" H 5730 3610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5700 3650 50  0001 C CNN
F 3 "" H 5700 3650 50  0000 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3750 5700 4000
$Comp
L C_Small C47
U 1 1 58D41B0B
P 5950 3600
F 0 "C47" H 5960 3670 50  0000 L CNN
F 1 "220p" H 5960 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5950 3600 50  0001 C CNN
F 3 "" H 5950 3600 50  0000 C CNN
	1    5950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3700 5950 3900
Wire Wire Line
	5950 3900 5700 3900
Connection ~ 5700 3900
Wire Wire Line
	5150 3600 5150 3650
Connection ~ 5150 3600
Wire Wire Line
	5150 3850 5150 3950
Connection ~ 5150 3950
Wire Wire Line
	5450 3600 5450 3500
Wire Wire Line
	5700 2950 5700 3550
Wire Wire Line
	5300 3050 5700 3050
Wire Wire Line
	5450 3300 5450 3050
Connection ~ 5450 3050
Wire Wire Line
	5950 3500 5950 3450
Wire Wire Line
	5950 3450 5700 3450
Connection ~ 5700 3050
Connection ~ 5700 3450
Text Notes 4900 2000 0    60   ~ 0
IR1 or IR2, but not both
Wire Wire Line
	2850 3500 2250 3500
$Comp
L LED D5
U 1 1 58D45386
P 9050 3100
F 0 "D5" H 9050 3200 50  0000 C CNN
F 1 "LED" H 9050 3000 50  0000 C CNN
F 2 "LEDs:LED_0805" H 9050 3100 50  0001 C CNN
F 3 "" H 9050 3100 50  0000 C CNN
	1    9050 3100
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R45
U 1 1 58D453FA
P 9050 3350
F 0 "R45" H 9080 3370 50  0000 L CNN
F 1 "1k2" H 9080 3310 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 9050 3350 50  0001 C CNN
F 3 "" H 9050 3350 50  0000 C CNN
	1    9050 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR049
U 1 1 58D454B5
P 9050 3450
F 0 "#PWR049" H 9050 3200 50  0001 C CNN
F 1 "GND" H 9050 3300 50  0000 C CNN
F 2 "" H 9050 3450 50  0000 C CNN
F 3 "" H 9050 3450 50  0000 C CNN
	1    9050 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2950 9050 2850
Connection ~ 9050 2850
Text Notes 9300 3200 0    60   ~ 0
(3.3-2.0)/1200 = 1 mA
$EndSCHEMATC
