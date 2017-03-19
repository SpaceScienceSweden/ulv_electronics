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
Sheet 6 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4850 2450 0    60   ~ 0
Output current: 7.5 mA (max(4.0 mA, 5.05 mA) + 50%)\nInput voltage: +- 5 V\nMax drop-out: 185 mV, say 300 mV\nMinimum input voltage tolerated: +- 2.8 V\n(5-2.8)/7.5e-3 = 293 ≃ 270 Ohm\n3.3^2/270 = 40 mW
$Comp
L R_Small R21
U 1 1 58B4EC76
P 4800 3500
AR Path="/58B4D07F/58B4EC76" Ref="R21"  Part="1" 
AR Path="/58B50798/58B4EC76" Ref="R23"  Part="1" 
AR Path="/58B5082C/58B4EC76" Ref="R25"  Part="1" 
AR Path="/58B5082E/58B4EC76" Ref="R32"  Part="1" 
AR Path="/58C447BE/58B4EC76" Ref="R1"  Part="1" 
AR Path="/58C44AE0/58B4EC76" Ref="R21"  Part="1" 
AR Path="/58C44AE4/58B4EC76" Ref="R21"  Part="1" 
AR Path="/58C4A8D4/58B4EC76" Ref="R23"  Part="1" 
AR Path="/58C4AA7C/58B4EC76" Ref="R25"  Part="1" 
AR Path="/58C4ACF0/58B4EC76" Ref="R32"  Part="1" 
F 0 "R32" H 4830 3520 50  0000 L CNN
F 1 "270" H 4830 3460 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 4800 3500 50  0001 C CNN
F 3 "" H 4800 3500 50  0000 C CNN
	1    4800 3500
	0    1    1    0   
$EndComp
$Comp
L C_Small C8
U 1 1 58B4ECE3
P 5000 3650
AR Path="/58B4D07F/58B4ECE3" Ref="C8"  Part="1" 
AR Path="/58B50798/58B4ECE3" Ref="C24"  Part="1" 
AR Path="/58B5082C/58B4ECE3" Ref="C29"  Part="1" 
AR Path="/58B5082E/58B4ECE3" Ref="C37"  Part="1" 
AR Path="/58C447BE/58B4ECE3" Ref="C1"  Part="1" 
AR Path="/58C44AE0/58B4ECE3" Ref="C8"  Part="1" 
AR Path="/58C44AE4/58B4ECE3" Ref="C8"  Part="1" 
AR Path="/58C4A8D4/58B4ECE3" Ref="C24"  Part="1" 
AR Path="/58C4AA7C/58B4ECE3" Ref="C29"  Part="1" 
AR Path="/58C4ACF0/58B4ECE3" Ref="C37"  Part="1" 
F 0 "C37" H 5010 3720 50  0000 L CNN
F 1 "10u" H 5010 3570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5000 3650 50  0001 C CNN
F 3 "" H 5000 3650 50  0000 C CNN
	1    5000 3650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C14
U 1 1 58B4EDD0
P 5100 4650
AR Path="/58B4D07F/58B4EDD0" Ref="C14"  Part="1" 
AR Path="/58B50798/58B4EDD0" Ref="C26"  Part="1" 
AR Path="/58B5082C/58B4EDD0" Ref="C33"  Part="1" 
AR Path="/58B5082E/58B4EDD0" Ref="C40"  Part="1" 
AR Path="/58C447BE/58B4EDD0" Ref="C3"  Part="1" 
AR Path="/58C44AE0/58B4EDD0" Ref="C14"  Part="1" 
AR Path="/58C44AE4/58B4EDD0" Ref="C14"  Part="1" 
AR Path="/58C4A8D4/58B4EDD0" Ref="C26"  Part="1" 
AR Path="/58C4AA7C/58B4EDD0" Ref="C33"  Part="1" 
AR Path="/58C4ACF0/58B4EDD0" Ref="C40"  Part="1" 
F 0 "C40" H 5110 4720 50  0000 L CNN
F 1 "10u" H 5110 4570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5100 4650 50  0001 C CNN
F 3 "" H 5100 4650 50  0000 C CNN
	1    5100 4650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C20
