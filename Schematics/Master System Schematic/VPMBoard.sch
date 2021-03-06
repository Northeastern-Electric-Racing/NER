EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 8 25
Title "Vehicle Power Management Board"
Date "2021-03-23"
Rev "5"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 "Connections for CAN, Power, Ground. Quick connect ground to chassis."
Comment4 "MOSFETs to control BMS charge power, GLV charge power and pump."
$EndDescr
Text Notes 6300 6600 0    50   ~ 0
>Battery --> GLVMS --> GLV_PreBRB --> BRB1 --> BRB2 --> Fusebox --> GLV_BMSContainer\n
Text Notes 5350 1300 0    50   Italic 0
> If 12v is present on GLV and car is not charging, \npower is connected to Pump_PWR.\n\n> If 12v is present on GLV and car is charging, \npower is not connected to Pump_PWR.\n\n> If 12v is not present on GLV (BRB's pressed),\npower is not connected to Pump_PWR.
Text Notes 7650 1150 0    50   ~ 0
> If 12v is present on GLV (not in shutdown), \npower from charger is connected to PWR_Charge.\n^(power here may or may not be present)\n\n> If 12v is not present on GLV (shutdown),\npower from charger is not connected to PWR_Charge.
Text Notes 3300 1150 0    50   ~ 0
> If car is charging, GLV_PreBRB\n will be driven by ChargerSupply12V\n\n> If car is not charging, GLV_PreBRB \nwill be disconnected from the \ncharger supply
$Comp
L power:GND #PWR03
U 1 1 5FCA9C4C
P 2050 1900
AR Path="/60D53BFB/61127439/5FCA9C4C" Ref="#PWR03"  Part="1" 
AR Path="/610E955F/5FCA9C4C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2050 1650 50  0001 C CNN
F 1 "GND" H 2055 1727 50  0000 C CNN
F 2 "" H 2050 1900 50  0001 C CNN
F 3 "" H 2050 1900 50  0001 C CNN
	1    2050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2400 1950 2400
$Comp
L power:GND #PWR04
U 1 1 5FCC4D73
P 2050 2550
AR Path="/60D53BFB/61127439/5FCC4D73" Ref="#PWR04"  Part="1" 
AR Path="/610E955F/5FCC4D73" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2050 2300 50  0001 C CNN
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
Wire Wire Line
	2050 1750 2050 1900
Connection ~ 4000 1550
Wire Wire Line
	8250 1650 9400 1650
Wire Wire Line
	8950 1750 9400 1750
Wire Wire Line
	8950 1900 8950 1750
Connection ~ 8250 1650
$Comp
L power:GND #PWR016
U 1 1 5FD5EF12
P 8950 1900
AR Path="/60D53BFB/61127439/5FD5EF12" Ref="#PWR016"  Part="1" 
AR Path="/610E955F/5FD5EF12" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 1650 50  0001 C CNN
F 1 "GND" H 8955 1727 50  0000 C CNN
F 2 "" H 8950 1900 50  0001 C CNN
F 3 "" H 8950 1900 50  0001 C CNN
	1    8950 1900
	-1   0    0    -1  
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
P 2850 7050
AR Path="/60D53BFB/61127439/5FC9259C" Ref="#PWR06"  Part="1" 
AR Path="/610E955F/5FC9259C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2850 6800 50  0001 C CNN
F 1 "GND" H 2855 6877 50  0000 C CNN
F 2 "" H 2850 7050 50  0001 C CNN
F 3 "" H 2850 7050 50  0001 C CNN
	1    2850 7050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 6800 2850 7050
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
$Comp
L Device:Q_PMOS_GDS Q3
U 1 1 5FCC6DCE
P 5350 3450
AR Path="/60D53BFB/61127439/5FCC6DCE" Ref="Q3"  Part="1" 
AR Path="/610E955F/5FCC6DCE" Ref="Q?"  Part="1" 
F 0 "Q?" V 5599 3450 50  0000 C CNN
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
Wire Wire Line
	8250 1650 8250 3150
Wire Wire Line
	8250 3150 8300 3150
$Comp
L Device:Fuse F207
U 1 1 5FB0792D
P 8450 3250
AR Path="/60D53BFB/61127439/5FB0792D" Ref="F207"  Part="1" 
AR Path="/610E955F/5FB0792D" Ref="F?"  Part="1" 
F 0 "F?" V 8647 3250 50  0000 C CNN
F 1 "1A" V 8556 3250 50  0000 C CNN
F 2 "" V 8380 3250 50  0001 C CNN
F 3 "~" H 8450 3250 50  0001 C CNN
	1    8450 3250
	0    -1   1    0   
$EndComp
$Comp
L Device:Fuse F206
U 1 1 5FB100A8
P 8450 3150
AR Path="/60D53BFB/61127439/5FB100A8" Ref="F206"  Part="1" 
AR Path="/610E955F/5FB100A8" Ref="F?"  Part="1" 
F 0 "F?" V 8647 3150 50  0000 C CNN
F 1 "1A" V 8556 3150 50  0000 C CNN
F 2 "" V 8380 3150 50  0001 C CNN
F 3 "~" H 8450 3150 50  0001 C CNN
	1    8450 3150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FCBC47D
P 8950 3500
AR Path="/60D53BFB/61127439/5FCBC47D" Ref="#PWR017"  Part="1" 
AR Path="/610E955F/5FCBC47D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 3250 50  0001 C CNN
F 1 "GND" H 8955 3327 50  0000 C CNN
F 2 "" H 8950 3500 50  0001 C CNN
F 3 "" H 8950 3500 50  0001 C CNN
	1    8950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3350 9400 3350
Wire Wire Line
	8600 3150 9400 3150
Wire Wire Line
	8600 3250 9400 3250
Text Notes 9300 3150 2    50   ~ 0
PWR_Ready
Text Notes 9350 3250 2    50   ~ 0
PWR_Charge
Wire Wire Line
	8950 3350 8950 3500
Wire Wire Line
	7100 1550 7100 3250
$Comp
L Device:Q_PMOS_GDS Q7
U 1 1 5FD075B5
P 7450 3150
AR Path="/60D53BFB/61127439/5FD075B5" Ref="Q7"  Part="1" 
AR Path="/610E955F/5FD075B5" Ref="Q?"  Part="1" 
F 0 "Q?" V 7699 3150 50  0000 C CNN
F 1 "SQP50P03-07" V 7790 3150 50  0000 C CNN
F 2 "" H 7650 3250 50  0001 C CNN
F 3 "~" H 7450 3150 50  0001 C CNN
	1    7450 3150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5FD1386A
P 8100 2800
AR Path="/60D53BFB/61127439/5FD1386A" Ref="#PWR015"  Part="1" 
AR Path="/610E955F/5FD1386A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8100 2550 50  0001 C CNN
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
L Device:R R20
U 1 1 5FD172BE
P 7450 2300
AR Path="/60D53BFB/61127439/5FD172BE" Ref="R20"  Part="1" 
AR Path="/610E955F/5FD172BE" Ref="R?"  Part="1" 
F 0 "R?" H 7520 2346 50  0000 L CNN
F 1 "100K" H 7520 2255 50  0000 L CNN
F 2 "" V 7380 2300 50  0001 C CNN
F 3 "~" H 7450 2300 50  0001 C CNN
	1    7450 2300
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR09
U 1 1 5FD2774A
P 4600 3450
AR Path="/60D53BFB/61127439/5FD2774A" Ref="#PWR09"  Part="1" 
AR Path="/610E955F/5FD2774A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4600 3300 50  0001 C CNN
F 1 "+12V" H 4615 3623 50  0000 C CNN
F 2 "" H 4600 3450 50  0001 C CNN
F 3 "" H 4600 3450 50  0001 C CNN
	1    4600 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR014
U 1 1 5FD37608
P 7450 2150
AR Path="/60D53BFB/61127439/5FD37608" Ref="#PWR014"  Part="1" 
AR Path="/610E955F/5FD37608" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7450 2000 50  0001 C CNN
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
L Transistor_FET:2N7002 Q4
U 1 1 5FCB5015
P 5750 3000
AR Path="/60D53BFB/61127439/5FCB5015" Ref="Q4"  Part="1" 
AR Path="/610E955F/5FCB5015" Ref="Q?"  Part="1" 
F 0 "Q?" V 5999 3000 50  0000 C CNN
F 1 "2N7002" V 6090 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5950 2925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 5750 3000 50  0001 L CNN
	1    5750 3000
	0    -1   1    0   
$EndComp
Wire Wire Line
	4000 1550 6550 1550
$Comp
L Transistor_FET:2N7002 Q5
U 1 1 5FCCB41E
P 6150 3000
AR Path="/60D53BFB/61127439/5FCCB41E" Ref="Q5"  Part="1" 
AR Path="/610E955F/5FCCB41E" Ref="Q?"  Part="1" 
F 0 "Q?" V 6399 3000 50  0000 C CNN
F 1 "2N7002" V 6490 3000 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 2925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 6150 3000 50  0001 L CNN
	1    6150 3000
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FCCC1B3
P 6450 3200
AR Path="/60D53BFB/61127439/5FCCC1B3" Ref="#PWR012"  Part="1" 
AR Path="/610E955F/5FCCC1B3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 2950 50  0001 C CNN
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
L Device:R R18
U 1 1 5FCCFBA3
P 5350 2850
AR Path="/60D53BFB/61127439/5FCCFBA3" Ref="R18"  Part="1" 
AR Path="/610E955F/5FCCFBA3" Ref="R?"  Part="1" 
F 0 "R?" H 5420 2896 50  0000 L CNN
F 1 "100K" H 5420 2805 50  0000 L CNN
F 2 "" V 5280 2850 50  0001 C CNN
F 3 "~" H 5350 2850 50  0001 C CNN
	1    5350 2850
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR010
U 1 1 5FCD0144
P 5350 2700
AR Path="/60D53BFB/61127439/5FCD0144" Ref="#PWR010"  Part="1" 
AR Path="/610E955F/5FCD0144" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 2550 50  0001 C CNN
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
L Transistor_FET:2N7002 Q6
U 1 1 5FCD3A37
P 6550 2350
AR Path="/60D53BFB/61127439/5FCD3A37" Ref="Q6"  Part="1" 
AR Path="/610E955F/5FCD3A37" Ref="Q?"  Part="1" 
F 0 "Q?" V 6799 2350 50  0000 C CNN
F 1 "2N7002" V 6890 2350 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6750 2275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 6550 2350 50  0001 L CNN
	1    6550 2350
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5FCD73FE
P 6850 2550
AR Path="/60D53BFB/61127439/5FCD73FE" Ref="#PWR013"  Part="1" 
AR Path="/610E955F/5FCD73FE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6850 2300 50  0001 C CNN
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
L Device:R R19
U 1 1 5FCDD1F1
P 6150 2150
AR Path="/60D53BFB/61127439/5FCDD1F1" Ref="R19"  Part="1" 
AR Path="/610E955F/5FCDD1F1" Ref="R?"  Part="1" 
F 0 "R?" H 6220 2196 50  0000 L CNN
F 1 "100K" H 6220 2105 50  0000 L CNN
F 2 "" V 6080 2150 50  0001 C CNN
F 3 "~" H 6150 2150 50  0001 C CNN
	1    6150 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR011
U 1 1 5FCDD6C3
P 6150 2000
AR Path="/60D53BFB/61127439/5FCDD6C3" Ref="#PWR011"  Part="1" 
AR Path="/610E955F/5FCDD6C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 1850 50  0001 C CNN
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
L Transistor_FET:2N7002 Q8
U 1 1 5FCE3DFD
P 7800 2650
AR Path="/60D53BFB/61127439/5FCE3DFD" Ref="Q8"  Part="1" 
AR Path="/610E955F/5FCE3DFD" Ref="Q?"  Part="1" 
F 0 "Q?" V 8049 2650 50  0000 C CNN
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
L power:GND #PWR05
U 1 1 5FCAF3C3
P 2700 2550
AR Path="/60D53BFB/61127439/5FCAF3C3" Ref="#PWR05"  Part="1" 
AR Path="/610E955F/5FCAF3C3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 2300 50  0001 C CNN
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
L Device:Q_NMOS_GDS Q2
U 1 1 5FCA0094
P 3900 2300
AR Path="/60D53BFB/61127439/5FCA0094" Ref="Q2"  Part="1" 
AR Path="/610E955F/5FCA0094" Ref="Q?"  Part="1" 
F 0 "Q?" H 4104 2254 50  0000 L CNN
F 1 "FDP3632" H 4104 2345 50  0000 L CNN
F 2 "" H 4100 2400 50  0001 C CNN
F 3 "~" H 3900 2300 50  0001 C CNN
	1    3900 2300
	1    0    0    1   
$EndComp
$Comp
L Power_Management:LTC4357MS8 U9
U 1 1 5FC9E54A
P 3250 2400
AR Path="/60D53BFB/61127439/5FC9E54A" Ref="U9"  Part="1" 
AR Path="/610E955F/5FC9E54A" Ref="U?"  Part="1" 
F 0 "U?" V 2850 1950 50  0000 C CNN
F 1 "LTC4357MS8" V 2950 2050 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 3500 2250 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/4357fd.pdf" H 3250 2150 50  0001 C CNN
	1    3250 2400
	0    1    1    0   
$EndComp
Text HLabel 1200 3650 0    50   Output ~ 0
Pump_PWR
Wire Wire Line
	1750 3650 1950 3650
Wire Wire Line
	1250 3550 1200 3550
Wire Wire Line
	1250 3650 1200 3650
$Comp
L NER:3-Pos_Generic J17
U 1 1 60084A61
P 1700 1450
AR Path="/60D53BFB/61127439/60084A61" Ref="J17"  Part="1" 
AR Path="/610E955F/60084A61" Ref="J?"  Part="1" 
F 0 "J?" H 1700 1575 50  0000 C CNN
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
L NER:1-Pos_Generic J?
U 1 1 600B3510
P 1700 2300
AR Path="/600B3510" Ref="J?"  Part="1" 
AR Path="/60D53BFB/61127439/600B3510" Ref="J18"  Part="1" 
AR Path="/610E955F/600B3510" Ref="J?"  Part="1" 
F 0 "J?" H 1700 2425 50  0000 C CNN
F 1 "GND_QC" H 1700 2334 50  0000 C CNN
F 2 "" H 1700 2300 50  0001 C CNN
F 3 "" H 1700 2300 50  0001 C CNN
	1    1700 2300
	-1   0    0    -1  
$EndComp
Text HLabel 1400 1750 0    50   UnSpc ~ 0
ChargerGND
Wire Wire Line
	1450 1750 1400 1750
$Comp
L NER:3-Pos_Generic J21
U 1 1 6116408D
P 9650 3050
AR Path="/60D53BFB/61127439/6116408D" Ref="J21"  Part="1" 
AR Path="/610E955F/6116408D" Ref="J?"  Part="1" 
F 0 "J?" H 9650 3175 50  0000 C CNN
F 1 "BMS_PWR" H 9650 3084 50  0000 C CNN
F 2 "" H 9650 3050 50  0001 C CNN
F 3 "" H 9650 3050 50  0001 C CNN
	1    9650 3050
	1    0    0    -1  
$EndComp
Text HLabel 9950 3250 2    50   Output ~ 0
PWR_Charge
Text HLabel 9950 3150 2    50   Output ~ 0
PWR_Ready
Text HLabel 9950 3350 2    50   Output ~ 0
BMS_GND
Wire Wire Line
	9950 3350 9900 3350
Wire Wire Line
	9950 3250 9900 3250
Wire Wire Line
	9950 3150 9900 3150
$Comp
L NER:2-Pos_Generic J20
U 1 1 600B417F
P 9650 1550
AR Path="/60D53BFB/61127439/600B417F" Ref="J20"  Part="1" 
AR Path="/610E955F/600B417F" Ref="J?"  Part="1" 
F 0 "J?" H 9650 1675 50  0000 C CNN
F 1 "ThermEX_PWR" H 9650 1584 50  0000 C CNN
F 2 "" H 9650 1550 50  0001 C CNN
F 3 "" H 9650 1550 50  0001 C CNN
	1    9650 1550
	1    0    0    -1  
$EndComp
Text HLabel 9900 1750 2    50   Output ~ 0
ThermEX_GND
Text HLabel 9900 1650 2    50   Output ~ 0
ThermEX_PWR
Text Notes 9350 1650 2    50   ~ 0
ThermEX_PWR\n
$Comp
L NER:4-Pos_Generic J14
U 1 1 600E1D3A
P 1400 6250
AR Path="/60D53BFB/61127439/600E1D3A" Ref="J14"  Part="1" 
AR Path="/610E955F/600E1D3A" Ref="J?"  Part="1" 
F 0 "J?" H 1400 5650 50  0000 C CNN
F 1 "Main_Signal" H 1400 5750 50  0000 C CNN
F 2 "" H 1400 6250 50  0001 C CNN
F 3 "" H 1400 6250 50  0001 C CNN
	1    1400 6250
	-1   0    0    1   
$EndComp
$Comp
L NER:4-Pos_Generic J15
U 1 1 600E4AAA
P 1400 7000
AR Path="/60D53BFB/61127439/600E4AAA" Ref="J15"  Part="1" 
AR Path="/610E955F/600E4AAA" Ref="J?"  Part="1" 
F 0 "J?" H 1400 6400 50  0000 C CNN
F 1 "Therm_Signal" H 1400 6500 50  0000 C CNN
F 2 "" H 1400 7000 50  0001 C CNN
F 3 "" H 1400 7000 50  0001 C CNN
	1    1400 7000
	-1   0    0    1   
$EndComp
Text HLabel 1150 5500 0    50   Input ~ 0
CANS_Chrg
Text HLabel 1150 5400 0    50   Input ~ 0
CANL_Chrg
Text HLabel 1150 5300 0    50   Input ~ 0
CANH_Chrg
Text HLabel 1150 5200 0    50   Input ~ 0
ChargerSafety
Text HLabel 1150 6150 0    50   Input ~ 0
CANS_Main
Text HLabel 1150 6050 0    50   Input ~ 0
CANL_Main
Text HLabel 1150 5950 0    50   Input ~ 0
CANH_Main
Text HLabel 1150 5850 0    50   Input ~ 0
BMS_Fault
Text HLabel 1150 6800 0    50   Input ~ 0
CANS_Thrm
Text HLabel 1150 6600 0    50   Input ~ 0
CANH_Thrm
Text HLabel 1150 6700 0    50   Input ~ 0
CANL_Thrm
$Comp
L NER:4-Pos_Generic J13
U 1 1 600D5093
P 1400 5600
AR Path="/60D53BFB/61127439/600D5093" Ref="J13"  Part="1" 
AR Path="/610E955F/600D5093" Ref="J?"  Part="1" 
F 0 "J?" H 1400 5000 50  0000 C CNN
F 1 "Charge_Signal" H 1400 5100 50  0000 C CNN
F 2 "" H 1400 5600 50  0001 C CNN
F 3 "" H 1400 5600 50  0001 C CNN
	1    1400 5600
	-1   0    0    1   
$EndComp
Text HLabel 4750 5750 2    50   Input ~ 0
Charge_Safety
Text HLabel 4750 5850 2    50   Input ~ 0
MP_EN
Text HLabel 4750 5950 2    50   Input ~ 0
CANH_BMS
Text HLabel 4750 6050 2    50   Input ~ 0
CANL_BMS
Text HLabel 4750 6150 2    50   Input ~ 0
CANS_BMS
Wire Wire Line
	4000 3550 4600 3550
Wire Wire Line
	4600 3450 4600 3550
Connection ~ 4600 3550
Wire Wire Line
	4600 3550 5150 3550
$Comp
L Diode:MBR0520 D1
U 1 1 602B5DB7
P 1950 3800
AR Path="/60D53BFB/61127439/602B5DB7" Ref="D1"  Part="1" 
AR Path="/610E955F/602B5DB7" Ref="D?"  Part="1" 
F 0 "D?" V 1904 3880 50  0000 L CNN
F 1 "MBRD5100" V 1995 3880 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 1950 3625 50  0001 C CNN
F 3 "http://www.smc-diodes.com/propdf/MBRD560-MBRD5200%20N0801%20REV.A.pdf" H 1950 3800 50  0001 C CNN
	1    1950 3800
	0    1    1    0   
$EndComp
Connection ~ 1950 3650
Wire Wire Line
	1950 3650 5650 3650
$Comp
L power:GND #PWR01
U 1 1 602B6849
P 1950 3950
AR Path="/60D53BFB/61127439/602B6849" Ref="#PWR01"  Part="1" 
AR Path="/610E955F/602B6849" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 3700 50  0001 C CNN
F 1 "GND" H 1955 3777 50  0000 C CNN
F 2 "" H 1950 3950 50  0001 C CNN
F 3 "" H 1950 3950 50  0001 C CNN
	1    1950 3950
	-1   0    0    -1  
$EndComp
$Comp
L NER:2-Pos_Generic J1
U 1 1 605FE893
P 1400 4600
AR Path="/60D53BFB/61127439/605FE893" Ref="J1"  Part="1" 
AR Path="/610E955F/605FE893" Ref="J?"  Part="1" 
F 0 "J?" H 1400 4725 50  0000 C CNN
F 1 "GLV_Pre" H 1400 4634 50  0000 C CNN
F 2 "" H 1400 4600 50  0001 C CNN
F 3 "" H 1400 4600 50  0001 C CNN
	1    1400 4600
	-1   0    0    -1  
$EndComp
Text HLabel 1150 4750 0    50   Input ~ 0
GLV_PreBRB
Wire Wire Line
	1150 4700 1150 4800
Wire Wire Line
	1650 4800 1950 4800
Wire Wire Line
	1950 4800 1950 4700
Wire Wire Line
	1950 4700 1650 4700
Connection ~ 1950 4700
$Comp
L power:+12V #PWR02
U 1 1 6060CA7F
P 1950 4700
AR Path="/60D53BFB/61127439/6060CA7F" Ref="#PWR02"  Part="1" 
AR Path="/610E955F/6060CA7F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1950 4550 50  0001 C CNN
F 1 "+12V" H 1965 4873 50  0000 C CNN
F 2 "" H 1950 4700 50  0001 C CNN
F 3 "" H 1950 4700 50  0001 C CNN
	1    1950 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q1
U 1 1 606119C7
P 3100 4450
AR Path="/60D53BFB/61127439/606119C7" Ref="Q1"  Part="1" 
AR Path="/610E955F/606119C7" Ref="Q?"  Part="1" 
F 0 "Q?" V 3349 4450 50  0000 C CNN
F 1 "SQP50P03-07" V 3440 4450 50  0000 C CNN
F 2 "" H 3300 4550 50  0001 C CNN
F 3 "~" H 3100 4450 50  0001 C CNN
	1    3100 4450
	0    -1   1    0   
$EndComp
$Comp
L power:+12V #PWR07
U 1 1 60613861
P 3100 3950
AR Path="/60D53BFB/61127439/60613861" Ref="#PWR07"  Part="1" 
AR Path="/610E955F/60613861" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3100 3800 50  0001 C CNN
F 1 "+12V" H 3115 4123 50  0000 C CNN
F 2 "" H 3100 3950 50  0001 C CNN
F 3 "" H 3100 3950 50  0001 C CNN
	1    3100 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 60613C70
P 3100 4100
AR Path="/60D53BFB/61127439/60613C70" Ref="R17"  Part="1" 
AR Path="/610E955F/60613C70" Ref="R?"  Part="1" 
F 0 "R?" H 3170 4146 50  0000 L CNN
F 1 "100K" H 3170 4055 50  0000 L CNN
F 2 "" V 3030 4100 50  0001 C CNN
F 3 "~" H 3100 4100 50  0001 C CNN
	1    3100 4100
	1    0    0    -1  
$EndComp
Text Notes 2100 3550 0    50   ~ 0
RadFan_PWR
$Comp
L power:+12V #PWR08
U 1 1 6061F853
P 3500 4550
AR Path="/60D53BFB/61127439/6061F853" Ref="#PWR08"  Part="1" 
AR Path="/610E955F/6061F853" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3500 4400 50  0001 C CNN
F 1 "+12V" H 3515 4723 50  0000 C CNN
F 2 "" H 3500 4550 50  0001 C CNN
F 3 "" H 3500 4550 50  0001 C CNN
	1    3500 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 4550 3300 4550
Text HLabel 1200 3550 0    50   Input ~ 0
RadFan_PWR
$Comp
L NER:2-Pos_Generic J16
U 1 1 60052B8B
P 1500 3450
AR Path="/60D53BFB/61127439/60052B8B" Ref="J16"  Part="1" 
AR Path="/610E955F/60052B8B" Ref="J?"  Part="1" 
F 0 "J?" H 1500 3575 50  0000 C CNN
F 1 "PumpIO" H 1500 3484 50  0000 C CNN
F 2 "" H 1500 3450 50  0001 C CNN
F 3 "" H 1500 3450 50  0001 C CNN
	1    1500 3450
	-1   0    0    -1  
$EndComp
Text HLabel 1150 6900 0    50   Input ~ 0
BatFan_PWM
$Comp
L NER:7-Pos_Generic J19
U 1 1 605FD3CD
P 4500 6250
AR Path="/60D53BFB/61127439/605FD3CD" Ref="J19"  Part="1" 
AR Path="/610E955F/605FD3CD" Ref="J?"  Part="1" 
F 0 "J?" H 4500 5335 50  0000 C CNN
F 1 "7-Pos_Generic" H 4500 5426 50  0000 C CNN
F 2 "" H 4500 6250 50  0001 C CNN
F 3 "" H 4500 6250 50  0001 C CNN
	1    4500 6250
	1    0    0    1   
$EndComp
Text HLabel 4750 5650 2    50   Input ~ 0
MPO4
Text HLabel 4750 5550 2    50   Input ~ 0
MPO3
Wire Wire Line
	4250 5650 3250 5650
Wire Wire Line
	3250 5650 3250 6900
Wire Wire Line
	3250 6900 1650 6900
Text Notes 4200 5650 2    50   ~ 0
BatFan_PWM\n
Wire Wire Line
	4250 5550 3700 5550
Wire Wire Line
	3700 5550 3700 4250
Wire Wire Line
	3700 4250 3100 4250
Connection ~ 3100 4250
Text Notes 4200 5550 2    50   ~ 0
RadFan_Sig\n
Wire Wire Line
	2900 4550 2700 4550
Wire Wire Line
	2700 4550 2700 3550
Wire Wire Line
	2700 3550 1750 3550
$EndSCHEMATC
