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
LIBS:cpu-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
SRAM manufacturers carried by both Elfa and Farnell:\nBSI, Lyontek, Renesas, IDT, ISSI\nFurthermore, Atmel makes rad-hard 128k x 8 SRAM\nThe 512k chips from Lyontek, Renesas and ISSI are all pin compatible\nOnly Renesas is 3.3V\nThe ATmega128 datasheet also says to use an AHC type 573
$Comp
L HM628512BFP-5 U3
U 1 1 57F80069
P 3700 3550
F 0 "U3" H 3400 4600 50  0000 C CNN
F 1 "R1LV0408CSP-7L" H 3700 2500 50  0000 C CNN
F 2 "" H 3700 3550 50  0001 C CIN
F 3 "" H 3700 3550 50  0000 C CNN
	1    3700 3550
	1    0    0    -1  
$EndComp
Text GLabel 4200 3500 2    60   Input ~ 0
/RD
Text GLabel 4200 3600 2    60   Input ~ 0
/WR
$Comp
L 74LS573 U2
U 1 1 57F80533
P 2500 3150
F 0 "U2" H 2650 3750 50  0000 C CNN
F 1 "SN74AHC573" H 2500 2550 50  0000 C CNN
F 2 "" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0000 C CNN
F 4 "300-22-908" H 2500 3150 60  0001 C CNN "1st Distrib. PN"
F 5 "https://www.elfa.se/sv/logikkrets-so-20-sn74ahc573-texas-instruments-sn74ahc573dw/p/30022908?q=74AHC573&page=1&origPos=1&origPageSize=50&simi=93.13" H 2500 3150 60  0001 C CNN "1st Distrib. Link"
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
$Comp
L GND #PWR023
U 1 1 57F80B40
P 1750 3700
F 0 "#PWR023" H 1750 3450 50  0001 C CNN
F 1 "GND" H 1750 3550 50  0000 C CNN
F 2 "" H 1750 3700 50  0000 C CNN
F 3 "" H 1750 3700 50  0000 C CNN
	1    1750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3700 1750 3650
Wire Wire Line
	1750 3650 1800 3650
Text GLabel 4200 2650 2    60   Input ~ 0
AD0
Text GLabel 4200 2750 2    60   Input ~ 0
AD1
Text GLabel 4200 2850 2    60   Input ~ 0
AD2
Text GLabel 4200 2950 2    60   Input ~ 0
AD3
Text GLabel 4200 3050 2    60   Input ~ 0
AD4
Text GLabel 4200 3150 2    60   Input ~ 0
AD5
Text GLabel 4200 3250 2    60   Input ~ 0
AD6
Text GLabel 4200 3350 2    60   Input ~ 0
AD7
$Comp
L GND #PWR024
U 1 1 57F80F06
P 4250 3800
F 0 "#PWR024" H 4250 3550 50  0001 C CNN
F 1 "GND" H 4250 3650 50  0000 C CNN
F 2 "" H 4250 3800 50  0000 C CNN
F 3 "" H 4250 3800 50  0000 C CNN
	1    4250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3800 4250 3750
Wire Wire Line
	4250 3750 4200 3750
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
Text Notes 5850 2000 0    60   ~ 0
TODO: add Atmel's rad-hard memory as an option
$EndSCHEMATC
