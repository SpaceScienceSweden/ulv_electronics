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
LIBS:ulv_photovoltaic
LIBS:ulv_ti
LIBS:ulv_battery-cache
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
$Comp
L PHOTOVOLTAIC P4
U 1 1 56E6AFCC
P 3650 4500
AR Path="/56E6AFA2/56E6AFCC" Ref="P4"  Part="1" 
AR Path="/56E6B7CE/56E6AFCC" Ref="P5"  Part="1" 
AR Path="/56E6DEA5/56E6AFCC" Ref="P6"  Part="1" 
AR Path="/56E6DEAA/56E6AFCC" Ref="P7"  Part="1" 
F 0 "P4" V 3450 4500 60  0000 C CNN
F 1 "PHOTOVOLTAIC" V 3375 4500 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3650 4500 60  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" H 3650 4500 60  0001 C CNN
F 4 "JST" H 3650 4500 60  0001 C CNN "Mfg. Name"
F 5 "S2B-PH-K-S(LF)(SN)" H 3650 4500 60  0001 C CNN "Mfg. Part Number"
F 6 "455-1719-ND" H 3650 4500 60  0001 C CNN "1st Distrib. PN"
F 7 "http://www.digikey.com/product-detail/en/jst-sales-america-inc/S2B-PH-K-S(LF)(SN)/455-1719-ND/926626" H 3650 4500 60  0001 C CNN "1st Distrib. Link"
	1    3650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3350 3650 3950
Wire Wire Line
	3650 3650 3900 3650
Text HLabel 4350 3650 2    60   Output ~ 0
VSYS
Wire Wire Line
	4100 3650 4350 3650
Text HLabel 4350 3350 2    60   Output ~ 0
VPV
Wire Wire Line
	4350 3350 3650 3350
Connection ~ 3650 3650
Text HLabel 4350 4950 2    60   Input ~ 0
VNEG
Wire Wire Line
	3100 4950 4350 4950
Wire Wire Line
	3650 4950 3650 4850
$Comp
L D_Schottky_Small D5
U 1 1 56E6B119
P 4000 3650
AR Path="/56E6AFA2/56E6B119" Ref="D5"  Part="1" 
AR Path="/56E6B7CE/56E6B119" Ref="D6"  Part="1" 
AR Path="/56E6DEA5/56E6B119" Ref="D7"  Part="1" 
AR Path="/56E6DEAA/56E6B119" Ref="D8"  Part="1" 
F 0 "D5" H 3950 3730 50  0000 L CNN
F 1 "Schottky" H 3850 3550 50  0000 L CNN
F 2 "Diodes_SMD:DO-214AB_Handsoldering" V 4000 3650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1912229.pdf" V 4000 3650 50  0001 C CNN
F 4 "Vishay" H 4000 3650 60  0001 C CNN "Mfg. Name"
F 5 "VS-30BQ015TRPBF" H 4000 3650 60  0001 C CNN "Mfg. Part Number"
F 6 "9101250" H 4000 3650 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/vishay-semiconductor/vs-30bq015trpbf/diode-schottky-3a-15v/dp/9101250" H 4000 3650 60  0001 C CNN "1st Distrib. Link"
	1    4000 3650
	-1   0    0    1   
$EndComp
Text Notes 4700 5000 0    60   ~ 0
Common cathode (negative) to deployment switch
$Comp
L Led_Small D21
U 1 1 57196A01
P 3100 4300
AR Path="/56E6AFA2/57196A01" Ref="D21"  Part="1" 
AR Path="/56E6B7CE/57196A01" Ref="D22"  Part="1" 
AR Path="/56E6DEA5/57196A01" Ref="D23"  Part="1" 
AR Path="/56E6DEAA/57196A01" Ref="D24"  Part="1" 
F 0 "D21" H 3050 4425 50  0000 L CNN
F 1 "ORANGE" H 2950 4200 50  0000 L CNN
F 2 "LEDs:LED_0603" V 3100 4300 50  0001 C CNN
F 3 "" V 3100 4300 50  0000 C CNN
	1    3100 4300
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R29
U 1 1 57196A0C
P 3100 4600
AR Path="/56E6AFA2/57196A0C" Ref="R29"  Part="1" 
AR Path="/56E6B7CE/57196A0C" Ref="R30"  Part="1" 
AR Path="/56E6DEA5/57196A0C" Ref="R31"  Part="1" 
AR Path="/56E6DEAA/57196A0C" Ref="R32"  Part="1" 
F 0 "R29" H 3130 4620 50  0000 L CNN
F 1 "2k2" H 3130 4560 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3100 4600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1788326.pdf" H 3100 4600 50  0001 C CNN
F 4 "MULTICOMP" H 3100 4600 60  0001 C CNN "Mfg. Name"
F 5 "MC0063W060312K2" H 3100 4600 60  0001 C CNN "Mfg. Part Number"
F 6 "9330810" H 3100 4600 60  0001 C CNN "1st Distrib. PN"
F 7 "http://se.farnell.com/multicomp/mc0063w060312k2/motst-tjockfilm-2k2-1-0-063w-0603/dp/9330810" H 3100 4600 60  0001 C CNN "1st Distrib. Link"
	1    3100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4400 3100 4500
Wire Wire Line
	3100 4950 3100 4700
Connection ~ 3650 4950
Wire Wire Line
	3100 3700 3100 4200
Wire Wire Line
	3100 3700 3650 3700
Connection ~ 3650 3700
$Comp
L CONN_01X02 P12
U 1 1 57197754
P 4050 4000
AR Path="/56E6AFA2/57197754" Ref="P12"  Part="1" 
AR Path="/56E6B7CE/57197754" Ref="P13"  Part="1" 
AR Path="/56E6DEA5/57197754" Ref="P14"  Part="1" 
AR Path="/56E6DEAA/57197754" Ref="P15"  Part="1" 
F 0 "P12" H 4050 4150 50  0000 C CNN
F 1 "CONN_01X02" V 4150 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 4050 4000 50  0001 C CNN
F 3 "" H 4050 4000 50  0000 C CNN
	1    4050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3950 3850 3950
Wire Wire Line
	3850 4050 3650 4050
Wire Wire Line
	3650 4050 3650 4150
$EndSCHEMATC
