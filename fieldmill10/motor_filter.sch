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
LIBS:fieldmill10-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L +24V #PWR068
U 1 1 5AA668CF
P 4500 3050
F 0 "#PWR068" H 4500 2900 50  0001 C CNN
F 1 "+24V" H 4500 3190 50  0000 C CNN
F 2 "" H 4500 3050 50  0000 C CNN
F 3 "" H 4500 3050 50  0000 C CNN
	1    4500 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR069
U 1 1 5AA668D5
P 7800 3350
F 0 "#PWR069" H 7800 3100 50  0001 C CNN
F 1 "GND" H 7800 3200 50  0000 C CNN
F 2 "" H 7800 3350 50  0000 C CNN
F 3 "" H 7800 3350 50  0000 C CNN
	1    7800 3350
	0    1    1    0   
$EndComp
$Comp
L CONN_01X05 P11
U 1 1 5AA668E1
P 8350 3250
F 0 "P11" H 8350 3550 50  0000 C CNN
F 1 "CONN_01X05" V 8450 3250 50  0000 C CNN
F 2 "SCUBE:MOTOR_SMD" H 8350 3250 50  0001 C CNN
F 3 "" H 8350 3250 50  0000 C CNN
	1    8350 3250
	1    0    0    -1  
$EndComp
Text Notes 7800 3450 0    60   ~ 0
Enable\nMonitor\nSpeed\nGND\n+24V
NoConn ~ 8150 3150
$Comp
L C_Small C50
U 1 1 5AA668EA
P 3000 3600
F 0 "C50" H 3010 3670 50  0000 L CNN
F 1 "10u35V" H 3010 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3000 3600 50  0001 C CNN
F 3 "" H 3000 3600 50  0000 C CNN
F 4 "TDK" H 3000 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 3000 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 3000 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 3000 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 3000 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 3000 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 3000 3600 60  0001 C CNN "Digikey Link"
	1    3000 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR070
U 1 1 5AA668F1
P 4500 3700
F 0 "#PWR070" H 4500 3450 50  0001 C CNN
F 1 "GND" H 4500 3550 50  0000 C CNN
F 2 "" H 4500 3700 50  0000 C CNN
F 3 "" H 4500 3700 50  0000 C CNN
	1    4500 3700
	1    0    0    -1  
$EndComp
Connection ~ 7600 3450
Wire Wire Line
	7600 3450 7600 3050
Wire Wire Line
	7600 3050 8150 3050
Wire Wire Line
	7800 3350 8150 3350
Wire Wire Line
	5650 3450 8150 3450
Wire Wire Line
	7250 3250 8150 3250
Text HLabel 7250 3250 0    60   Input ~ 0
PWM
$Comp
L L L13
U 1 1 5AA69BBF
P 4800 3450
F 0 "L13" V 4750 3450 50  0000 C CNN
F 1 "3.3 mH" V 4875 3450 50  0000 C CNN
F 2 "SCUBE:Wurth_7687709332" H 4800 3450 50  0001 C CNN
F 3 "" H 4800 3450 50  0000 C CNN
	1    4800 3450
	0    -1   -1   0   
$EndComp
$Comp
L L L14
U 1 1 5AA69BFE
P 5150 3450
F 0 "L14" V 5100 3450 50  0000 C CNN
F 1 "3.3 mH" V 5225 3450 50  0000 C CNN
F 2 "SCUBE:Wurth_7687709332" H 5150 3450 50  0001 C CNN
F 3 "" H 5150 3450 50  0000 C CNN
	1    5150 3450
	0    -1   -1   0   
$EndComp
$Comp
L L L15
U 1 1 5AA69C64
P 5500 3450
F 0 "L15" V 5450 3450 50  0000 C CNN
F 1 "3.3 mH" V 5575 3450 50  0000 C CNN
F 2 "SCUBE:Wurth_7687709332" H 5500 3450 50  0001 C CNN
F 3 "" H 5500 3450 50  0000 C CNN
	1    5500 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 3450 5000 3450
