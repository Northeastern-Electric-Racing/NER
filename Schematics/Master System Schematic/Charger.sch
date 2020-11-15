EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 22
Title "Charging System"
Date "2020-10-20"
Rev "4"
Comp "Northeastern Electric Racing"
Comment1 "https://github.com/Northeastern-Electric-Racing/NER"
Comment2 "For authors and other info, contact Chief Electrical Engineer"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Relay:Fujitsu_FTR-F1A K?
U 1 1 61EEF404
P 3850 2750
AR Path="/61EEF404" Ref="K?"  Part="1" 
AR Path="/61ECC7CF/61EEF404" Ref="K6"  Part="1" 
F 0 "K6" H 3850 2233 50  0000 C CNN
F 1 "Safety Relay" H 3850 2324 50  0000 C CNN
F 2 "Relay_THT:Relay_DPST_Fujitsu_FTR-F1A" H 3850 2350 50  0001 C CNN
F 3 "https://www.fujitsu.com/downloads/MICRO/fcai/relays/ftr-f1.pdf" H 3900 3300 50  0001 C CNN
	1    3850 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 61EEF40A
P 5650 2750
AR Path="/61EEF40A" Ref="F?"  Part="1" 
AR Path="/61ECC7CF/61EEF40A" Ref="F1"  Part="1" 
F 0 "F1" V 5750 2750 50  0000 C CNN
F 1 "10A" V 5550 2750 50  0000 C CNN
F 2 "" V 5580 2750 50  0001 C CNN
F 3 "~" H 5650 2750 50  0001 C CNN
	1    5650 2750
	0    1    -1   0   
$EndComp
$Comp
L NER:TSM2500 U?
U 1 1 61EEF410
P 5550 4350
AR Path="/61EEF410" Ref="U?"  Part="1" 
AR Path="/61ECC7CF/61EEF410" Ref="U5"  Part="1" 
F 0 "U5" H 5550 4350 50  0001 C CNN
F 1 "TSM2500" H 5600 4383 50  0000 C CNN
F 2 "" H 5550 4350 50  0001 C CNN
F 3 "http://www.thunderstruck-ev.com/images/ThunderStruck%20TSM2500%20ManualV1.05.pdf" H 5550 4350 50  0001 C CNN
	1    5550 4350
	1    0    0    1   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 61EEF417
P 6450 4200
AR Path="/61EEF417" Ref="F?"  Part="1" 
AR Path="/61ECC7CF/61EEF417" Ref="F4"  Part="1" 
F 0 "F4" V 6253 4200 50  0000 C CNN
F 1 "20A" V 6344 4200 50  0000 C CNN
F 2 "" V 6380 4200 50  0001 C CNN
F 3 "~" H 6450 4200 50  0001 C CNN
	1    6450 4200
	0    1    -1   0   
$EndComp
Wire Wire Line
	6300 2950 6100 2950
$Comp
L Connector:Conn_WallSocket_Earth J?
U 1 1 61EEF421
P 6800 2950
AR Path="/61EEF421" Ref="J?"  Part="1" 
AR Path="/61ECC7CF/61EEF421" Ref="J7"  Part="1" 
F 0 "J7" H 6806 2454 50  0000 C CNN
F 1 "WallSocket" H 6806 2545 50  0000 C CNN
F 2 "" H 6500 3050 50  0001 C CNN
F 3 "~" H 6500 3050 50  0001 C CNN
	1    6800 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4200 6300 4200
Wire Wire Line
	6700 4200 6700 5450
Wire Wire Line
	3450 3800 3450 2950
Wire Wire Line
	3450 2950 3550 2950
Wire Wire Line
	3300 2750 3300 3950
Wire Wire Line
	4600 4200 4950 4200
Text HLabel 3300 2550 0    50   Output ~ 0
Charger_Safety
Text HLabel 3300 2200 0    50   Output ~ 0
+12V
Text HLabel 6700 5450 3    50   Output ~ 0
TS+
Text HLabel 6800 5450 3    50   Output ~ 0
TS-
Wire Wire Line
	6200 3650 6750 3650
Wire Wire Line
	6200 3800 6750 3800
