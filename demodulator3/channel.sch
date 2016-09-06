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
L +9V #PWR029
U 1 1 5790CC64
P 1500 2500
AR Path="/5790C9D7/5790CC64" Ref="#PWR029"  Part="1" 
AR Path="/5790D9C8/5790CC64" Ref="#PWR059"  Part="1" 
AR Path="/5790D7DB/5790CC64" Ref="#PWR044"  Part="1" 
F 0 "#PWR029" H 1500 2350 50  0001 C CNN
F 1 "+9V" H 1500 2640 50  0000 C CNN
F 2 "" H 1500 2500 50  0000 C CNN
F 3 "" H 1500 2500 50  0000 C CNN
	1    1500 2500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 5790CC6A
P 1500 2650
AR Path="/5790C9D7/5790CC6A" Ref="C7"  Part="1" 
AR Path="/5790D9C8/5790CC6A" Ref="C15"  Part="1" 
AR Path="/5790D7DB/5790CC6A" Ref="C11"  Part="1" 
F 0 "C7" H 1510 2720 50  0000 L CNN
F 1 "100n" H 1510 2570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1500 2650 50  0001 C CNN
F 3 "" H 1500 2650 50  0000 C CNN
	1    1500 2650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C9
U 1 1 5790CC71
P 1500 2950
AR Path="/5790C9D7/5790CC71" Ref="C9"  Part="1" 
AR Path="/5790D9C8/5790CC71" Ref="C17"  Part="1" 
AR Path="/5790D7DB/5790CC71" Ref="C13"  Part="1" 
F 0 "C9" H 1510 3020 50  0000 L CNN
F 1 "100n" H 1510 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1500 2950 50  0001 C CNN
F 3 "" H 1500 2950 50  0000 C CNN
	1    1500 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 5790CC78
P 1650 2800
AR Path="/5790C9D7/5790CC78" Ref="#PWR030"  Part="1" 
AR Path="/5790D9C8/5790CC78" Ref="#PWR060"  Part="1" 
AR Path="/5790D7DB/5790CC78" Ref="#PWR045"  Part="1" 
F 0 "#PWR030" H 1650 2550 50  0001 C CNN
F 1 "GND" H 1650 2650 50  0000 C CNN
F 2 "" H 1650 2800 50  0000 C CNN
F 3 "" H 1650 2800 50  0000 C CNN
	1    1650 2800
	0    -1   -1   0   
$EndComp
$Comp
L -9VA #PWR031
U 1 1 5790CC85
P 1500 3100
AR Path="/5790C9D7/5790CC85" Ref="#PWR031"  Part="1" 
AR Path="/5790D9C8/5790CC85" Ref="#PWR061"  Part="1" 
AR Path="/5790D7DB/5790CC85" Ref="#PWR046"  Part="1" 
F 0 "#PWR031" H 1500 2975 50  0001 C CNN
F 1 "-9VA" H 1500 3250 50  0000 C CNN
F 2 "" H 1500 3100 50  0000 C CNN
F 3 "" H 1500 3100 50  0000 C CNN
	1    1500 3100
	-1   0    0    1   
$EndComp
$Comp
L +9V #PWR032
U 1 1 5790CC9F
P 9500 3950
AR Path="/5790C9D7/5790CC9F" Ref="#PWR032"  Part="1" 
AR Path="/5790D9C8/5790CC9F" Ref="#PWR062"  Part="1" 
AR Path="/5790D7DB/5790CC9F" Ref="#PWR047"  Part="1" 
F 0 "#PWR032" H 9500 3800 50  0001 C CNN
F 1 "+9V" H 9500 4090 50  0000 C CNN
F 2 "" H 9500 3950 50  0000 C CNN
F 3 "" H 9500 3950 50  0000 C CNN
	1    9500 3950
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR033
U 1 1 5790CCA5
P 9500 4650
AR Path="/5790C9D7/5790CCA5" Ref="#PWR033"  Part="1" 
AR Path="/5790D9C8/5790CCA5" Ref="#PWR063"  Part="1" 
AR Path="/5790D7DB/5790CCA5" Ref="#PWR048"  Part="1" 
F 0 "#PWR033" H 9500 4525 50  0001 C CNN
F 1 "-9VA" H 9500 4800 50  0000 C CNN
F 2 "" H 9500 4650 50  0000 C CNN
F 3 "" H 9500 4650 50  0000 C CNN
	1    9500 4650
	-1   0    0    1   