Wire Wire Line
	5300 3450 5350 3450
Wire Wire Line
	3000 3450 4650 3450
Wire Wire Line
	4500 3050 4500 3500
Connection ~ 4500 3450
$Comp
L R R39
U 1 1 5AA6A5CE
P 5150 3200
F 0 "R39" V 5230 3200 50  0000 C CNN
F 1 "0" V 5150 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5080 3200 50  0001 C CNN
F 3 "" H 5150 3200 50  0000 C CNN
	1    5150 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 3500 5700 3450
Connection ~ 5700 3450
Wire Wire Line
	6000 3500 6000 3450
Connection ~ 6000 3450
Wire Wire Line
	6300 3500 6300 3450
Connection ~ 6300 3450
Wire Wire Line
	6600 3500 6600 3450
Connection ~ 6600 3450
Wire Wire Line
	6900 3500 6900 3450
Connection ~ 6900 3450
Wire Wire Line
	7200 3500 7200 3450
Connection ~ 7200 3450
Wire Wire Line
	3000 3450 3000 3500
Wire Wire Line
	3300 3500 3300 3450
Connection ~ 3300 3450
Wire Wire Line
	3600 3500 3600 3450
Connection ~ 3600 3450
Wire Wire Line
	3900 3450 3900 3500
Connection ~ 3900 3450
Wire Wire Line
	4200 3500 4200 3450
Connection ~ 4200 3450
$Comp
L GND #PWR071
U 1 1 5AA6A932
P 4200 3700
F 0 "#PWR071" H 4200 3450 50  0001 C CNN
F 1 "GND" H 4200 3550 50  0000 C CNN
F 2 "" H 4200 3700 50  0000 C CNN
F 3 "" H 4200 3700 50  0000 C CNN
	1    4200 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR072
U 1 1 5AA6A970
P 3900 3700
F 0 "#PWR072" H 3900 3450 50  0001 C CNN
F 1 "GND" H 3900 3550 50  0000 C CNN
F 2 "" H 3900 3700 50  0000 C CNN
F 3 "" H 3900 3700 50  0000 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR073
U 1 1 5AA6A9AE
P 3600 3700
F 0 "#PWR073" H 3600 3450 50  0001 C CNN
F 1 "GND" H 3600 3550 50  0000 C CNN
F 2 "" H 3600 3700 50  0000 C CNN
F 3 "" H 3600 3700 50  0000 C CNN
	1    3600 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR074
U 1 1 5AA6A9EC
P 3300 3700
F 0 "#PWR074" H 3300 3450 50  0001 C CNN
F 1 "GND" H 3300 3550 50  0000 C CNN
F 2 "" H 3300 3700 50  0000 C CNN
F 3 "" H 3300 3700 50  0000 C CNN
	1    3300 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR075
U 1 1 5AA6AA2A
P 3000 3700
F 0 "#PWR075" H 3000 3450 50  0001 C CNN
F 1 "GND" H 3000 3550 50  0000 C CNN
F 2 "" H 3000 3700 50  0000 C CNN
F 3 "" H 3000 3700 50  0000 C CNN
	1    3000 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR076
U 1 1 5AA6AA68
P 5700 3700
F 0 "#PWR076" H 5700 3450 50  0001 C CNN
F 1 "GND" H 5700 3550 50  0000 C CNN
F 2 "" H 5700 3700 50  0000 C CNN
F 3 "" H 5700 3700 50  0000 C CNN
	1    5700 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR077
