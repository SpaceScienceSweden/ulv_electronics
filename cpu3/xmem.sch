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
LIBS:cpu3-cache
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
Text Notes 1400 2400 0    60   ~ 0
SRAM manufacturers carried by both Elfa and Farnell:\nBSI, Lyontek, Renesas, IDT, ISSI\nFurthermore, Atmel makes rad-hard 128k x 8 SRAM\nIS63LV1024 is the cheapest SRAM with at least 64k x 8, 3.3V and <= 35 ns access time\nThe ATmega128 datasheet also says to use an AHC type 573
Text GLabel 3200 4650 0    60   Input ~ 0
/RD
Text GLabel 3200 4750 0    60   Input ~ 0
/WR
$Comp
L 74LS573 U2
U 1 1 57F80533
P 2500 3150
F 0 "U2" H 2650 3750 50  0000 C CNN
F 1 "SN74AHC573" H 2500 2550 50  0000 C CNN
F 2 "SCUBE:SO-20" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0000 C CNN
F 4 "300-22-908" H 2500 3150 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/logikkrets-so-20-sn74ahc573-texas-instruments-sn74ahc573dw/p/30022908" H 2500 3150 60  0001 C CNN "1st Distrib. Link"
	1    2500 3150
	1    0    0    -1  
$EndComp
Text GLabel 1800 2650 0    60   Input ~ 0
AD0
Text GLabel 1800 2750 0    60   Input ~ 0
AD1
Text GLabel 1800 2850 0    60   Input ~ 0
AD2
Text GLabel 1800 2950 0    60   Input ~ 0
AD3
Text GLabel 1800 3050 0    60   Input ~ 0
AD4
Text GLabel 1800 3150 0    60   Input ~ 0
AD5
Text GLabel 1800 3250 0    60   Input ~ 0
AD6
Text GLabel 1800 3350 0    60   Input ~ 0
AD7
Text GLabel 1800 3550 0    60   Input ~ 0
ALE
Text GLabel 4600 2650 2    60   Input ~ 0
AD0
Text GLabel 4600 2750 2    60   Input ~ 0
AD1
Text GLabel 4600 2850 2    60   Input ~ 0
AD2
Text GLabel 4600 2950 2    60   Input ~ 0
AD3
Text GLabel 4600 3050 2    60   Input ~ 0
AD4
Text GLabel 4600 3150 2    60   Input ~ 0
AD5
Text GLabel 4600 3250 2    60   Input ~ 0
AD6
Text GLabel 4600 3350 2    60   Input ~ 0
AD7
Text GLabel 3200 3450 0    60   Input ~ 0
A8
Text GLabel 3200 3550 0    60   Input ~ 0
A9
Text GLabel 3200 3650 0    60   Input ~ 0
A10
Text GLabel 3200 3750 0    60   Input ~ 0
A11
Text GLabel 3200 3850 0    60   Input ~ 0
A12
Text GLabel 3200 3950 0    60   Input ~ 0
A13
Text GLabel 3200 4050 0    60   Input ~ 0
A14
Text GLabel 3200 4150 0    60   Input ~ 0
A15
$Comp
L IS63LV1024 U3
U 1 1 57FA43DC
P 3900 3700
F 0 "U3" H 3950 3700 50  0000 C CNN
F 1 "71V124SA12YGI" H 3900 2500 50  0000 C CNN
F 2 "SMD_Packages:SOJ-32" H 3900 3700 50  0001 C CNN
F 3 "" H 3900 3700 50  0000 C CNN
F 4 "800-1459-5-ND" H 3900 3700 60  0001 C CNN "1st Distrib. PN"
F 5 "http://www.digikey.se/product-detail/en/idt-integrated-device-technology-inc/71V124SA12YG/800-1459-5-ND/1915760" H 3900 3700 60  0001 C CNN "1st Distrib. Link"
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR033
U 1 1 57FA4515
P 6950 3950
F 0 "#PWR033" H 6950 3800 50  0001 C CNN
F 1 "VCC" H 6950 4100 50  0000 C CNN
F 2 "" H 6950 3950 50  0000 C CNN
F 3 "" H 6950 3950 50  0000 C CNN
	1    6950 3950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR034
U 1 1 57FA452D
P 6650 3950
F 0 "#PWR034" H 6650 3800 50  0001 C CNN
F 1 "+3.3V" H 6650 4090 50  0000 C CNN
F 2 "" H 6650 3950 50  0000 C CNN
F 3 "" H 6650 3950 50  0000 C CNN
	1    6650 3950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 58D96905