$EndComp
$Comp
L R_Small R5
U 1 1 5790CCAB
P 8800 4450
AR Path="/5790C9D7/5790CCAB" Ref="R5"  Part="1" 
AR Path="/5790D9C8/5790CCAB" Ref="R9"  Part="1" 
AR Path="/5790D7DB/5790CCAB" Ref="R7"  Part="1" 
F 0 "R5" H 8830 4470 50  0000 L CNN
F 1 "100k" H 8830 4410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8800 4450 50  0001 C CNN
F 3 "" H 8800 4450 50  0000 C CNN
	1    8800 4450
	0    1    1    0   
$EndComp
$Comp
L C_Small C8
U 1 1 5790CCB2
P 8950 4600
AR Path="/5790C9D7/5790CCB2" Ref="C8"  Part="1" 
AR Path="/5790D9C8/5790CCB2" Ref="C16"  Part="1" 
AR Path="/5790D7DB/5790CCB2" Ref="C12"  Part="1" 
F 0 "C8" H 8960 4670 50  0000 L CNN
F 1 "1u" H 8960 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8950 4600 50  0001 C CNN
F 3 "" H 8950 4600 50  0000 C CNN
	1    8950 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 5790CCB9
P 8950 4700
AR Path="/5790C9D7/5790CCB9" Ref="#PWR034"  Part="1" 
AR Path="/5790D9C8/5790CCB9" Ref="#PWR064"  Part="1" 
AR Path="/5790D7DB/5790CCB9" Ref="#PWR049"  Part="1" 
F 0 "#PWR034" H 8950 4450 50  0001 C CNN
F 1 "GND" H 8950 4550 50  0000 C CNN
F 2 "" H 8950 4700 50  0000 C CNN
F 3 "" H 8950 4700 50  0000 C CNN
	1    8950 4700
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 5790CCC2
P 8500 4450
AR Path="/5790C9D7/5790CCC2" Ref="R4"  Part="1" 
AR Path="/5790D9C8/5790CCC2" Ref="R8"  Part="1" 
AR Path="/5790D7DB/5790CCC2" Ref="R6"  Part="1" 
F 0 "R4" H 8530 4470 50  0000 L CNN
F 1 "100k" H 8530 4410 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 8500 4450 50  0001 C CNN
F 3 "" H 8500 4450 50  0000 C CNN
	1    8500 4450
	0    1    1    0   
$EndComp
$Comp
L C_Small C6
U 1 1 5790CCC9
P 8800 4150
AR Path="/5790C9D7/5790CCC9" Ref="C6"  Part="1" 
AR Path="/5790D9C8/5790CCC9" Ref="C14"  Part="1" 
AR Path="/5790D7DB/5790CCC9" Ref="C10"  Part="1" 
F 0 "C6" H 8810 4220 50  0000 L CNN
F 1 "1u" H 8810 4070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8800 4150 50  0001 C CNN
F 3 "" H 8800 4150 50  0000 C CNN
	1    8800 4150
	0    1    1    0   