U 1 1 58B4EE1E
P 6450 4550
AR Path="/58B4D07F/58B4EE1E" Ref="C20"  Part="1" 
AR Path="/58B50798/58B4EE1E" Ref="C28"  Part="1" 
AR Path="/58B5082C/58B4EE1E" Ref="C35"  Part="1" 
AR Path="/58B5082E/58B4EE1E" Ref="C43"  Part="1" 
AR Path="/58C447BE/58B4EE1E" Ref="C5"  Part="1" 
AR Path="/58C44AE0/58B4EE1E" Ref="C20"  Part="1" 
AR Path="/58C44AE4/58B4EE1E" Ref="C20"  Part="1" 
AR Path="/58C4A8D4/58B4EE1E" Ref="C28"  Part="1" 
AR Path="/58C4AA7C/58B4EE1E" Ref="C35"  Part="1" 
AR Path="/58C4ACF0/58B4EE1E" Ref="C43"  Part="1" 
F 0 "C43" H 6460 4620 50  0000 L CNN
F 1 "10u" H 6460 4470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6450 4550 50  0001 C CNN
F 3 "" H 6450 4550 50  0000 C CNN
	1    6450 4550
	1    0    0    -1  
$EndComp
$Comp
L R_Small R22
U 1 1 58B4EF14
P 4750 4500
AR Path="/58B4D07F/58B4EF14" Ref="R22"  Part="1" 
AR Path="/58B50798/58B4EF14" Ref="R24"  Part="1" 
AR Path="/58B5082C/58B4EF14" Ref="R31"  Part="1" 
AR Path="/58B5082E/58B4EF14" Ref="R33"  Part="1" 
AR Path="/58C447BE/58B4EF14" Ref="R2"  Part="1" 
AR Path="/58C44AE0/58B4EF14" Ref="R22"  Part="1" 
AR Path="/58C44AE4/58B4EF14" Ref="R22"  Part="1" 
AR Path="/58C4A8D4/58B4EF14" Ref="R24"  Part="1" 
AR Path="/58C4AA7C/58B4EF14" Ref="R31"  Part="1" 
AR Path="/58C4ACF0/58B4EF14" Ref="R33"  Part="1" 
F 0 "R33" H 4780 4520 50  0000 L CNN
F 1 "270" H 4780 4460 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 4750 4500 50  0001 C CNN
F 3 "" H 4750 4500 50  0000 C CNN
	1    4750 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4500 5400 4500
$Comp
L C_Small C9
U 1 1 58B4F155
P 6450 3650
AR Path="/58B4D07F/58B4F155" Ref="C9"  Part="1" 
AR Path="/58B50798/58B4F155" Ref="C25"  Part="1" 
AR Path="/58B5082C/58B4F155" Ref="C31"  Part="1" 
AR Path="/58B5082E/58B4F155" Ref="C39"  Part="1" 
AR Path="/58C447BE/58B4F155" Ref="C2"  Part="1" 
AR Path="/58C44AE0/58B4F155" Ref="C9"  Part="1" 
AR Path="/58C44AE4/58B4F155" Ref="C9"  Part="1" 
AR Path="/58C4A8D4/58B4F155" Ref="C25"  Part="1" 
AR Path="/58C4AA7C/58B4F155" Ref="C31"  Part="1" 
AR Path="/58C4ACF0/58B4F155" Ref="C39"  Part="1" 
F 0 "C39" H 6460 3720 50  0000 L CNN
F 1 "10u" H 6460 3570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6450 3650 50  0001 C CNN
F 3 "" H 6450 3650 50  0000 C CNN
	1    6450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3500 4700 3500
Wire Wire Line
	4900 3500 5400 3500
$Comp
L GND #PWR039
U 1 1 58B4F3DE
P 5400 3600
AR Path="/58B4D07F/58B4F3DE" Ref="#PWR039"  Part="1" 
AR Path="/58B50798/58B4F3DE" Ref="#PWR062"  Part="1" 
AR Path="/58B5082C/58B4F3DE" Ref="#PWR071"  Part="1" 
AR Path="/58B5082E/58B4F3DE" Ref="#PWR080"  Part="1" 
AR Path="/58C447BE/58B4F3DE" Ref="#PWR046"  Part="1" 
AR Path="/58C44AE0/58B4F3DE" Ref="#PWR053"  Part="1" 
AR Path="/58C44AE4/58B4F3DE" Ref="#PWR060"  Part="1" 
AR Path="/58C4A8D4/58B4F3DE" Ref="#PWR048"  Part="1" 
AR Path="/58C4AA7C/58B4F3DE" Ref="#PWR057"  Part="1" 
AR Path="/58C4ACF0/58B4F3DE" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 5400 3350 50  0001 C CNN
F 1 "GND" H 5400 3450 50  0000 C CNN
F 2 "" H 5400 3600 50  0000 C CNN
F 3 "" H 5400 3600 50  0000 C CNN
	1    5400 3600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR040