P 6950 4350
F 0 "C3" H 6960 4420 50  0000 L CNN
F 1 "100n" H 6960 4270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6950 4350 50  0001 C CNN
F 3 "" H 6950 4350 50  0000 C CNN
	1    6950 4350
	1    0    0    -1  
$EndComp
Text Notes 7750 4400 0    60   ~ 0
71V124SA12YG = 10..140 mA (83 MHz)\nGuess linear in frequency -> 23 mA\nSN74AHC573 seems to be 4 mA\n(3.3-3.0)/27mA = 11 Ohm\n3.3^2/11 = 1.0 W
$Comp
L R_Small R19
U 1 1 58D97222
P 6800 4200
F 0 "R19" H 6830 4220 50  0000 L CNN
F 1 "22" H 6830 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 6800 4200 50  0001 C CNN
F 3 "" H 6800 4200 50  0000 C CNN
	1    6800 4200
	0    1    1    0   
$EndComp
$Comp
L R_Small R18
U 1 1 58D974AA
P 6800 4000
F 0 "R18" H 6830 4020 50  0000 L CNN
F 1 "22" H 6830 3960 50  0000 L CNN
F 2 "Resistors_SMD:R_2010" H 6800 4000 50  0001 C CNN
F 3 "" H 6800 4000 50  0000 C CNN
	1    6800 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3950 6950 4250
Wire Wire Line
	6900 4200 6950 4200
Connection ~ 6950 4200
Wire Wire Line
	6900 4000 7450 4000
Connection ~ 6950 4000
Wire Wire Line
	6650 3950 6650 4200
Wire Wire Line
	6650 4200 6700 4200
Wire Wire Line
	6700 4000 6650 4000
Connection ~ 6650 4000
$Comp
L GND #PWR035
U 1 1 58D97560
P 6950 4450
F 0 "#PWR035" H 6950 4200 50  0001 C CNN
F 1 "GND" H 6950 4300 50  0000 C CNN
F 2 "" H 6950 4450 50  0000 C CNN
F 3 "" H 6950 4450 50  0000 C CNN
	1    6950 4450
	1    0    0    -1  
$EndComp
Text GLabel 1700 3650 0    60   Input ~ 0
/EN_XMEM
Wire Wire Line
	1800 3650 1700 3650
Wire Wire Line
	1750 3650 1750 4450
Wire Wire Line
	1750 4450 3200 4450
Connection ~ 1750 3650
Text Notes 550  3950 0    60   ~ 0
/EN_XMEM purpose: try\nto save some power
$Comp
L PWR_FLAG #FLG036
U 1 1 58DB376A
P 7250 3950
F 0 "#FLG036" H 7250 4045 50  0001 C CNN
F 1 "PWR_FLAG" H 7250 4130 50  0000 C CNN
F 2 "" H 7250 3950 50  0000 C CNN
F 3 "" H 7250 3950 50  0000 C CNN
	1    7250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4000 7250 3950
$Comp
L GND #PWR037
U 1 1 58DBA48F
P 3000 4250
F 0 "#PWR037" H 3000 4000 50  0001 C CNN
F 1 "GND" H 3000 4100 50  0000 C CNN
F 2 "" H 3000 4250 50  0000 C CNN
F 3 "" H 3000 4250 50  0000 C CNN
	1    3000 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 4250 3200 4250
$Comp
L C_Small C36
U 1 1 59101F79
P 7200 4350
F 0 "C36" H 7210 4420 50  0000 L CNN
F 1 "10u" H 7210 4270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7200 4350 50  0001 C CNN
F 3 "" H 7200 4350 50  0000 C CNN
	1    7200 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 59101FB2
P 7200 4450
F 0 "#PWR038" H 7200 4200 50  0001 C CNN
F 1 "GND" H 7200 4300 50  0000 C CNN
F 2 "" H 7200 4450 50  0000 C CNN
F 3 "" H 7200 4450 50  0000 C CNN
	1    7200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4000 7200 4250
Connection ~ 7200 4000
$Comp
L C_Small C37
U 1 1 591243BB
P 7450 4350
F 0 "C37" H 7460 4420 50  0000 L CNN
F 1 "100n" H 7460 4270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7450 4350 50  0001 C CNN
F 3 "" H 7450 4350 50  0000 C CNN
	1    7450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4000 7450 4250
Connection ~ 7250 4000
$Comp
L GND #PWR039
U 1 1 59124426
P 7450 4450
F 0 "#PWR039" H 7450 4200 50  0001 C CNN
F 1 "GND" H 7450 4300 50  0000 C CNN
F 2 "" H 7450 4450 50  0000 C CNN
F 3 "" H 7450 4450 50  0000 C CNN
	1    7450 4450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
