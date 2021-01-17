EESchema Schematic File Version 4
LIBS:BMSBoard-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Vehicle Power Management Board"
Date "2020-12-05"
Rev "4.1"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 "Connections for CAN, Power, Ground. Quick connect ground to chassis."
Comment4 "MOSFETs to control BMS charge power, GLV charge power and pump."
$EndDescr
Text Notes 6300 6600 0    50   ~ 0
>Battery --> GLVMS --> GLV_PreBRB --> BRB1 --> BRB2 --> Fusebox --> GLV_BMSContainer\n
Text Notes 5200 4600 0    50   Italic 0
> If 12v is present on GLV and car is not charging, \npower is connected to Pump_PWR.\n\n> If 12v is present on GLV and car is charging, \npower is not connected to Pump_PWR.\n\n> If 12v is not present on GLV (BRB's pressed),\npower is not connected to Pump_PWR.
Text Notes 7500 4450 0    50   ~ 0
> If 12v is present on GLV (not in shutdown), \npower from charger is connected to PWR_Charge.\n^(power here may or may not be present)\n\n> If 12v is not present on GLV (shutdown),\npower from charger is not connected to PWR_Charge.
Text Notes 3150 4450 0    50   ~ 0
> If car is charging, GLV_PreBRB\n will be driven by ChargerSupply12V\n\n> If car is not charging, GLV_PreBRB \nwill be disconnected from the \ncharger supply
$Comp
L power:GND #PWR04
U 1 1 5FCA9C4C
P 2050 1900
F 0 "#PWR04" H 2050 1650 50  0001 C CNN
F 1 "GND" H 2055 1727 50  0000 C CNN
F 2 "" H 2050 1900 50  0001 C CNN
F 3 "" H 2050 1900 50  0001 C CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2400 1950 2400
$Comp
L power:GND #PWR05
U 1 1 5FCC4D73
P 2050 2550
F 0 "#PWR05" H 2050 2300 50  0001 C CNN
F 1 "GND" H 2055 2377 50  0000 C CNN
F 2 "" H 2050 2550 50  0001 C CNN
F 3 "" H 2050 2550 50  0001 C CNN
	1    2050 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 2400 2050 2550
Text Notes 2100 1650 0    50   ~ 0
GLV_BMSContainer\n
Text Notes 2100 1550 0    50   ~ 0
ChargerSupply12V
Text Notes 2100 3650 0    50   ~ 0
Pump_PWR\n
Text Notes 2100 3550 0    50   ~ 0
GLV_PreBRB\n
Wire Wire Line
	2050 1750 2050 1900
Connection ~ 4000 3550
Connection ~ 4000 1550
Wire Wire Line
	8250 1650 9400 1650
Wire Wire Line
	8950 1750 9400 1750
Wire Wire Line
	8950 1900 8950 1750
Connection ~ 8250 1650
Text Notes 9350 1650 2    50   ~ 0
ThermEXIn12V
$Comp
L power:GND #PWR07
U 1 1 5FD5EF12
P 8950 1900
F 0 "#PWR07" H 8950 1650 50  0001 C CNN
F 1 "GND" H 8955 1727 50  0000 C CNN
F 2 "" H 8950 1900 50  0001 C CNN
F 3 "" H 8950 1900 50  0001 C CNN
	1    8950 1900
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5FC6E9A5
P 9600 1650
F 0 "J6" H 9492 1325 50  0000 C CNN
F 1 "Therm_PWR" H 9500 1400 50  0000 C CNN
F 2 "" H 9600 1650 50  0001 C CNN
F 3 "~" H 9600 1650 50  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5FBD5D22
P 1450 6050
F 0 "J2" H 1342 5625 50  0000 C CNN
F 1 "GLV_Signal" H 1342 5716 50  0000 C CNN
F 2 "" H 1450 6050 50  0001 C CNN
F 3 "~" H 1450 6050 50  0001 C CNN
	1    1450 6050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5FC1125D
P 1450 5400
F 0 "J4" H 1342 4975 50  0000 C CNN
F 1 "Charge_Signal" H 1342 5066 50  0000 C CNN
F 2 "" H 1450 5400 50  0001 C CNN
F 3 "~" H 1450 5400 50  0001 C CNN
	1    1450 5400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 5FC7CBDE
P 1450 6700
F 0 "J7" H 1342 6275 50  0000 C CNN
F 1 "Therm_Signal" H 1342 6366 50  0000 C CNN
F 2 "" H 1450 6700 50  0001 C CNN
F 3 "~" H 1450 6700 50  0001 C CNN
	1    1450 6700
	-1   0    0    1   
$EndComp
NoConn ~ 1650 6500
$Comp
L Connector:Conn_01x06_Female J9
U 1 1 5FDAC8DD
P 4450 5950
F 0 "J9" H 4342 5425 50  0000 C CNN
F 1 "BMS_Signal" H 4342 5516 50  0000 C CNN
F 2 "" H 4450 5950 50  0001 C CNN
F 3 "~" H 4450 5950 50  0001 C CNN
	1    4450 5950
	1    0    0    1   
$EndComp
Wire Wire Line
	1650 5950 3050 5950
Wire Wire Line
	1650 6600 3050 6600
Wire Wire Line
	1650 5300 3050 5300
Connection ~ 3050 5950
Wire Wire Line
	1650 5400 2950 5400
Wire Wire Line
	1650 6700 2950 6700
Wire Wire Line
	1650 5500 2850 5500
Wire Wire Line
	1650 6800 2850 6800
Wire Wire Line
	1650 6050 2950 6050
Connection ~ 2950 6050
Wire Wire Line
	1650 6150 2850 6150
Connection ~ 2850 6150
Wire Wire Line
	3050 5950 4250 5950
Wire Wire Line
	2950 6050 4250 6050
Wire Wire Line
	2850 6150 4250 6150
Wire Wire Line
	4250 5750 3150 5750
Wire Wire Line
	3150 5750 3150 5200
Wire Wire Line
	3150 5200 1650 5200
Text Notes 2100 5200 0    50   ~ 0
ChargerSafety\n
Text Notes 2100 5300 0    50   ~ 0
CANH_Chrg
Text Notes 2100 5400 0    50   ~ 0
CANL_Chrg
Text Notes 2100 5500 0    50   ~ 0
CANS_Chrg
$Comp
L power:GND #PWR06
U 1 1 5FC9259C
P 2850 6900
F 0 "#PWR06" H 2850 6650 50  0001 C CNN
F 1 "GND" H 2855 6727 50  0000 C CNN
F 2 "" H 2850 6900 50  0001 C CNN
F 3 "" H 2850 6900 50  0001 C CNN
	1    2850 6900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 6800 2850 6900
Connection ~ 2850 6800
Text Notes 2100 5850 0    50   ~ 0
BMS_Fault
Text Notes 2100 5950 0    50   ~ 0
CANH_Main
Text Notes 2100 6050 0    50   ~ 0
CANL_Main
Text Notes 2100 6150 0    50   ~ 0
CANS_Main
Text Notes 2100 6600 0    50   ~ 0
CANH_Thrm
Text Notes 2100 6700 0    50   ~ 0
CANL_Thrm
Text Notes 2100 6800 0    50   ~ 0
CANS_Thrm
Text Notes 4200 5850 2    50   ~ 0
MP_EN
Text Notes 4200 5950 2    50   ~ 0
CANH_BMS
Text Notes 4200 6050 2    50   ~ 0
CANL_BMS
Text Notes 4200 6150 2    50   ~ 0
CANS_BMS
Text Notes 4200 5750 2    50   ~ 0
Charge_Safety
Wire Wire Line
	3050 5950 3050 6600
Wire Wire Line
	2950 6050 2950 6700
Wire Wire Line
	2850 6150 2850 6800
Wire Wire Line
	3050 5300 3050 5950
Wire Wire Line
	2950 5400 2950 6050
Wire Wire Line
	2850 5500 2850 6150
Wire Wire Line
	1650 5850 4250 5850
NoConn ~ 4250 5650
Wire Wire Line
	5100 3550 5150 3550
Wire Wire Line
	4000 3550 4600 3550
$Comp
L Device:Q_PMOS_GDS Q2
U 1 1 5FCC6DCE
P 5350 3450
F 0 "Q2" V 5599 3450 50  0000 C CNN
F 1 "SQP50P03-07" V 5690 3450 50  0000 C CNN
F 2 "" H 5550 3550 50  0001 C CNN
F 3 "~" H 5350 3450 50  0001 C CNN
	1    5350 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3650 5650 3550
Wire Wire Line
	5650 3550 5550 3550
$Comp
L Device:Fuse F1
U 1 1 5FC0FA27
P 4950 3550
F 0 "F1" V 5147 3550 50  0000 C CNN
F 1 "12A" V 5056 3550 50  0000 C CNN
F 2 "" V 4880 3550 50  0001 C CNN
F 3 "~" H 4950 3550 50  0001 C CNN
	1    4950 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 1650 8250 3150
Wire Wire Line
	8250 3150 8300 3150
$Comp
L Device:Fuse F2
U 1 1 5FB0792D
P 8450 3250
F 0 "F2" V 8647 3250 50  0000 C CNN
F 1 "1A" V 8556 3250 50  0000 C CNN
F 2 "" V 8380 3250 50  0001 C CNN
F 3 "~" H 8450 3250 50  0001 C CNN
	1    8450 3250
	0    -1   1    0   
$EndComp
$Comp
L Device:Fuse F3
U 1 1 5FB100A8
P 8450 3150
F 0 "F3" V 8647 3150 50  0000 C CNN
F 1 "1A" V 8556 3150 50  0000 C CNN
F 2 "" V 8380 3150 50  0001 C CNN
F 3 "~" H 8450 3150 50  0001 C CNN
	1    8450 3150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FCBC47D
P 8950 3500
F 0 "#PWR08" H 8950 3250 50  0001 C CNN
F 1 "GND" H 8955 3327 50  0000 C CNN
F 2 "" H 8950 3500 50  0001 C CNN
F 3 "" H 8950 3500 50  0001 C CNN
	1    8950 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J8
U 1 1 5FD0C7AC
P 9600 3250
F 0 "J8" H 9492 2925 50  0000 C CNN
F 1 "BMS_PWR" H 9492 3016 50  0000 C CNN
F 2 "" H 9600 3250 50  0001 C CNN
F 3 "~" H 9600 3250 50  0001 C CNN
	1    9600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3350 9400 3350
Wire Wire Line
	8600 3150 9400 3150
Wire Wire Line
	8600 3250 9400 3250
Text Notes 9350 3150 2    50   ~ 0
PWR_Ready
Text Notes 9350 3250 2    50   ~ 0
PWR_Charge
Wire Wire Line
	8950 3350 8950 3500
Wire Wire Line
	7100 1550 7100 3250
$Comp
L Device:Q_PMOS_GDS Q6
U 1 1 5FD075B5
P 7450 3150
F 0 "Q6" V 7699 3150 50  0000 C CNN
F 1 "SQP50P03-07" V 7790 3150 50  0000 C CNN
F 2 "" H 7650 3250 50  0001 C CNN
F 3 "~" H 7450 3150 50  0001 C CNN
	1    7450 3150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FD1386A
P 8100 2800
F 0 "#PWR012" H 8100 2550 50  0001 C CNN
F 1 "GND" H 8105 2627 50  0000 C CNN
F 2 "" H 8100 2800 50  0001 C CNN
F 3 "" H 8100 2800 50  0001 C CNN
	1    8100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2750 8100 2750
Wire Wire Line
	8100 2750 8100 2800
Wire Wire Line
	7450 2450 7450 2750
$Comp
L Device:R R3
U 1 1 5FD172BE
P 7450 2300
F 0 "R3" H 7520 2346 50  0000 L CNN
F 1 "100K" H 7520 2255 50  0000 L CNN
F 2 "" V 7380 2300 50  0001 C CNN
F 3 "~" H 7450 2300 50  0001 C CNN
	1    7450 2300
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR01
U 1 1 5FD2774A
P 4600 3450
F 0 "#PWR01" H 4600 3300 50  0001 C CNN
F 1 "+12V" H 4615 3623 50  0000 C CNN
F 2 "" H 4600 3450 50  0001 C CNN
F 3 "" H 4600 3450 50  0001 C CNN
	1    4600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3450 4600 3550
Connection ~ 4600 3550
Wire Wire Line
	4600 3550 4800 3550
$Comp
L power:+12V #PWR011
U 1 1 5FD37608
P 7450 2150
F 0 "#PWR011" H 7450 2000 50  0001 C CNN
F 1 "+12V" H 7465 2323 50  0000 C CNN
F 2 "" H 7450 2150 50  0001 C CNN
F 3 "" H 7450 2150 50  0001 C CNN
	1    7450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3250 7250 3250
Wire Wire Line
	7650 3250 8300 3250
Text Notes 5800 1550 0    50   ~ 0
ChargerSupply12V
Text Notes 5800 1650 0    50   ~ 0
GLV_BMSContainer\n
$Comp
L Transistor_FET:2N7002 Q3
U 1 1 5FCB5015
P 5750 3000
F 0 "Q3" V 5999 3000 50  0000 C CNN
F 1 "2N7002" V 6090 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5950 2925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 5750 3000 50  0001 L CNN
	1    5750 3000
	0    -1   1    0   
$EndComp
Wire Wire Line
	4000 1550 6550 1550
$Comp
L Transistor_FET:2N7002 Q4
U 1 1 5FCCB41E
P 6150 3000
F 0 "Q4" V 6399 3000 50  0000 C CNN
F 1 "2N7002" V 6490 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 2925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 6150 3000 50  0001 L CNN
	1    6150 3000
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FCCC1B3
P 6450 3200
F 0 "#PWR09" H 6450 2950 50  0001 C CNN
F 1 "GND" H 6455 3027 50  0000 C CNN
F 2 "" H 6450 3200 50  0001 C CNN
F 3 "" H 6450 3200 50  0001 C CNN
	1    6450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3100 6450 3100
Wire Wire Line
	6450 3100 6450 3200
Wire Wire Line
	5550 3100 5350 3100
Wire Wire Line
	5350 3100 5350 3250
$Comp
L Device:R R1
U 1 1 5FCCFBA3
P 5350 2850
F 0 "R1" H 5420 2896 50  0000 L CNN
F 1 "100K" H 5420 2805 50  0000 L CNN
F 2 "" V 5280 2850 50  0001 C CNN
F 3 "~" H 5350 2850 50  0001 C CNN
	1    5350 2850
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR02
U 1 1 5FCD0144
P 5350 2700
F 0 "#PWR02" H 5350 2550 50  0001 C CNN
F 1 "+12V" H 5365 2873 50  0000 C CNN
F 2 "" H 5350 2700 50  0001 C CNN
F 3 "" H 5350 2700 50  0001 C CNN
	1    5350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3000 5350 3100
Connection ~ 5350 3100
Wire Wire Line
	5750 2800 5750 1650
Connection ~ 5750 1650
$Comp
L Transistor_FET:2N7002 Q5
U 1 1 5FCD3A37
P 6550 2350
F 0 "Q5" V 6799 2350 50  0000 C CNN
F 1 "2N7002" V 6890 2350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6750 2275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 6550 2350 50  0001 L CNN
	1    6550 2350
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5FCD73FE
P 6850 2550
F 0 "#PWR010" H 6850 2300 50  0001 C CNN
F 1 "GND" H 6855 2377 50  0000 C CNN
F 2 "" H 6850 2550 50  0001 C CNN
F 3 "" H 6850 2550 50  0001 C CNN
	1    6850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2450 6850 2550
Wire Wire Line
	6750 2450 6850 2450
Wire Wire Line
	6550 2150 6550 1550
Connection ~ 6550 1550
Wire Wire Line
	6550 1550 7100 1550
$Comp
L Device:R R2
U 1 1 5FCDD1F1
P 6150 2150
F 0 "R2" H 6220 2196 50  0000 L CNN
F 1 "100K" H 6220 2105 50  0000 L CNN
F 2 "" V 6080 2150 50  0001 C CNN
F 3 "~" H 6150 2150 50  0001 C CNN
	1    6150 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR03
U 1 1 5FCDD6C3
P 6150 2000
F 0 "#PWR03" H 6150 1850 50  0001 C CNN
F 1 "+12V" H 6165 2173 50  0000 C CNN
F 2 "" H 6150 2000 50  0001 C CNN
F 3 "" H 6150 2000 50  0001 C CNN
	1    6150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2300 6150 2450
Wire Wire Line
	6150 2450 6350 2450
Wire Wire Line
	6150 2450 6150 2800
Connection ~ 6150 2450
Wire Wire Line
	5750 1650 7800 1650
$Comp
L Transistor_FET:2N7002 Q7
U 1 1 5FCE3DFD
P 7800 2650
F 0 "Q7" V 8049 2650 50  0000 C CNN
F 1 "2N7002" V 8140 2650 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8000 2575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 7800 2650 50  0001 L CNN
	1    7800 2650
	0    -1   1    0   
$EndComp
Wire Wire Line
	7600 2750 7450 2750
Connection ~ 7450 2750
Wire Wire Line
	7450 2750 7450 2950
Wire Wire Line
	7800 2450 7800 1650
Connection ~ 7800 1650
Wire Wire Line
	7800 1650 8250 1650
Wire Wire Line
	4000 2050 4000 1550
Connection ~ 4000 2050
Wire Wire Line
	3250 2050 4000 2050
Wire Wire Line
	3250 2100 3250 2050
Wire Wire Line
	4000 2100 4000 2050
Wire Wire Line
	2700 2400 2850 2400
Wire Wire Line
	2700 2550 2700 2400
$Comp
L power:GND #PWR0101
U 1 1 5FCAF3C3
P 2700 2550
F 0 "#PWR0101" H 2700 2300 50  0001 C CNN
F 1 "GND" H 2705 2377 50  0000 C CNN
F 2 "" H 2700 2550 50  0001 C CNN
F 3 "" H 2700 2550 50  0001 C CNN
	1    2700 2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 2750 4000 3550
Connection ~ 4000 2750
Wire Wire Line
	3250 2750 4000 2750
Connection ~ 4000 2500
Wire Wire Line
	4000 2500 4000 2750
Wire Wire Line
	3650 2500 4000 2500
Wire Wire Line
	3250 2700 3250 2750
Wire Wire Line
	3650 2300 3700 2300
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5FCA0094
P 3900 2300
F 0 "Q1" H 4104 2254 50  0000 L CNN
F 1 "FDP3632" H 4104 2345 50  0000 L CNN
F 2 "" H 4100 2400 50  0001 C CNN
F 3 "~" H 3900 2300 50  0001 C CNN
	1    3900 2300
	1    0    0    1   
$EndComp
$Comp
L Power_Management:LTC4357MS8 U1
U 1 1 5FC9E54A
P 3250 2400
F 0 "U1" V 2850 1950 50  0000 C CNN
F 1 "LTC4357MS8" V 2950 2050 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 3500 2250 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/4357fd.pdf" H 3250 2150 50  0001 C CNN
	1    3250 2400
	0    1    1    0   
$EndComp
Text HLabel 1200 3650 0    50   Output ~ 0
Pump_PWR
Text HLabel 1200 3550 0    50   Input ~ 0
GLV_PreBRB
$Comp
L NER:2-Pos_Generic J5
U 1 1 60052B8B
P 1500 3450
F 0 "J5" H 1500 3575 50  0000 C CNN
F 1 "PumpIO" H 1500 3484 50  0000 C CNN
F 2 "" H 1500 3450 50  0001 C CNN
F 3 "" H 1500 3450 50  0001 C CNN
	1    1500 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 3550 4000 3550
Wire Wire Line
	1750 3650 5650 3650
Wire Wire Line
	1250 3550 1200 3550
Wire Wire Line
	1250 3650 1200 3650
$Comp
L NER:3-Pos_Generic J1
U 1 1 60084A61
P 1700 1450
F 0 "J1" H 1700 1575 50  0000 C CNN
F 1 "GLV/Charge_PWR" H 1700 1484 50  0000 C CNN
F 2 "" H 1700 1450 50  0001 C CNN
F 3 "" H 1700 1450 50  0001 C CNN
	1    1700 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 1550 4000 1550
Wire Wire Line
	1950 1650 5750 1650
Wire Wire Line
	1950 1750 2050 1750
Text HLabel 1400 1550 0    50   Input ~ 0
ChargerSupply12V
Text HLabel 1400 1650 0    50   Input ~ 0
GLV_BMSContainer
Text HLabel 1400 2400 0    50   Input ~ 0
BMS_GND
Wire Wire Line
	1450 2400 1400 2400
Wire Wire Line
	1450 1650 1400 1650
Wire Wire Line
	1450 1550 1400 1550
$Comp
L NER:1-Pos_Generic J10
U 1 1 600B3510
P 1700 2300
F 0 "J10" H 1700 2425 50  0000 C CNN
F 1 "GND_QC" H 1700 2334 50  0000 C CNN
F 2 "" H 1700 2300 50  0001 C CNN
F 3 "" H 1700 2300 50  0001 C CNN
	1    1700 2300
	1    0    0    -1  
$EndComp
Text HLabel 1400 1750 0    50   UnSpc ~ 0
ChargerGND
Wire Wire Line
	1450 1750 1400 1750
$EndSCHEMATC