Text HLabel 6750 3650 2    50   BiDi ~ 0
CAN_L
Text HLabel 6750 3800 2    50   BiDi ~ 0
CAN_H
$Comp
L Converter_ACDC:HLK-PM12 PS1
U 1 1 6015DD85
P 5500 2100
F 0 "PS1" H 5500 1783 50  0000 C CNN
F 1 "PLACEHOLDER" H 5500 1874 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 5500 1800 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=56" H 5900 1750 50  0001 C CNN
	1    5500 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2200 6000 2200
Wire Wire Line
	5900 2000 6100 2000
Wire Wire Line
	6100 2350 6100 2950
Connection ~ 6100 2950
$Comp
L Device:Fuse F86
U 1 1 6016ADF1
P 6100 2200
F 0 "F86" H 6160 2246 50  0000 L CNN
F 1 "Fuse" H 6160 2155 50  0000 L CNN
F 2 "" V 6030 2200 50  0001 C CNN
F 3 "~" H 6100 2200 50  0001 C CNN
	1    6100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2050 6100 2000
Wire Wire Line
	6000 2200 6000 2750
Wire Wire Line
	6000 2750 6300 2750
Wire Wire Line
	5100 2000 4900 2000
Wire Wire Line
	4900 2000 4900 3150
Connection ~ 4900 2000
Connection ~ 4900 3150
Wire Wire Line
	4900 3150 4600 3150
Wire Wire Line
	4600 3150 4600 4200
Wire Wire Line
	3550 2550 3300 2550
Text HLabel 3300 2000 0    50   Output ~ 0
GND
Wire Wire Line
	6700 4200 6600 4200
$Comp
L Device:Fuse F?
U 1 1 6017BDE1
P 6450 4050
AR Path="/6017BDE1" Ref="F?"  Part="1" 
AR Path="/61ECC7CF/6017BDE1" Ref="F3"  Part="1" 
F 0 "F3" V 6253 4050 50  0000 C CNN
F 1 "20A" V 6344 4050 50  0000 C CNN
F 2 "" V 6380 4050 50  0001 C CNN
F 3 "~" H 6450 4050 50  0001 C CNN
	1    6450 4050
	0    -1   1    0   
$EndComp
Wire Wire Line
	6200 4050 6300 4050
Wire Wire Line
	6600 4050 6800 4050
Wire Wire Line
	6800 5450 6800 4050
$Comp
L Device:Fuse F2
U 1 1 5FA10442
P 4650 2200
F 0 "F2" V 4750 2200 50  0000 C CNN
F 1 "Fuse" V 4550 2200 50  0000 C CNN
F 2 "" V 4580 2200 50  0001 C CNN
F 3 "~" H 4650 2200 50  0001 C CNN
	1    4650 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 2200 5100 2200
Wire Wire Line
	4500 2200 4350 2200
Wire Wire Line
	4350 2200 4350 2550
Wire Wire Line
	4350 2550 4150 2550
Wire Wire Line
	3450 3800 4950 3800
Wire Wire Line
	3300 2750 3550 2750
Wire Wire Line
	3300 3950 4950 3950
Wire Wire Line
	3300 2000 4900 2000
Wire Wire Line
	3300 2200 4350 2200
Connection ~ 4350 2200
Wire Wire Line
	4150 2750 5500 2750
Wire Wire Line
	5800 2750 6000 2750
Connection ~ 6000 2750
Wire Wire Line
	4150 2950 6100 2950
$Comp
L Device:Fuse F200
U 1 1 603DFD27
P 6450 2950
F 0 "F200" V 6350 2950 50  0000 C CNN
F 1 "Fuse" V 6550 2950 50  0000 C CNN
F 2 "" V 6380 2950 50  0001 C CNN
F 3 "~" H 6450 2950 50  0001 C CNN
	1    6450 2950
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F199
U 1 1 603DB64B
P 6450 2750
F 0 "F199" V 6253 2750 50  0000 C CNN
F 1 "Fuse" V 6344 2750 50  0000 C CNN
F 2 "" V 6380 2750 50  0001 C CNN
F 3 "~" H 6450 2750 50  0001 C CNN
	1    6450 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 3150 6600 3150
$EndSCHEMATC