U 1 1 5AA6AAEA
P 6000 3700
F 0 "#PWR077" H 6000 3450 50  0001 C CNN
F 1 "GND" H 6000 3550 50  0000 C CNN
F 2 "" H 6000 3700 50  0000 C CNN
F 3 "" H 6000 3700 50  0000 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR078
U 1 1 5AA6AB28
P 6300 3700
F 0 "#PWR078" H 6300 3450 50  0001 C CNN
F 1 "GND" H 6300 3550 50  0000 C CNN
F 2 "" H 6300 3700 50  0000 C CNN
F 3 "" H 6300 3700 50  0000 C CNN
	1    6300 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR079
U 1 1 5AA6AB66
P 6600 3700
F 0 "#PWR079" H 6600 3450 50  0001 C CNN
F 1 "GND" H 6600 3550 50  0000 C CNN
F 2 "" H 6600 3700 50  0000 C CNN
F 3 "" H 6600 3700 50  0000 C CNN
	1    6600 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR080
U 1 1 5AA6ABA4
P 6900 3700
F 0 "#PWR080" H 6900 3450 50  0001 C CNN
F 1 "GND" H 6900 3550 50  0000 C CNN
F 2 "" H 6900 3700 50  0000 C CNN
F 3 "" H 6900 3700 50  0000 C CNN
	1    6900 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR081
U 1 1 5AA6ABE2
P 7200 3700
F 0 "#PWR081" H 7200 3450 50  0001 C CNN
F 1 "GND" H 7200 3550 50  0000 C CNN
F 2 "" H 7200 3700 50  0000 C CNN
F 3 "" H 7200 3700 50  0000 C CNN
	1    7200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3200 4500 3200
Connection ~ 4500 3200
Wire Wire Line
	5300 3200 5850 3200
Wire Wire Line
	5850 3200 5850 3450
Connection ~ 5850 3450
Text Notes 4300 4350 0    60   ~ 0
fc = 1/(2*pi*sqrt(60µF*10mH)) = 200 Hz
Text Notes 1250 4200 0    60   ~ 0
Cannot have more than 120 µF on this side due to 24V DC/DC\nonly able to drive 375 µF and we have three FMs
Text Notes 5700 4050 0    60   ~ 0
We can have as much capacitance as we can fit on this side
$Comp
L C_Small C33
U 1 1 5AA851D2
P 3300 3600
F 0 "C33" H 3310 3670 50  0000 L CNN
F 1 "10u35V" H 3310 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3300 3600 50  0001 C CNN
F 3 "" H 3300 3600 50  0000 C CNN
F 4 "TDK" H 3300 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 3300 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 3300 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 3300 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 3300 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 3300 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 3300 3600 60  0001 C CNN "Digikey Link"
	1    3300 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C35
U 1 1 5AA8520D
P 3600 3600
F 0 "C35" H 3610 3670 50  0000 L CNN
F 1 "10u35V" H 3610 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3600 3600 50  0001 C CNN
F 3 "" H 3600 3600 50  0000 C CNN
F 4 "TDK" H 3600 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 3600 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 3600 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 3600 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 3600 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 3600 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 3600 3600 60  0001 C CNN "Digikey Link"
	1    3600 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C37
U 1 1 5AA8524B
P 3900 3600
F 0 "C37" H 3910 3670 50  0000 L CNN
F 1 "10u35V" H 3910 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3900 3600 50  0001 C CNN
F 3 "" H 3900 3600 50  0000 C CNN
F 4 "TDK" H 3900 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 3900 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 3900 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 3900 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 3900 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 3900 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 3900 3600 60  0001 C CNN "Digikey Link"
	1    3900 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C39
U 1 1 5AA85294
P 4200 3600
F 0 "C39" H 4210 3670 50  0000 L CNN
F 1 "10u35V" H 4210 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4200 3600 50  0001 C CNN
F 3 "" H 4200 3600 50  0000 C CNN
F 4 "TDK" H 4200 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 4200 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 4200 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 4200 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 4200 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 4200 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 4200 3600 60  0001 C CNN "Digikey Link"
	1    4200 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C40
