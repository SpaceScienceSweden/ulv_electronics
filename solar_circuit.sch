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
F 2 "JST:JST-PH-02" H 3650 4500 60  0001 C CNN
F 3 "" H 3650 4500 60  0000 C CNN
	1    3650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3700 3650 4150
Wire Wire Line
	3650 4000 3900 4000
Text HLabel 4350 4000 2    60   Output ~ 0
VSYS
Wire Wire Line
	4100 4000 4350 4000
Text HLabel 4350 3700 2    60   Output ~ 0
VPV
Wire Wire Line
	4350 3700 3650 3700
Connection ~ 3650 4000
Text HLabel 4350 4950 2    60   Input ~ 0
VNEG
Wire Wire Line
	4350 4950 3650 4950
Wire Wire Line
	3650 4950 3650 4850
$Comp
L D_Schottky_Small D5
U 1 1 56E6B119
P 4000 4000
AR Path="/56E6AFA2/56E6B119" Ref="D5"  Part="1" 
AR Path="/56E6B7CE/56E6B119" Ref="D6"  Part="1" 
AR Path="/56E6DEA5/56E6B119" Ref="D7"  Part="1" 
AR Path="/56E6DEAA/56E6B119" Ref="D8"  Part="1" 
F 0 "D5" H 3950 4080 50  0000 L CNN
F 1 "Schottky" H 3850 3900 50  0000 L CNN
F 2 "Diodes_SMD:SMA_Standard" V 4000 4000 50  0001 C CNN
F 3 "" V 4000 4000 50  0000 C CNN
	1    4000 4000
	-1   0    0    1   
$EndComp
Text Notes 4700 5000 0    60   ~ 0
Common cathode (negative) to deployment switch
$EndSCHEMATC
