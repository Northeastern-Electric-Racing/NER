EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 22 22
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
P 3550 2750
AR Path="/61EEF404" Ref="K?"  Part="1" 
AR Path="/61ECC7CF/61EEF404" Ref="K6"  Part="1" 
F 0 "K6" H 3550 2233 50  0000 C CNN
F 1 "Safety Relay" H 3550 2324 50  0000 C CNN
F 2 "Relay_THT:Relay_DPST_Fujitsu_FTR-F1A" H 3550 2350 50  0001 C CNN
F 3 "https://www.fujitsu.com/downloads/MICRO/fcai/relays/ftr-f1.pdf" H 3600 3300 50  0001 C CNN
	1    3550 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 61EEF40A
P 5650 2750
AR Path="/61EEF40A" Ref="F?"  Part="1" 
AR Path="/61ECC7CF/61EEF40A" Ref="F1"  Part="1" 
F 0 "F1" V 5750 2750 50  0000 C CNN
F 1 "15A" V 5550 2750 50  0000 C CNN
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
P 6950 4200
AR Path="/61EEF417" Ref="F?"  Part="1" 
AR Path="/61ECC7CF/61EEF417" Ref="F4"  Part="1" 
F 0 "F4" V 6753 4200 50  0000 C CNN
F 1 "20A" V 6844 4200 50  0000 C CNN
F 2 "" V 6880 4200 50  0001 C CNN
F 3 "~" H 6950 4200 50  0001 C CNN
	1    6950 4200
	0    1    -1   0   
$EndComp
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
	3150 3800 3150 2950
Wire Wire Line
	3150 2950 3250 2950
Wire Wire Line
	3000 2750 3000 3950
Text HLabel 3000 2550 0    50   Output ~ 0
Charger_Safety
Text HLabel 3000 2200 0    50   Output ~ 0
+12V
Text HLabel 7200 5450 3    50   Output ~ 0
TS+
Text HLabel 7300 5450 3    50   Output ~ 0
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
F 1 "TRH100A" H 5500 1874 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_HiLink_HLK-PMxx" H 5500 1800 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=56" H 5900 1750 50  0001 C CNN
	1    5500 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2200 6000 2200
Wire Wire Line
	5900 2000 6200 2000
Wire Wire Line
	5100 2000 4600 2000
Wire Wire Line
	4600 2000 4600 3150
Wire Wire Line
	4600 3150 4600 4200
Wire Wire Line
	3250 2550 3000 2550
Text HLabel 3000 2000 0    50   Output ~ 0
GND
Wire Wire Line
	7200 4200 7100 4200
$Comp
L Device:Fuse F?
U 1 1 6017BDE1
P 6950 4050
AR Path="/6017BDE1" Ref="F?"  Part="1" 
AR Path="/61ECC7CF/6017BDE1" Ref="F3"  Part="1" 
F 0 "F3" V 6753 4050 50  0000 C CNN
F 1 "20A" V 6844 4050 50  0000 C CNN
F 2 "" V 6880 4050 50  0001 C CNN
F 3 "~" H 6950 4050 50  0001 C CNN
	1    6950 4050
	0    -1   1    0   
$EndComp
Wire Wire Line
	7100 4050 7300 4050
$Comp
L Device:Fuse F2
U 1 1 5FA10442
P 4350 2200
F 0 "F2" V 4450 2200 50  0000 C CNN
F 1 "10A" V 4250 2200 50  0000 C CNN
F 2 "" V 4280 2200 50  0001 C CNN
F 3 "~" H 4350 2200 50  0001 C CNN
	1    4350 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 2200 5100 2200
Wire Wire Line
	4200 2200 4050 2200
Wire Wire Line
	4050 2200 4050 2550
Wire Wire Line
	4050 2550 3850 2550
Wire Wire Line
	3150 3800 4950 3800
Wire Wire Line
	3000 2750 3250 2750
Wire Wire Line
	3000 3950 4950 3950
Wire Wire Line
	3000 2000 4600 2000
Wire Wire Line
	3000 2200 4050 2200
Connection ~ 4050 2200
Wire Wire Line
	3850 2750 5500 2750
Wire Wire Line
	3850 2950 6200 2950
$Comp
L Device:Fuse F199
U 1 1 603DB64B
P 6450 2750
F 0 "F199" V 6253 2750 50  0000 C CNN
F 1 "15A" V 6344 2750 50  0000 C CNN
F 2 "" V 6380 2750 50  0001 C CNN
F 3 "~" H 6450 2750 50  0001 C CNN
	1    6450 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2950 6600 2950
$Comp
L Device:Fuse F86
U 1 1 6016ADF1
P 6000 2350
F 0 "F86" H 5750 2350 50  0000 L CNN
F 1 "1A" H 5750 2250 50  0000 L CNN
F 2 "" V 5930 2350 50  0001 C CNN
F 3 "~" H 6000 2350 50  0001 C CNN
	1    6000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2750 6000 2750
Wire Wire Line
	6000 2500 6000 2750
Connection ~ 6000 2750
Wire Wire Line
	6000 2750 6300 2750
Wire Wire Line
	6200 2000 6200 2950
Wire Wire Line
	7300 5450 7300 4050
Text Label 7200 4700 3    50   ~ 0
W1_2WG
Text Notes 6300 1700 0    79   ~ 0
All wires are 16 AWG unless specified
Text Label 7300 5000 1    50   ~ 0
W2_2AWG
Text Label 3450 2000 0    50   ~ 0
W3_18AWG
Text Label 3450 2200 0    50   ~ 0
W4_18AWG
Wire Wire Line
	6200 4050 6800 4050
Wire Wire Line
	6200 4200 6800 4200
Text Label 6350 4050 0    50   ~ 0
W5_8AWG
Text Label 6350 4200 0    50   ~ 0
W6_8AWG
Text HLabel 3000 4200 0    50   Input ~ 0
CAN_Shield
Wire Wire Line
	3000 4200 4600 4200
Connection ~ 4600 4200
Entry Wire Line
	7300 4050 7400 3950
Wire Wire Line
	7400 3950 7400 3500
Wire Wire Line
	7400 3500 6400 3500
Wire Wire Line
	6400 3500 6400 3150
Connection ~ 6400 3150
Wire Wire Line
	6400 3150 6600 3150
Text Label 7050 3500 0    50   ~ 0
TS_Shield
Entry Wire Line
	7200 4650 7100 4550
Wire Wire Line
	7100 4550 4600 4550
Wire Wire Line
	4600 4550 4600 4200
Wire Wire Line
	4600 4200 4950 4200
Text Label 6700 4550 0    50   ~ 0
TS_Shield
Connection ~ 4600 3150
Wire Wire Line
	4600 3150 6400 3150
Connection ~ 4600 2000
Connection ~ 6200 2950
Wire Wire Line
	7200 4200 7200 5450
$EndSCHEMATC