$EndComp
Text Notes 9250 3650 0    60   ~ 0
Low-pass\nfc = 1.6 Hz
Text HLabel 2350 4300 1    60   Input ~ 0
Xa
Text HLabel 10150 4300 2    60   Input ~ 0
DEMOD
$Comp
L LM6211MF U7
U 1 1 57A8B1A4
P 9500 4300
AR Path="/5790C9D7/57A8B1A4" Ref="U7"  Part="1" 
AR Path="/5790D7DB/57A8B1A4" Ref="U8"  Part="1" 
AR Path="/5790D9C8/57A8B1A4" Ref="U9"  Part="1" 
F 0 "U7" H 9750 4600 60  0000 C CNN
F 1 "LM6211MF" H 9750 4500 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 9500 4300 60  0001 C CNN
F 3 "" H 9500 4300 60  0000 C CNN
	1    9500 4300
	1    0    0    -1  
$EndComp
$Comp
L LM6211MF U12
U 1 1 57ACEE08
P 3700 4350
AR Path="/5790C9D7/57ACEE08" Ref="U12"  Part="1" 
AR Path="/5790D7DB/57ACEE08" Ref="U14"  Part="1" 
AR Path="/5790D9C8/57ACEE08" Ref="U16"  Part="1" 
F 0 "U12" H 3950 4650 60  0000 C CNN
F 1 "LM6211MF" H 3950 4550 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3700 4350 60  0001 C CNN
F 3 "" H 3700 4350 60  0000 C CNN
	1    3700 4350
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR035
U 1 1 57ACF252
P 3700 4000
AR Path="/5790C9D7/57ACF252" Ref="#PWR035"  Part="1" 
AR Path="/5790D7DB/57ACF252" Ref="#PWR050"  Part="1" 
AR Path="/5790D9C8/57ACF252" Ref="#PWR065"  Part="1" 
F 0 "#PWR035" H 3700 3850 50  0001 C CNN
F 1 "+9V" H 3700 4140 50  0000 C CNN
F 2 "" H 3700 4000 50  0000 C CNN
F 3 "" H 3700 4000 50  0000 C CNN
	1    3700 4000
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR036
U 1 1 57ACF278
P 3700 4700
AR Path="/5790C9D7/57ACF278" Ref="#PWR036"  Part="1" 
AR Path="/5790D7DB/57ACF278" Ref="#PWR051"  Part="1" 
AR Path="/5790D9C8/57ACF278" Ref="#PWR066"  Part="1" 
F 0 "#PWR036" H 3700 4575 50  0001 C CNN
F 1 "-9VA" H 3700 4850 50  0000 C CNN
F 2 "" H 3700 4700 50  0000 C CNN
F 3 "" H 3700 4700 50  0000 C CNN
	1    3700 4700
	-1   0    0    1   
$EndComp
$Comp
L R_Small R3
U 1 1 57BD1029
P 2850 4200
AR Path="/5790C9D7/57BD1029" Ref="R3"  Part="1" 
AR Path="/5790D7DB/57BD1029" Ref="R14"  Part="1" 
AR Path="/5790D9C8/57BD1029" Ref="R16"  Part="1" 
F 0 "R3" H 2880 4220 50  0000 L CNN
F 1 "100k" H 2880 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 2850 4200 50  0001 C CNN
F 3 "" H 2850 4200 50  0000 C CNN
	1    2850 4200
	0    1    1    0   
$EndComp
$Comp
L C_Small C26
U 1 1 57BD10A7
P 2850 4500
AR Path="/5790C9D7/57BD10A7" Ref="C26"  Part="1" 
AR Path="/5790D7DB/57BD10A7" Ref="C28"  Part="1" 
AR Path="/5790D9C8/57BD10A7" Ref="C30"  Part="1" 
F 0 "C26" H 2860 4570 50  0000 L CNN
F 1 "1u" H 2860 4420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2850 4500 50  0001 C CNN
F 3 "" H 2850 4500 50  0000 C CNN
	1    2850 4500
	0    1    1    0   
$EndComp
$Comp
L R_Small R10
U 1 1 57BD1120
P 3150 4650
AR Path="/5790C9D7/57BD1120" Ref="R10"  Part="1" 
AR Path="/5790D7DB/57BD1120" Ref="R15"  Part="1" 
AR Path="/5790D9C8/57BD1120" Ref="R17"  Part="1" 
F 0 "R10" H 3180 4670 50  0000 L CNN
F 1 "100k" H 3180 4610 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 3150 4650 50  0001 C CNN
F 3 "" H 3150 4650 50  0000 C CNN
	1    3150 4650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C24
