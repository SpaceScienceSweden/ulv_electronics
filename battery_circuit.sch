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
LIBS:pc104
LIBS:ulv_photovoltaic
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
L Battery BT1
U 1 1 56E5C3BE
P 2400 4550
AR Path="/56E5DF65/56E5C3BE" Ref="BT1"  Part="1" 
AR Path="/56E5E7C1/56E5C3BE" Ref="BT2"  Part="1" 
AR Path="/56E5E9EC/56E5C3BE" Ref="BT3"  Part="1" 
AR Path="/56E5EE46/56E5C3BE" Ref="BT4"  Part="1" 
F 0 "BT3" H 2500 4600 50  0000 L CNN
F 1 "Battery" H 2500 4500 50  0000 L CNN
F 2 "JST:JST-PH-02" V 2400 4590 50  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" V 2400 4590 50  0001 C CNN
F 4 "JST" H 2400 4550 60  0001 C CNN "Mfg. Name"
F 5 "455-1719-ND" H 2400 4550 60  0001 C CNN "Mfg. Part Number"
F 6 "S2B-PH-K-S(LF)(SN)" H 2400 4550 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 2400 4550 60  0001 C CNN "1st Distrib. Link"
	1    2400 4550
	1    0    0    -1  
$EndComp
Text HLabel 3000 4000 2    60   BiDi ~ 0
VBAT
$Comp
L GND #PWR06
U 1 1 56E5E3D0
P 2400 4700
AR Path="/56E5DF65/56E5E3D0" Ref="#PWR06"  Part="1" 
AR Path="/56E5E7C1/56E5E3D0" Ref="#PWR07"  Part="1" 
AR Path="/56E5E9EC/56E5E3D0" Ref="#PWR08"  Part="1" 
AR Path="/56E5EE46/56E5E3D0" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 2400 4450 50  0001 C CNN
F 1 "GND" H 2400 4550 50  0000 C CNN
F 2 "" H 2400 4700 50  0000 C CNN
F 3 "" H 2400 4700 50  0000 C CNN
	1    2400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4000 2400 4400
Wire Wire Line
	2400 4000 3000 4000
$Comp
L D_Schottky_Small D1
U 1 1 56E5EF28
P 2700 4250
AR Path="/56E5DF65/56E5EF28" Ref="D1"  Part="1" 
AR Path="/56E5E7C1/56E5EF28" Ref="D2"  Part="1" 
AR Path="/56E5E9EC/56E5EF28" Ref="D3"  Part="1" 
AR Path="/56E5EE46/56E5EF28" Ref="D4"  Part="1" 
F 0 "D3" H 2650 4330 50  0000 L CNN
F 1 "Schottky" H 2700 4150 50  0000 C CNN
F 2 "Diodes_SMD:SMA_Standard" V 2700 4250 50  0001 C CNN
F 3 "" V 2700 4250 50  0000 C CNN
	1    2700 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 4250 2400 4250
Connection ~ 2400 4250
Text HLabel 3000 4250 2    60   Output ~ 0
VSYS
Wire Wire Line
	3000 4250 2800 4250
$EndSCHEMATC
