EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 8 24
Title "HV Plate"
Date "2021-04-15"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R?
U 1 1 608CF874
P 6150 3350
F 0 "R?" H 5750 3450 50  0000 C CNN
F 1 "PCharge: 600R" H 5750 3350 50  0000 C CNN
F 2 "" V 6080 3350 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/418/5/ENG_CD_1625999_AH2-686901.pdf" H 6150 3350 50  0001 C CNN
	1    6150 3350
	-1   0    0    -1  
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 608D0328
P 3450 5750
F 0 "K?" V 2883 5750 50  0000 C CNN
F 1 "AIR-: GX14" V 2974 5750 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 3800 5700 50  0001 L CNN
F 3 "https://www.gigavac.com/sites/default/files/catalog/spec_sheet/gx14.pdf" H 3450 5750 50  0001 C CNN
	1    3450 5750
	0    1    1    0   
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 608D24D5
P 4650 3750
F 0 "K?" V 4083 3750 50  0000 C CNN
F 1 "AIR+: GX14" V 4174 3750 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 5000 3700 50  0001 L CNN
F 3 "https://www.gigavac.com/sites/default/files/catalog/spec_sheet/gx14.pdf" H 4650 3750 50  0001 C CNN
	1    4650 3750
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 608D366E
P 2400 3950
F 0 "F?" V 2203 3950 50  0000 C CNN
F 1 "TS Fuse: 200A" V 2294 3950 50  0000 C CNN
F 2 "" V 2330 3950 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/240/L50QS_High_Speed_Fuse_Datasheet-1102248.pdf" H 2400 3950 50  0001 C CNN
	1    2400 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 608CEF02
P 7000 4450
F 0 "R?" H 6650 4550 50  0000 C CNN
F 1 "DCharge: 3.3K" H 6650 4450 50  0000 C CNN
F 2 "" V 6930 4450 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/418/3/NG_CS_1309350_PASSIVE_COMPONENT_0807-1235206.pdf" H 7000 4450 50  0001 C CNN
	1    7000 4450
	1    0    0    -1  
$EndComp
$Comp
L Relay:MSxx-1Bxx-75 K?
U 1 1 608D570D
P 5600 5000
F 0 "K?" V 5033 5000 50  0000 C CNN
F 1 "DCharge: PNC113" V 5124 5000 50  0000 C CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 5950 4950 50  0001 L CNN
F 3 "https://www.gigavac.com/sites/default/files/catalog/spec_sheet/PNC113_DATASHEET_rev_C.pdf" H 5600 5000 50  0001 C CNN
	1    5600 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60827E73
P 8950 3500
F 0 "R?" H 8880 3454 50  0000 R CNN
F 1 "TSMP+: 10K" H 8880 3545 50  0000 R CNN
F 2 "" V 8880 3500 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7F1773035%7FC%7Fpdf%7FEnglish%7FENG_DS_1773035_C.pdf%7F1625984-3" H 8950 3500 50  0001 C CNN
	1    8950 3500
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 608282DF
P 9050 3500
F 0 "R?" H 8980 3454 50  0000 R CNN
F 1 "TSMP-: 10K" H 8980 3545 50  0000 R CNN
F 2 "" V 8980 3500 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&DocId=Data+Sheet%7F1773035%7FC%7Fpdf%7FEnglish%7FENG_DS_1773035_C.pdf%7F1625984-3" H 9050 3500 50  0001 C CNN
	1    9050 3500
	-1   0    0    1   
$EndComp
$Comp
L NER:OrionCurrentSens U?
U 1 1 6082A419
P 2150 4950
AR Path="/5F45B05E/6082A419" Ref="U?"  Part="1" 
AR Path="/5F45B05E/6082840F/6082A419" Ref="U5"  Part="1" 
AR Path="/60C39CCE/6082840F/6082A419" Ref="U?"  Part="1" 
F 0 "U?" V 1700 4400 50  0000 C CNN
F 1 "OrionCurrentSens" V 1600 4400 50  0000 C CNN
F 2 "" H 2150 4950 50  0001 C CNN
F 3 "" H 2150 4950 50  0001 C CNN
	1    2150 4950
	0    1    1    0   
$EndComp
Text HLabel 9800 6300 2    50   Input ~ 0
CurrentSensor
Text HLabel 9700 3950 2    50   Input ~ 0
TS+
Text HLabel 9700 4100 2    50   Input ~ 0
TS-
Text HLabel 4100 5550 2    50   Input ~ 0
AIR-_SigL
Text HLabel 4950 4800 0    50   Input ~ 0
DCharge_SigH
Text HLabel 1100 4100 0    50   Input ~ 0
Segment-
Entry Wire Line
	1050 4750 950  4850
Entry Wire Line
	1050 4900 950  5000
Entry Wire Line
	1050 5050 950  5150
Entry Wire Line
	1050 5200 950  5300
Wire Wire Line
	1050 4750 1500 4750
Wire Wire Line
	1050 4900 1500 4900
Wire Wire Line
	1050 5050 1500 5050
Wire Wire Line
	1050 5200 1500 5200
Text Label 1400 4750 2    50   ~ 0
CS_5V
Text Label 1400 4900 2    50   ~ 0
CS_H
Text Label 1400 5050 2    50   ~ 0
CS_GND
Text Label 1400 5200 2    50   ~ 0
CS_L
Text HLabel 1100 3950 0    50   Input ~ 0
Segment+
Text HLabel 4000 3550 0    50   Input ~ 0
AIR+_SigH
Text HLabel 5300 3550 2    50   Input ~ 0
AIR+_SigL
Wire Wire Line
	4350 3550 4000 3550
Wire Wire Line
	4950 3550 5300 3550
Wire Wire Line
	3150 5950 2000 5950
Wire Wire Line
	3750 5950 5000 5950
Text HLabel 2750 5550 0    50   Input ~ 0
AIR-_SigH
Wire Wire Line
	2750 5550 3150 5550
Wire Wire Line
	4100 5550 3750 5550
Text Notes 2850 5550 0    50   ~ 0
20AWG
Text Notes 3800 5550 0    50   ~ 0
20AWG
Text Notes 4050 3550 0    50   ~ 0
20AWG
Text Notes 5000 3550 0    50   ~ 0
20AWG
Text HLabel 6250 4800 2    50   Input ~ 0
DCharge_SigL
Wire Wire Line
	5300 4800 4950 4800
Text Notes 5000 4800 0    50   ~ 0
22AWG
Wire Wire Line
	6250 4800 5900 4800
Text Notes 5950 4800 0    50   ~ 0
22AWG
Wire Wire Line
	5300 5200 5000 5200
Wire Wire Line
	5000 5200 5000 5950
Connection ~ 5000 5950
Wire Wire Line
	5000 5950 7550 5950
Wire Wire Line
	7000 4300 7000 3950
Connection ~ 7000 3950
Wire Wire Line
	7000 3950 6150 3950
Wire Wire Line
	7000 4600 7000 5200
Wire Wire Line
	7000 5200 5900 5200
Wire Wire Line
	6150 3500 6150 3950
Connection ~ 6150 3950
Wire Wire Line
	6150 3950 4950 3950
Wire Wire Line
	3300 2850 3300 3950
Wire Wire Line
	1100 3950 1750 3950
Wire Wire Line
	1100 4100 1850 4100
Text HLabel 9700 2900 2    50   Input ~ 0
TSMP-
Text HLabel 9700 2350 2    50   Input ~ 0
IMD_HV_Sense+
Wire Wire Line
	7950 2450 7950 2800
$Comp
L Device:Fuse F?
U 1 1 608289D7
P 7850 2950
F 0 "F?" H 7650 3050 50  0000 C CNN
F 1 "IMD Fuse+: 0.5A" H 7450 2950 50  0000 C CNN
F 2 "" V 7780 2950 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/240/Littelfuse_Fuse_477_Datasheet_pdf-555535.pdf" H 7850 2950 50  0001 C CNN
	1    7850 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 608D8D1E
P 7950 2950
F 0 "F?" H 7750 3050 50  0000 C CNN
F 1 "IMD Fuse-: 0.5A" H 7550 2950 50  0000 C CNN
F 2 "" V 7880 2950 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/240/Littelfuse_Fuse_477_Datasheet_pdf-555535.pdf" H 7950 2950 50  0001 C CNN
	1    7950 2950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7850 2350 7850 2800
Text HLabel 9700 2800 2    50   Input ~ 0
TSMP+
Wire Wire Line
	7550 4100 7950 4100
Wire Wire Line
	7000 3950 7850 3950
Wire Wire Line
	7950 3100 7950 4100
Connection ~ 7950 4100
Wire Wire Line
	7950 4100 9050 4100
Wire Wire Line
	7850 3100 7850 3950
Connection ~ 7850 3950
Wire Wire Line
	7850 3950 8950 3950
Text HLabel 9700 2450 2    50   Input ~ 0
IMD_HV_Sense-
Wire Wire Line
	9050 3650 9050 4100
Connection ~ 9050 4100
Wire Wire Line
	9050 4100 9700 4100
Wire Wire Line
	8950 3650 8950 3950
Connection ~ 8950 3950
Wire Wire Line
	8950 3950 9700 3950
Wire Wire Line
	8950 3350 8950 2800
Wire Wire Line
	8950 2800 9700 2800
Wire Wire Line
	9050 3350 9050 2900
Wire Wire Line
	9050 2900 9700 2900
Wire Wire Line
	7950 2450 9700 2450
Text Notes 5000 2450 0    50   ~ 0
22AWG
Text Notes 4050 2450 0    50   ~ 0
22AWG
Wire Wire Line
	5300 2450 4950 2450
Wire Wire Line
	4000 2450 4350 2450
Text HLabel 4000 2450 0    50   Input ~ 0
PCharge_SigH
Wire Wire Line
	6150 2850 4950 2850
Wire Wire Line
	6150 3200 6150 2850
Text HLabel 5300 2450 2    50   Input ~ 0
PCharge_SigL
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 608D1508
P 4650 2650
F 0 "K?" V 4083 2650 50  0000 C CNN
F 1 "PCharge: P105BDA" V 4174 2650 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 5000 2600 50  0001 L CNN
F 3 "https://dc-components.com/wp-content/uploads/2019/02/p105.pdf" H 4650 2650 50  0001 C CNN
	1    4650 2650
	0    1    1    0   
$EndComp
Text Notes 8350 3950 0    50   ~ 0
2AWG
Text Notes 3550 3950 0    50   ~ 0
2AWG
Text Notes 1250 4100 0    50   ~ 0
2AWG
Text Notes 5750 5950 0    50   ~ 0
2AWG
Text Notes 8350 4100 0    50   ~ 0
2AWG
Text Notes 7800 3750 2    50   ~ 0
2x 22AWG
Text Notes 8900 3750 2    50   ~ 0
2x 22AWG
Text Notes 600  4800 0    50   ~ 0
4x 22AWG
Text Notes 9550 2350 2    50   ~ 0
2x 22AWG
Text Notes 9550 2800 2    50   ~ 0
2x 22AWG
Text Notes 3250 3750 2    50   ~ 0
??AWG
Text Notes 5450 2850 0    50   ~ 0
22AWG
Text Notes 6200 3750 0    50   ~ 0
22AWG
Wire Wire Line
	3300 2850 4350 2850
Connection ~ 3300 3950
Wire Wire Line
	3300 3950 4350 3950
Wire Wire Line
	2550 3950 3300 3950
Text Notes 1250 3950 0    50   ~ 0
2AWG
Text Notes 7050 4200 0    50   ~ 0
22AWG
Text Notes 6150 5200 0    50   ~ 0
22AWG
Text Notes 4950 5750 2    50   ~ 0
22AWG
Text HLabel 9700 1800 2    50   Input ~ 0
TSAL_TS+
Text HLabel 9700 1900 2    50   Input ~ 0
TSAL_TS-
Text HLabel 9700 1200 2    50   Input ~ 0
TSAL_BATT+
Text HLabel 9700 1300 2    50   Input ~ 0
TSAL_BATT-
Wire Wire Line
	9700 1800 7850 1800
Wire Wire Line
	7850 1800 7850 2350
Connection ~ 7850 2350
Wire Wire Line
	9700 1900 7950 1900
Text Notes 9550 1800 2    50   ~ 0
2x 22AWG
Text Notes 9550 1200 2    50   ~ 0
2x 22AWG
$Comp
L Device:Fuse F?
U 1 1 6091E6DC
P 1850 2950
F 0 "F?" H 1700 3050 50  0000 C CNN
F 1 "TSAL Fuse-: ??A" H 1450 2950 50  0000 C CNN
F 2 "" V 1780 2950 50  0001 C CNN
F 3 "~" H 1850 2950 50  0001 C CNN
	1    1850 2950
	-1   0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 6091E6D6
P 1750 2950
F 0 "F?" H 1600 3050 50  0000 C CNN
F 1 "TSAL Fuse+: ??A" H 1350 2950 50  0000 C CNN
F 2 "" V 1680 2950 50  0001 C CNN
F 3 "~" H 1750 2950 50  0001 C CNN
	1    1750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3100 1750 3950
Connection ~ 1750 3950
Wire Wire Line
	1750 3950 2250 3950
Wire Wire Line
	1850 3100 1850 4100
Connection ~ 1850 4100
Wire Wire Line
	1850 4100 2000 4100
Wire Wire Line
	9700 1200 1750 1200
Wire Wire Line
	1750 1200 1750 2800
Wire Wire Line
	9700 1300 1850 1300
Wire Wire Line
	1850 1300 1850 2800
Text Notes 1700 3700 2    50   ~ 0
2x 22AWG
Wire Wire Line
	7850 2350 9700 2350
Wire Wire Line
	7950 1900 7950 2450
Connection ~ 7950 2450
Wire Bus Line
	950  6300 9800 6300
Wire Wire Line
	2000 4100 2000 4550
Wire Wire Line
	2000 5350 2000 5950
Wire Wire Line
	7550 4100 7550 5950
Wire Bus Line
	950  4850 950  6300
$EndSCHEMATC