U 1 1 57BD12C9
P 2550 4500
AR Path="/5790C9D7/57BD12C9" Ref="C24"  Part="1" 
AR Path="/5790D7DB/57BD12C9" Ref="C27"  Part="1" 
AR Path="/5790D9C8/57BD12C9" Ref="C29"  Part="1" 
F 0 "C24" H 2560 4570 50  0000 L CNN
F 1 "1u" H 2560 4420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2550 4500 50  0001 C CNN
F 3 "" H 2550 4500 50  0000 C CNN
	1    2550 4500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR037
U 1 1 57BD13F7
P 3150 4750
AR Path="/5790C9D7/57BD13F7" Ref="#PWR037"  Part="1" 
AR Path="/5790D7DB/57BD13F7" Ref="#PWR052"  Part="1" 
AR Path="/5790D9C8/57BD13F7" Ref="#PWR067"  Part="1" 
F 0 "#PWR037" H 3150 4500 50  0001 C CNN
F 1 "GND" H 3150 4600 50  0000 C CNN
F 2 "" H 3150 4750 50  0000 C CNN
F 3 "" H 3150 4750 50  0000 C CNN
	1    3150 4750
	1    0    0    -1  
$EndComp
Text Notes 3500 3650 0    60   ~ 0
High-pass\nfc = 1.6 Hz
Text HLabel 2350 4700 3    60   Input ~ 0
Xb
$Comp
L +9V #PWR038
U 1 1 57BDD741
P 1250 4400
AR Path="/5790C9D7/57BDD741" Ref="#PWR038"  Part="1" 
AR Path="/5790D7DB/57BDD741" Ref="#PWR053"  Part="1" 
AR Path="/5790D9C8/57BDD741" Ref="#PWR068"  Part="1" 
F 0 "#PWR038" H 1250 4250 50  0001 C CNN
F 1 "+9V" H 1250 4540 50  0000 C CNN
F 2 "" H 1250 4400 50  0000 C CNN
F 3 "" H 1250 4400 50  0000 C CNN
	1    1250 4400
	0    -1   -1   0   
$EndComp
$Comp
L -9VA #PWR039
U 1 1 57BDD929
P 1250 4600
AR Path="/5790C9D7/57BDD929" Ref="#PWR039"  Part="1" 
AR Path="/5790D7DB/57BDD929" Ref="#PWR054"  Part="1" 
AR Path="/5790D9C8/57BDD929" Ref="#PWR069"  Part="1" 
F 0 "#PWR039" H 1250 4475 50  0001 C CNN
F 1 "-9VA" H 1250 4750 50  0000 C CNN
F 2 "" H 1250 4600 50  0000 C CNN
F 3 "" H 1250 4600 50  0000 C CNN
	1    1250 4600
	0    -1   -1   0   
$EndComp
Text GLabel 7000 4950 3    60   Input ~ 0
BIAS
$Comp
L ADG1219 U13
U 1 1 57C5E4B1
P 1700 4450
AR Path="/5790C9D7/57C5E4B1" Ref="U13"  Part="1" 
AR Path="/5790D7DB/57C5E4B1" Ref="U15"  Part="1" 
AR Path="/5790D9C8/57C5E4B1" Ref="U17"  Part="1" 
F 0 "U13" H 1700 4850 60  0000 C CNN
F 1 "ADG1219" H 1700 4700 60  0000 C CNN
F 2 "SCUBE:SOT-23-8" H 1700 4450 60  0001 C CNN
F 3 "" H 1700 4450 60  0000 C CNN
	1    1700 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 57C5E618