U 1 1 5AA852D8
P 4500 3600
F 0 "C40" H 4510 3670 50  0000 L CNN
F 1 "10u35V" H 4510 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4500 3600 50  0001 C CNN
F 3 "" H 4500 3600 50  0000 C CNN
F 4 "TDK" H 4500 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 4500 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 4500 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 4500 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 4500 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 4500 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 4500 3600 60  0001 C CNN "Digikey Link"
	1    4500 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C43
U 1 1 5AA85533
P 5700 3600
F 0 "C43" H 5710 3670 50  0000 L CNN
F 1 "10u35V" H 5710 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5700 3600 50  0001 C CNN
F 3 "" H 5700 3600 50  0000 C CNN
F 4 "TDK" H 5700 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 5700 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 5700 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 5700 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 5700 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 5700 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 5700 3600 60  0001 C CNN "Digikey Link"
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C46
U 1 1 5AA85540
P 6000 3600
F 0 "C46" H 6010 3670 50  0000 L CNN
F 1 "10u35V" H 6010 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6000 3600 50  0001 C CNN
F 3 "" H 6000 3600 50  0000 C CNN
F 4 "TDK" H 6000 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 6000 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 6000 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 6000 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 6000 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 6000 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 6000 3600 60  0001 C CNN "Digikey Link"
	1    6000 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C48
U 1 1 5AA8554D
P 6300 3600
F 0 "C48" H 6310 3670 50  0000 L CNN
F 1 "10u35V" H 6310 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6300 3600 50  0001 C CNN
F 3 "" H 6300 3600 50  0000 C CNN
F 4 "TDK" H 6300 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 6300 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 6300 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 6300 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 6300 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 6300 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 6300 3600 60  0001 C CNN "Digikey Link"
	1    6300 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C49
U 1 1 5AA8555A
P 6600 3600
F 0 "C49" H 6610 3670 50  0000 L CNN
F 1 "10u35V" H 6610 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6600 3600 50  0001 C CNN
F 3 "" H 6600 3600 50  0000 C CNN
F 4 "TDK" H 6600 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 6600 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 6600 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 6600 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 6600 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 6600 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 6600 3600 60  0001 C CNN "Digikey Link"
	1    6600 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C51
U 1 1 5AA85567
P 6900 3600
F 0 "C51" H 6910 3670 50  0000 L CNN
F 1 "10u35V" H 6910 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6900 3600 50  0001 C CNN
F 3 "" H 6900 3600 50  0000 C CNN
F 4 "TDK" H 6900 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 6900 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 6900 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 6900 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 6900 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 6900 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 6900 3600 60  0001 C CNN "Digikey Link"
	1    6900 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C55
U 1 1 5AA85574
P 7200 3600
F 0 "C55" H 7210 3670 50  0000 L CNN
F 1 "10u35V" H 7210 3520 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7200 3600 50  0001 C CNN
F 3 "" H 7200 3600 50  0000 C CNN
F 4 "TDK" H 7200 3600 60  0001 C CNN "Mfg. Name"
F 5 "CGA5L1X7R1V106K160AE" H 7200 3600 60  0001 C CNN "Mfg. Part Number"
F 6 "2547055" H 7200 3600 60  0001 C CNN "Farnell PN"
F 7 "https://se.farnell.com/tdk/cga5l1x7r1v106k160ae/kond-aec-q200-x7r-10-f-35v-1206/dp/2547055" H 7200 3600 60  0001 C CNN "Farnell Link"
F 8 "810-CGA5L1X7R1V106KE" H 7200 3600 60  0001 C CNN "Mouser PN"
F 9 "445-172483-1-ND" H 7200 3600 60  0001 C CNN "Digikey PN"
F 10 "https://www.digikey.se/product-detail/en/tdk-corporation/CGA5L1X7R1V106K160AE/445-172483-1-ND/4990025" H 7200 3600 60  0001 C CNN "Digikey Link"
	1    7200 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC