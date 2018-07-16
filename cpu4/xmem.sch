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
LIBS:cpu4-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "cpu4"
Date "2018-07-11"
Rev "rev1"
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
F 4 "Texas Instruments" H 2500 3150 60  0001 C CNN "Mfg. Name"
F 5 "SN74AHC573DW" H 2500 3150 60  0001 C CNN "Mfg. Part Number"
F 6 "300-22-908" H 2500 3150 60  0001 C CNN "Elfa PN"
F 7 "https://www.elfa.se/sv/logikkrets-so-20-sn74ahc573-texas-instruments-sn74ahc573dw/p/30022908" H 2500 3150 60  0001 C CNN "Elfa Link"
F 8 "1287471" H 2500 3150 60  0001 C CNN "Farnell PN"
F 9 "https://se.farnell.com/texas-instruments/sn74ahc573dw/latch-d-type-octal-smd-soic20/dp/1287471" H 2500 3150 60  0001 C CNN "Farnell Link"
F 10 "595-SN74AHC573DW" H 2500 3150 60  0001 C CNN "Mouser PN"
F 11 "296-4612-5-ND" H 2500 3150 60  0001 C CNN "Digikey PN"
F 12 "https://www.digikey.se/product-detail/en/texas-instruments/SN74AHC573DW/296-4612-5-ND/375821" H 2500 3150 60  0001 C CNN "Digikey Link"
F 13 "-40" H 2500 3150 60  0001 C CNN "Min temp"
F 14 "85" H 2500 3150 60  0001 C CNN "Max temp"
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
F 4 "972-71V124SA12YGI" H 3900 3700 60  0001 C CNN "Mouser PN"
F 5 "800-1460-5-ND" H 3900 3700 60  0001 C CNN "Digikey PN"
F 6 "https://www.digikey.se/product-detail/en/idt-integrated-device-technology-inc/71V124SA12YGI/800-1460-5-ND/1915761" H 3900 3700 60  0001 C CNN "Digikey Link"
F 7 "-40" H 3900 3700 60  0001 C CNN "Min temp"
F 8 "85" H 3900 3700 60  0001 C CNN "Max temp"
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR027
U 1 1 57FA4515
P 6950 3950
F 0 "#PWR027" H 6950 3800 50  0001 C CNN
F 1 "VCC" H 6950 4100 50  0000 C CNN
F 2 "" H 6950 3950 50  0000 C CNN
F 3 "" H 6950 3950 50  0000 C CNN
	1    6950 3950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR028
U 1 1 57FA452D
P 6650 3950
F 0 "#PWR028" H 6650 3800 50  0001 C CNN
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
Wire Wire Line
	6950 3950 6950 4250
Connection ~ 6950 4200
Wire Wire Line
	6650 3950 6650 4200
$Comp
L GND #PWR029
U 1 1 58D97560
P 6950 4450
F 0 "#PWR029" H 6950 4200 50  0001 C CNN
F 1 "GND" H 6950 4300 50  0000 C CNN
F 2 "" H 6950 4450 50  0000 C CNN
F 3 "" H 6950 4450 50  0000 C CNN
	1    6950 4450
	1    0    0    -1  
$EndComp
Text GLabel 1200 4100 0    60   Input ~ 0
PG3
Wire Wire Line
	1750 3650 1750 4450
Wire Wire Line
	1750 4450 3200 4450
Wire Wire Line
	1550 4250 3200 4250
Text Notes 6500 3600 0    60   ~ 0
Power use: 3 mA @ 24V (77 mW)
$Comp
L R_Small R11
U 1 1 5AFDD8A9
P 1450 4250
F 0 "R11" H 1480 4270 50  0000 L CNN
F 1 "0" H 1480 4210 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 1450 4250 50  0001 C CNN
F 3 "" H 1450 4250 50  0000 C CNN
	1    1450 4250
	0    1    1    0   
$EndComp
$Comp
L R_Small R9
U 1 1 5AFDD993
P 1450 3950
F 0 "R9" H 1480 3970 50  0000 L CNN
F 1 "0" H 1480 3910 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 1450 3950 50  0001 C CNN
F 3 "" H 1450 3950 50  0000 C CNN
F 4 "dnf" V 1450 3950 60  0000 C CNN "fit_field"
	1    1450 3950
	0    1    1    0   
$EndComp
$Comp
L R_Small R18
U 1 1 5AFDDB2A
P 1600 4600
F 0 "R18" H 1630 4620 50  0000 L CNN
F 1 "0" H 1630 4560 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 1600 4600 50  0001 C CNN
F 3 "" H 1600 4600 50  0000 C CNN
F 4 "dnf" V 1600 4600 60  0000 C CNN "fit_field"
	1    1600 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 4500 1600 4250
Connection ~ 1600 4250
$Comp
L GND #PWR030
U 1 1 5AFDDB8F
P 1600 4700
F 0 "#PWR030" H 1600 4450 50  0001 C CNN
F 1 "GND" H 1600 4550 50  0000 C CNN
F 2 "" H 1600 4700 50  0000 C CNN
F 3 "" H 1600 4700 50  0000 C CNN
	1    1600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3650 1750 3650
Wire Wire Line
	1550 3950 1750 3950
Connection ~ 1750 3950
Wire Wire Line
	1350 3950 1300 3950
Wire Wire Line
	1300 3950 1300 4250
Wire Wire Line
	1300 4250 1350 4250
Wire Wire Line
	1200 4100 1300 4100
Connection ~ 1300 4100
Text Notes 700  5300 0    60   ~ 0
PG3 can be used for either:\nBankswitching (fit R11) or\nEnabling/disabling XMEM, saving some power (fit R9 and R18)
$Comp
L R_Small R54
U 1 1 5AFE0EC8
P 1850 4600
F 0 "R54" H 1880 4620 50  0000 L CNN
F 1 "0" H 1880 4560 50  0000 L CNN
F 2 "Resistors_SMD:R_1206" H 1850 4600 50  0001 C CNN
F 3 "" H 1850 4600 50  0000 C CNN
	1    1850 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 4450 1850 4500
Connection ~ 1850 4450
$Comp
L GND #PWR031
U 1 1 5AFE0F52
P 1850 4700
F 0 "#PWR031" H 1850 4450 50  0001 C CNN
F 1 "GND" H 1850 4550 50  0000 C CNN
F 2 "" H 1850 4700 50  0000 C CNN
F 3 "" H 1850 4700 50  0000 C CNN
	1    1850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4200 6950 4200
$EndSCHEMATC