P 1000 4500
AR Path="/5790C9D7/57C5E618" Ref="#PWR040"  Part="1" 
AR Path="/5790D7DB/57C5E618" Ref="#PWR055"  Part="1" 
AR Path="/5790D9C8/57C5E618" Ref="#PWR070"  Part="1" 
F 0 "#PWR040" H 1000 4250 50  0001 C CNN
F 1 "GND" H 1000 4350 50  0000 C CNN
F 2 "" H 1000 4500 50  0000 C CNN
F 3 "" H 1000 4500 50  0000 C CNN
	1    1000 4500
	0    1    1    0   
$EndComp
Text GLabel 2200 4200 1    60   Input ~ 0
CHANNEL
$Comp
L +3.3VADC #PWR041
U 1 1 57C5F52A
P 1200 4200
AR Path="/5790C9D7/57C5F52A" Ref="#PWR041"  Part="1" 
AR Path="/5790D7DB/57C5F52A" Ref="#PWR056"  Part="1" 
AR Path="/5790D9C8/57C5F52A" Ref="#PWR071"  Part="1" 
F 0 "#PWR041" H 1350 4150 50  0001 C CNN
F 1 "+3.3VADC" H 1200 4300 50  0000 C CNN
F 2 "" H 1200 4200 50  0000 C CNN
F 3 "" H 1200 4200 50  0000 C CNN
	1    1200 4200
	1    0    0    -1  
$EndComp
$Comp
L ADG1219 U?
U 1 1 57CE604F
P 6350 3900
F 0 "U?" H 6350 4300 60  0000 C CNN
F 1 "ADG1219" H 6350 4150 60  0000 C CNN
F 2 "SCUBE:SOT-23-8" H 6350 3900 60  0001 C CNN
F 3 "" H 6350 3900 60  0000 C CNN
	1    6350 3900
	0    1    1    0   
$EndComp
$Comp
L LM6211MF U?
U 1 1 57CE74C6
P 5350 4500
F 0 "U?" H 5600 4800 60  0000 C CNN
F 1 "LM6211MF" H 5600 4700 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 5350 4500 60  0001 C CNN
F 3 "" H 5350 4500 60  0000 C CNN
	1    5350 4500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 57CE751F
P 4700 4350
F 0 "R?" H 4730 4370 50  0000 L CNN
F 1 "100k" H 4730 4310 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 4700 4350 50  0001 C CNN
F 3 "" H 4700 4350 50  0000 C CNN
	1    4700 4350
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 57CE758D
P 5350 3900
F 0 "R?" H 5380 3920 50  0000 L CNN
F 1 "100k" H 5380 3860 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 5350 3900 50  0001 C CNN
F 3 "" H 5350 3900 50  0000 C CNN
	1    5350 3900
	0    -1   -1   0   
$EndComp
$Comp
L +9V #PWR?
U 1 1 57CE75E8
P 5350 4200
F 0 "#PWR?" H 5350 4050 50  0001 C CNN
F 1 "+9V" H 5350 4340 50  0000 C CNN
F 2 "" H 5350 4200 50  0000 C CNN
F 3 "" H 5350 4200 50  0000 C CNN
	1    5350 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57CE7792
P 4900 4650
F 0 "#PWR?" H 4900 4400 50  0001 C CNN
F 1 "GND" H 4900 4500 50  0000 C CNN
F 2 "" H 4900 4650 50  0000 C CNN
F 3 "" H 4900 4650 50  0000 C CNN
	1    4900 4650
	0    1    1    0   
$EndComp
$Comp
L -9VA #PWR?
U 1 1 57CE77D7
P 5350 4850
F 0 "#PWR?" H 5350 4725 50  0001 C CNN
F 1 "-9VA" H 5350 5000 50  0000 C CNN
F 2 "" H 5350 4850 50  0000 C CNN
F 3 "" H 5350 4850 50  0000 C CNN
	1    5350 4850
	-1   0    0    1   