U 1 1 58B4F537
P 5100 4750
AR Path="/58B4D07F/58B4F537" Ref="#PWR040"  Part="1" 
AR Path="/58B50798/58B4F537" Ref="#PWR065"  Part="1" 
AR Path="/58B5082C/58B4F537" Ref="#PWR074"  Part="1" 
AR Path="/58B5082E/58B4F537" Ref="#PWR083"  Part="1" 
AR Path="/58C447BE/58B4F537" Ref="#PWR047"  Part="1" 
AR Path="/58C44AE0/58B4F537" Ref="#PWR054"  Part="1" 
AR Path="/58C44AE4/58B4F537" Ref="#PWR061"  Part="1" 
AR Path="/58C4A8D4/58B4F537" Ref="#PWR049"  Part="1" 
AR Path="/58C4AA7C/58B4F537" Ref="#PWR058"  Part="1" 
AR Path="/58C4ACF0/58B4F537" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 5100 4500 50  0001 C CNN
F 1 "GND" H 5100 4600 50  0000 C CNN
F 2 "" H 5100 4750 50  0000 C CNN
F 3 "" H 5100 4750 50  0000 C CNN
	1    5100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4500 4650 4500
$Comp
L PWR_FLAG #FLG041
U 1 1 58C46B25
P 4950 3400
AR Path="/58B4D07F/58C46B25" Ref="#FLG041"  Part="1" 
AR Path="/58B50798/58C46B25" Ref="#FLG068"  Part="1" 
AR Path="/58B5082C/58C46B25" Ref="#FLG077"  Part="1" 
AR Path="/58B5082E/58C46B25" Ref="#FLG086"  Part="1" 
AR Path="/58C447BE/58C46B25" Ref="#FLG050"  Part="1" 
AR Path="/58C44AE0/58C46B25" Ref="#FLG057"  Part="1" 
AR Path="/58C44AE4/58C46B25" Ref="#FLG064"  Part="1" 
AR Path="/58C4A8D4/58C46B25" Ref="#FLG050"  Part="1" 
AR Path="/58C4AA7C/58C46B25" Ref="#FLG059"  Part="1" 
AR Path="/58C4ACF0/58C46B25" Ref="#FLG068"  Part="1" 
F 0 "#FLG068" H 4950 3495 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 3580 50  0000 C CNN
F 2 "" H 4950 3400 50  0000 C CNN
F 3 "" H 4950 3400 50  0000 C CNN
	1    4950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3400 4950 3500
Connection ~ 4950 3500
$Comp
L PWR_FLAG #FLG042
U 1 1 58C46BC7
P 4900 4450
AR Path="/58B4D07F/58C46BC7" Ref="#FLG042"  Part="1" 
AR Path="/58B50798/58C46BC7" Ref="#FLG069"  Part="1" 
AR Path="/58B5082C/58C46BC7" Ref="#FLG078"  Part="1" 
AR Path="/58B5082E/58C46BC7" Ref="#FLG087"  Part="1" 
AR Path="/58C447BE/58C46BC7" Ref="#FLG051"  Part="1" 
AR Path="/58C44AE0/58C46BC7" Ref="#FLG058"  Part="1" 
AR Path="/58C44AE4/58C46BC7" Ref="#FLG065"  Part="1" 
AR Path="/58C4A8D4/58C46BC7" Ref="#FLG051"  Part="1" 
AR Path="/58C4AA7C/58C46BC7" Ref="#FLG060"  Part="1" 
AR Path="/58C4ACF0/58C46BC7" Ref="#FLG069"  Part="1" 
F 0 "#FLG069" H 4900 4545 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 4630 50  0000 C CNN
F 2 "" H 4900 4450 50  0000 C CNN
F 3 "" H 4900 4450 50  0000 C CNN
	1    4900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4450 4900 4500
Connection ~ 4900 4500
Text HLabel 6900 3500 2    60   Input ~ 0
+2V5
Text HLabel 6900 4400 2    60   Input ~ 0
-2V5
Text Notes 7300 3550 0    60   ~ 0
Using connectors here instead of power pins\nso channels have properly independent supplies
$Comp
L ADP7182 U10
U 1 1 58CD9114
P 5850 4500
AR Path="/58B4D07F/58CD9114" Ref="U10"  Part="1" 
AR Path="/58C4A8D4/58CD9114" Ref="U12"  Part="1" 
AR Path="/58C4AA7C/58CD9114" Ref="U14"  Part="1" 
AR Path="/58C4ACF0/58CD9114" Ref="U16"  Part="1" 
F 0 "U16" H 5850 4800 60  0000 C CNN
F 1 "ADP7182" H 5850 4700 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 5850 4500 60  0001 C CNN
F 3 "" H 5850 4500 60  0000 C CNN
	1    5850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4600 5350 4600
Wire Wire Line
	5350 4600 5350 4500
Connection ~ 5350 4500
Wire Wire Line
	5100 4550 5100 4500
Connection ~ 5100 4500
$Comp
L GND #PWR043
U 1 1 58CD941E
P 5400 4400
AR Path="/58B4D07F/58CD941E" Ref="#PWR043"  Part="1" 
AR Path="/58C4A8D4/58CD941E" Ref="#PWR052"  Part="1" 
AR Path="/58C4AA7C/58CD941E" Ref="#PWR061"  Part="1" 
AR Path="/58C4ACF0/58CD941E" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 5400 4150 50  0001 C CNN
F 1 "GND" H 5400 4250 50  0000 C CNN
F 2 "" H 5400 4400 50  0000 C CNN
F 3 "" H 5400 4400 50  0000 C CNN
	1    5400 4400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR044
U 1 1 58CD949A
P 6450 4650
AR Path="/58B4D07F/58CD949A" Ref="#PWR044"  Part="1" 
AR Path="/58C4A8D4/58CD949A" Ref="#PWR053"  Part="1" 
AR Path="/58C4AA7C/58CD949A" Ref="#PWR062"  Part="1" 
AR Path="/58C4ACF0/58CD949A" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 6450 4400 50  0001 C CNN
F 1 "GND" H 6450 4500 50  0000 C CNN
F 2 "" H 6450 4650 50  0000 C CNN
F 3 "" H 6450 4650 50  0000 C CNN
	1    6450 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4400 6900 4400
Wire Wire Line
	6450 4400 6450 4450
Connection ~ 6450 4400
$Comp
L ADM7160 U9
U 1 1 58CD970D
P 5850 3600
AR Path="/58B4D07F/58CD970D" Ref="U9"  Part="1" 
AR Path="/58C4A8D4/58CD970D" Ref="U11"  Part="1" 
AR Path="/58C4AA7C/58CD970D" Ref="U13"  Part="1" 
AR Path="/58C4ACF0/58CD970D" Ref="U15"  Part="1" 
F 0 "U15" H 5850 3900 60  0000 C CNN
F 1 "ADM7160" H 5850 3800 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 5850 3600 60  0001 C CNN
F 3 "" H 5850 3600 60  0000 C CNN
	1    5850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3700 5200 3700
Wire Wire Line
	5200 3700 5200 3500
Connection ~ 5200 3500
Wire Wire Line
	5000 3550 5000 3500
Connection ~ 5000 3500
$Comp
L GND #PWR045
U 1 1 58CD99ED
P 5000 3750
AR Path="/58B4D07F/58CD99ED" Ref="#PWR045"  Part="1" 
AR Path="/58C4A8D4/58CD99ED" Ref="#PWR054"  Part="1" 
AR Path="/58C4AA7C/58CD99ED" Ref="#PWR063"  Part="1" 
AR Path="/58C4ACF0/58CD99ED" Ref="#PWR072"  Part="1" 
F 0 "#PWR072" H 5000 3500 50  0001 C CNN
F 1 "GND" H 5000 3600 50  0000 C CNN
F 2 "" H 5000 3750 50  0000 C CNN
F 3 "" H 5000 3750 50  0000 C CNN
	1    5000 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 58CD9AC6
P 6450 3750
AR Path="/58B4D07F/58CD9AC6" Ref="#PWR046"  Part="1" 
AR Path="/58C4A8D4/58CD9AC6" Ref="#PWR055"  Part="1" 
AR Path="/58C4AA7C/58CD9AC6" Ref="#PWR064"  Part="1" 
AR Path="/58C4ACF0/58CD9AC6" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 6450 3500 50  0001 C CNN
F 1 "GND" H 6450 3600 50  0000 C CNN
F 2 "" H 6450 3750 50  0000 C CNN
F 3 "" H 6450 3750 50  0000 C CNN
	1    6450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3500 6900 3500
Wire Wire Line
	6450 3500 6450 3550
Connection ~ 6450 3500
Text Notes 6400 3150 0    60   ~ 0
Capacitors: Should have >= 2.2 µF, ESR < 1 Ohm\nDC bias reduces ceramic capacitance\nAlso keep in mind tolerance\nSame cap on both sides
$Comp
L -5V #PWR36
U 1 1 58B4EC12
P 4600 4500
AR Path="/58B4D07F/58B4EC12" Ref="#PWR36"  Part="1" 
AR Path="/58B50798/58B4EC12" Ref="#PWR56"  Part="1" 
AR Path="/58B5082C/58B4EC12" Ref="#PWR62"  Part="1" 
AR Path="/58B5082E/58B4EC12" Ref="#PWR68"  Part="1" 
AR Path="/58C447BE/58B4EC12" Ref="#PWR39"  Part="1" 
AR Path="/58C44AE0/58B4EC12" Ref="#PWR43"  Part="1" 
AR Path="/58C44AE4/58B4EC12" Ref="#PWR47"  Part="1" 
AR Path="/58C4A8D4/58B4EC12" Ref="#PWR44"  Part="1" 
AR Path="/58C4AA7C/58B4EC12" Ref="#PWR52"  Part="1" 
AR Path="/58C4ACF0/58B4EC12" Ref="#PWR60"  Part="1" 
F 0 "#PWR60" H 4600 4600 50  0001 C CNN
F 1 "-5V" H 4600 4650 50  0000 C CNN
F 2 "" H 4600 4500 50  0000 C CNN
F 3 "" H 4600 4500 50  0000 C CNN
	1    4600 4500
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR047
U 1 1 58B4EBF6
P 4650 3500
AR Path="/58B4D07F/58B4EBF6" Ref="#PWR047"  Part="1" 
AR Path="/58B50798/58B4EBF6" Ref="#PWR061"  Part="1" 
AR Path="/58B5082C/58B4EBF6" Ref="#PWR070"  Part="1" 
AR Path="/58B5082E/58B4EBF6" Ref="#PWR079"  Part="1" 
AR Path="/58C447BE/58B4EBF6" Ref="#PWR045"  Part="1" 
AR Path="/58C44AE0/58B4EBF6" Ref="#PWR052"  Part="1" 
AR Path="/58C44AE4/58B4EBF6" Ref="#PWR059"  Part="1" 
AR Path="/58C4A8D4/58B4EBF6" Ref="#PWR056"  Part="1" 
AR Path="/58C4AA7C/58B4EBF6" Ref="#PWR065"  Part="1" 
AR Path="/58C4ACF0/58B4EBF6" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 4650 3350 50  0001 C CNN
F 1 "+5V" H 4650 3640 50  0000 C CNN
F 2 "" H 4650 3500 50  0000 C CNN
F 3 "" H 4650 3500 50  0000 C CNN
	1    4650 3500
	0    -1   -1   0   
$EndComp
$Comp
L D_Zener D1
U 1 1 58CECE33
P 6750 3950
AR Path="/58B4D07F/58CECE33" Ref="D1"  Part="1" 
AR Path="/58C4A8D4/58CECE33" Ref="D2"  Part="1" 
AR Path="/58C4AA7C/58CECE33" Ref="D3"  Part="1" 
AR Path="/58C4ACF0/58CECE33" Ref="D4"  Part="1" 
F 0 "D4" H 6750 4050 50  0000 C CNN
F 1 "TDZ5V6J" H 6750 3850 50  0000 C CNN
F 2 "" H 6750 3950 50  0000 C CNN
F 3 "" H 6750 3950 50  0000 C CNN
F 4 "Nexperia" H 6750 3950 60  0001 C CNN "Mfg. Name"
F 5 "TDZ5V6J" H 6750 3950 60  0001 C CNN "Mfg. Part Number"
F 6 "2069517" H 6750 3950 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/nxp/tdz5v6j/diode-zener-0-500w-5v6v-sod323f/dp/2069517" H 6750 3950 60  0001 C CNN "1st Distrib. Link"
	1    6750 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3800 6750 3500
Connection ~ 6750 3500
Wire Wire Line
	6750 4100 6750 4400
Connection ~ 6750 4400
Text Notes 7000 4000 0    60   ~ 0
Zener protects against reverse currents pushing the rails too far apart\nPoor man's TVS more or less
$EndSCHEMATC