$EndComp
$Comp
L +9V #PWR?
U 1 1 57CE7F50
P 6400 3450
F 0 "#PWR?" H 6400 3300 50  0001 C CNN
F 1 "+9V" H 6400 3590 50  0000 C CNN
F 2 "" H 6400 3450 50  0000 C CNN
F 3 "" H 6400 3450 50  0000 C CNN
	1    6400 3450
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR?
U 1 1 57CE7F56
P 6200 3450
F 0 "#PWR?" H 6200 3325 50  0001 C CNN
F 1 "-9VA" H 6200 3600 50  0000 C CNN
F 2 "" H 6200 3450 50  0000 C CNN
F 3 "" H 6200 3450 50  0000 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57CE7F5C
P 6300 3200
F 0 "#PWR?" H 6300 2950 50  0001 C CNN
F 1 "GND" H 6300 3050 50  0000 C CNN
F 2 "" H 6300 3200 50  0000 C CNN
F 3 "" H 6300 3200 50  0000 C CNN
	1    6300 3200
	-1   0    0    1   
$EndComp
$Comp
L +3.3VADC #PWR?
U 1 1 57CE7F63
P 6600 3400
F 0 "#PWR?" H 6750 3350 50  0001 C CNN
F 1 "+3.3VADC" H 6600 3500 50  0000 C CNN
F 2 "" H 6600 3400 50  0000 C CNN
F 3 "" H 6600 3400 50  0000 C CNN
	1    6600 3400
	0    1    1    0   
$EndComp
Text GLabel 6500 4600 3    60   Input ~ 0
LO
$Comp
L LM6211MF U?
U 1 1 57CE8967
P 7750 4450
F 0 "U?" H 8000 4750 60  0000 C CNN
F 1 "LM6211MF" H 8000 4650 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 7750 4450 60  0001 C CNN
F 3 "" H 7750 4450 60  0000 C CNN
	1    7750 4450
	1    0    0    -1  
$EndComp
$Comp
L R_Small R?
U 1 1 57CE8A01
P 6800 4500
F 0 "R?" H 6830 4520 50  0000 L CNN
F 1 "100k" H 6830 4460 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 6800 4500 50  0001 C CNN
F 3 "" H 6800 4500 50  0000 C CNN
	1    6800 4500
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R?
U 1 1 57CE8B56
P 7000 4800
F 0 "R?" H 7030 4820 50  0000 L CNN
F 1 "100k" H 7030 4760 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" H 7000 4800 50  0001 C CNN
F 3 "" H 7000 4800 50  0000 C CNN
	1    7000 4800
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR?
U 1 1 57CE8BB9
P 7750 4100
F 0 "#PWR?" H 7750 3950 50  0001 C CNN
F 1 "+9V" H 7750 4240 50  0000 C CNN
F 2 "" H 7750 4100 50  0000 C CNN
F 3 "" H 7750 4100 50  0000 C CNN
	1    7750 4100
	1    0    0    -1  
$EndComp
$Comp
L -9VA #PWR?
U 1 1 57CE8C03
P 7750 4800
F 0 "#PWR?" H 7750 4675 50  0001 C CNN
F 1 "-9VA" H 7750 4950 50  0000 C CNN
F 2 "" H 7750 4800 50  0000 C CNN
F 3 "" H 7750 4800 50  0000 C CNN
	1    7750 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 4350 4300 4350
Wire Wire Line
	4300 4350 4400 4350
Wire Wire Line
	4400 4350 4600 4350
Wire Wire Line
	1500 2500 1500 2550
Wire Wire Line
	1500 3050 1500 3100
Wire Wire Line
	1500 2750 1500 2800
Wire Wire Line
	1500 2800 1500 2850
Connection ~ 1500 2800
Wire Wire Line
	8900 4450 8950 4450
Wire Wire Line
	8950 4450 9050 4450
Wire Wire Line
	8950 4500 8950 4450
Connection ~ 8950 4450
Wire Wire Line
	8600 4450 8650 4450
Wire Wire Line
	8650 4450 8700 4450
Connection ~ 8650 4450
Wire Wire Line
	1500 2800 1650 2800
Wire Wire Line
	8950 3750 8950 4150
Wire Wire Line
	8900 4150 8950 4150
Wire Wire Line
	8950 4150 9050 4150
Connection ~ 10050 4300
Wire Wire Line
	9950 4300 10050 4300
Wire Wire Line
	10050 4300 10150 4300
Wire Wire Line
	8950 3750 10050 3750
Wire Wire Line
	4300 4350 4300 3750
Wire Wire Line
	4300 3750 3150 3750
Wire Wire Line
	3150 3750 3150 4200
Wire Wire Line
	2950 4200 3150 4200
Wire Wire Line
	3150 4200 3250 4200
Connection ~ 4300 4350
Wire Wire Line
	2950 4500 3150 4500
Wire Wire Line
	3150 4500 3250 4500
Wire Wire Line
	3150 4500 3150 4550
Connection ~ 3150 4200
Connection ~ 3150 4500
Wire Wire Line
	2650 4500 2700 4500
Wire Wire Line
	2700 4500 2750 4500
Wire Wire Line
	2750 4200 2700 4200
Wire Wire Line
	2700 4200 2700 4500
Connection ~ 2700 4500
Wire Wire Line
	2150 4500 2450 4500
Connection ~ 8950 4150
Wire Wire Line
	8650 4450 8650 4150
Wire Wire Line
	8650 4150 8700 4150
Wire Wire Line
	10050 3750 10050 4300
Wire Wire Line
	1000 4500 1250 4500
Wire Wire Line
	2350 4300 2350 4400
Wire Wire Line
	2350 4400 2150 4400
Wire Wire Line
	2350 4700 2350 4600
Wire Wire Line
	2350 4600 2150 4600
Wire Wire Line
	2200 4200 2200 4300
Wire Wire Line
	2200 4300 2150 4300
Wire Wire Line
	1200 4200 1200 4300
Wire Wire Line
	1200 4300 1250 4300
Wire Wire Line
	4800 4350 4850 4350
Wire Wire Line
	4850 4350 4900 4350
Wire Wire Line
	5250 3900 4850 3900
Wire Wire Line
	4850 3900 4850 4350
Connection ~ 4850 4350
Wire Wire Line
	5450 3900 5900 3900
Wire Wire Line
	5900 3900 5900 4500
Wire Wire Line
	5800 4500 5900 4500
Wire Wire Line
	5900 4500 6200 4500
Wire Wire Line
	6200 4500 6200 4350
Connection ~ 5900 4500
Wire Wire Line
	6400 4350 6400 5200
Wire Wire Line
	6400 5200 4400 5200
Wire Wire Line
	4400 5200 4400 4350
Connection ~ 4400 4350
Wire Wire Line
	6300 4350 6300 4500
Wire Wire Line
	6300 3200 6300 3450
Wire Wire Line
	6600 3400 6500 3400
Wire Wire Line
	6500 3400 6500 3450
Wire Wire Line
	6500 4600 6500 4350
Wire Wire Line
	8200 4450 8300 4450
Wire Wire Line
	8300 4450 8400 4450
Wire Wire Line
	6300 4500 6700 4500
Wire Wire Line
	8300 4450 8300 3850
Wire Wire Line
	8300 3850 7200 3850
Wire Wire Line
	7200 3850 7200 4300
Wire Wire Line
	7200 4300 7300 4300
Connection ~ 8300 4450
Wire Wire Line
	7000 4950 7000 4900
Wire Wire Line
	7000 4500 7000 4600
Wire Wire Line
	7000 4600 7000 4700
Connection ~ 7000 4600
Wire Wire Line
	6900 4500 7000 4500
Text Notes 7100 3650 0    60   ~ 0
Bias toward BIAS, then buffer
Wire Wire Line
	7300 4600 7000 4600
Text Notes 6100 2950 0    60   ~ 0
Demodulator
Text Notes 5050 3650 0    60   ~ 0
Voltage negater
$EndSCHEMATC
