EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Solder Snorter"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L solder-snorter:MCP73831 U1
U 1 1 5EBA84C8
P 4550 1475
F 0 "U1" H 4550 1940 50  0000 C CNN
F 1 "MCP73831" H 4550 1849 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 4550 1475 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/268/20001984g-846362.pdf" H 4550 1475 50  0001 C CNN
F 4 "MCP73831T-2ACI/OT" H 4550 1475 50  0001 C CNN "MPN"
	1    4550 1475
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5EBA959A
P 2250 1475
F 0 "J1" H 2307 1942 50  0000 C CNN
F 1 "USB_B_Micro" H 2307 1851 50  0000 C CNN
F 2 "solder-snorter:USB_Micro-B_Amphenol_10118194-0001LF" H 2400 1425 50  0001 C CNN
F 3 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/10118194.pdf" H 2400 1425 50  0001 C CNN
F 4 "10118194-0001LF" H 2250 1475 50  0001 C CNN "MPN"
	1    2250 1475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EBAB1F0
P 2250 2025
F 0 "#PWR01" H 2250 1775 50  0001 C CNN
F 1 "GND" H 2255 1852 50  0000 C CNN
F 2 "" H 2250 2025 50  0001 C CNN
F 3 "" H 2250 2025 50  0001 C CNN
	1    2250 2025
	1    0    0    -1  
$EndComp
NoConn ~ 2550 1475
NoConn ~ 2550 1575
NoConn ~ 2550 1675
$Comp
L Device:C C1
U 1 1 5EBABA0D
P 2950 1650
F 0 "C1" H 3065 1696 50  0000 L CNN
F 1 "4.7U" H 3065 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2988 1500 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/210/WTC_MLCC_General_Purpose-1534899.pdf" H 2950 1650 50  0001 C CNN
F 4 "0805X475M250CT" H 2950 1650 50  0001 C CNN "MPN"
	1    2950 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5EBAC1E0
P 5000 2025
F 0 "#PWR03" H 5000 1775 50  0001 C CNN
F 1 "GND" H 5005 1852 50  0000 C CNN
F 2 "" H 5000 2025 50  0001 C CNN
F 3 "" H 5000 2025 50  0001 C CNN
	1    5000 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1675 5000 1675
$Comp
L Device:Battery_Cell BT1
U 1 1 5EBAD3B9
P 6225 1550
F 0 "BT1" H 6343 1646 50  0000 L CNN
F 1 "Battery_Cell" H 6343 1555 50  0000 L CNN
F 2 "solder-snorter:BatteryHolder_Keystone_54_1x18650" V 6225 1610 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/215/4-745936.pdf" V 6225 1610 50  0001 C CNN
F 4 "Keystone 54 (x 2)" H 6225 1550 50  0001 C CNN "MPN"
	1    6225 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 1275 6225 1350
$Comp
L power:GND #PWR04
U 1 1 5EBAE078
P 6225 2000
F 0 "#PWR04" H 6225 1750 50  0001 C CNN
F 1 "GND" H 6230 1827 50  0000 C CNN
F 2 "" H 6225 2000 50  0001 C CNN
F 3 "" H 6225 2000 50  0001 C CNN
	1    6225 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 2000 6225 1650
$Comp
L Device:R R2
U 1 1 5EBB2916
P 5175 1725
F 0 "R2" H 5245 1771 50  0000 L CNN
F 1 "2K" H 5245 1680 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5105 1725 50  0001 C CNN
F 3 "~" H 5175 1725 50  0001 C CNN
	1    5175 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1475 5175 1475
Wire Wire Line
	5175 1475 5175 1575
Wire Wire Line
	5175 1875 5175 2000
Wire Wire Line
	5175 2000 5000 2000
Connection ~ 5000 2000
Wire Wire Line
	5000 2000 5000 2025
Text Notes 4950 2550 0    50   ~ 0
* R2 = 2kΩ is for\n  500mA charge current
Text Notes 5350 1775 0    50   ~ 0
*
Text Notes 3450 2650 0    50   ~ 0
STAT is low when charging,\nhigh when charged:\nD1 = red\nD2 = green
$Comp
L Device:LED D1
U 1 1 5EBB3A5D
P 3550 1575
F 0 "D1" H 3725 1450 50  0000 C CNN
F 1 "LED" H 3700 1525 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3550 1575 50  0001 C CNN
F 3 "~" H 3550 1575 50  0001 C CNN
	1    3550 1575
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5EBB48F6
P 3550 1800
F 0 "D2" H 3675 1750 50  0000 C CNN
F 1 "LED" H 3700 1675 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3550 1800 50  0001 C CNN
F 3 "~" H 3550 1800 50  0001 C CNN
	1    3550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1675 5000 2000
$Comp
L Device:R R1
U 1 1 5EBB92B4
P 3975 1675
F 0 "R1" V 3768 1675 50  0000 C CNN
F 1 "470" V 3859 1675 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3905 1675 50  0001 C CNN
F 3 "~" H 3975 1675 50  0001 C CNN
	1    3975 1675
	0    1    1    0   
$EndComp
Wire Wire Line
	4125 1675 4200 1675
Wire Wire Line
	3825 1675 3750 1675
Wire Wire Line
	3750 1675 3750 1575
Wire Wire Line
	3750 1575 3700 1575
Wire Wire Line
	3700 1800 3750 1800
Wire Wire Line
	3750 1800 3750 1675
Connection ~ 3750 1675
Wire Wire Line
	2550 1275 2950 1275
Wire Wire Line
	3400 1575 3275 1575
Wire Wire Line
	3275 1575 3275 1275
Connection ~ 3275 1275
Wire Wire Line
	3275 1275 4200 1275
$Comp
L power:GND #PWR02
U 1 1 5EBBE1BA
P 3250 2050
F 0 "#PWR02" H 3250 1800 50  0001 C CNN
F 1 "GND" H 3255 1877 50  0000 C CNN
F 2 "" H 3250 2050 50  0001 C CNN
F 3 "" H 3250 2050 50  0001 C CNN
	1    3250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1800 3250 1800
Wire Wire Line
	3250 1800 3250 1975
Wire Wire Line
	2950 1500 2950 1275
Connection ~ 2950 1275
Wire Wire Line
	2950 1275 3275 1275
Wire Wire Line
	2950 1800 2950 1975
Wire Wire Line
	2950 1975 3250 1975
Connection ~ 3250 1975
Wire Wire Line
	3250 1975 3250 2050
$Comp
L Device:C C2
U 1 1 5EBC0AFF
P 5550 1650
F 0 "C2" H 5665 1696 50  0000 L CNN
F 1 "4.7U" H 5665 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5588 1500 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/210/WTC_MLCC_General_Purpose-1534899.pdf" H 5550 1650 50  0001 C CNN
F 4 "0805X475M250CT" H 5550 1650 50  0001 C CNN "MPN"
	1    5550 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1275 5550 1275
Wire Wire Line
	5550 1500 5550 1275
Connection ~ 5550 1275
Wire Wire Line
	5550 1275 6225 1275
Wire Wire Line
	5550 1800 5550 2000
Wire Wire Line
	5550 2000 5175 2000
Connection ~ 5175 2000
Wire Notes Line
	1900 825  6875 825 
Wire Notes Line
	6875 825  6875 2775
Wire Notes Line
	1900 825  1900 2775
Wire Notes Line
	1900 2775 6875 2775
Text Notes 1925 2975 0    79   ~ 16
CHARGING
$Comp
L Device:L L1
U 1 1 5EBD4742
P 4525 3575
F 0 "L1" V 4715 3575 50  0000 C CNN
F 1 "10U" V 4624 3575 50  0000 C CNN
F 2 "solder-snorter:L_Murata_FDSD0420-H-100M" H 4525 3575 50  0001 C CNN
F 3 "https://search.murata.co.jp/Ceramy/image/img/P02/J(E)TE243B-0001_FDSD0420_reference.pdf" H 4525 3575 50  0001 C CNN
F 4 "FDSD0420-H-100M=P3" H 4525 3575 50  0001 C CNN "MPN"
	1    4525 3575
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5EBD521D
P 3550 4475
F 0 "C3" H 3665 4521 50  0000 L CNN
F 1 "2.2U" H 3665 4430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 4325 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/210/WTC_MLCC_General_Purpose-1534899.pdf" H 3550 4475 50  0001 C CNN
F 4 "0805X225M160CT" H 3550 4475 50  0001 C CNN "MPN"
	1    3550 4475
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5EBD5551
P 5350 4475
F 0 "C4" H 5465 4521 50  0000 L CNN
F 1 "10U" H 5465 4430 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5388 4325 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/212/KEM_C1006_X5R_SMD-1103249.pdf" H 5350 4475 50  0001 C CNN
F 4 "C0805C106K4PAC" H 5350 4475 50  0001 C CNN "MPN"
	1    5350 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4050 4175 4050
$Comp
L solder-snorter:TLV61046A U2
U 1 1 5EBD8146
P 4525 4250
F 0 "U2" H 4525 4715 50  0000 C CNN
F 1 "TLV61046A" H 4525 4624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4525 4250 79  0001 C CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=26&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fds%2Fsymlink%2Ftlv61046a.pdf" H 4525 4250 79  0001 C CNN
F 4 "TLV61046ADBVR" H 4525 4250 50  0001 C CNN "MPN"
	1    4525 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4375 3575 4100 3575
Wire Wire Line
	4100 3575 4100 4050
Wire Wire Line
	4675 3575 4950 3575
Wire Wire Line
	4950 3575 4950 4050
Wire Wire Line
	4950 4050 4875 4050
$Comp
L power:GND #PWR08
U 1 1 5EBDAAF6
P 5025 4750
F 0 "#PWR08" H 5025 4500 50  0001 C CNN
F 1 "GND" H 5030 4577 50  0000 C CNN
F 2 "" H 5025 4750 50  0001 C CNN
F 3 "" H 5025 4750 50  0001 C CNN
	1    5025 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4875 4450 5025 4450
Wire Wire Line
	5025 4450 5025 4725
Wire Wire Line
	4875 4250 5350 4250
Wire Wire Line
	5350 4325 5350 4250
Wire Wire Line
	5350 4625 5350 4725
Wire Wire Line
	5350 4725 5025 4725
Connection ~ 5025 4725
Wire Wire Line
	5025 4725 5025 4750
Wire Wire Line
	4100 4050 3900 4050
Wire Wire Line
	3550 4050 3550 4325
Connection ~ 4100 4050
$Comp
L power:GND #PWR07
U 1 1 5EBE0B59
P 3550 4750
F 0 "#PWR07" H 3550 4500 50  0001 C CNN
F 1 "GND" H 3555 4577 50  0000 C CNN
F 2 "" H 3550 4750 50  0001 C CNN
F 3 "" H 3550 4750 50  0001 C CNN
	1    3550 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4750 3550 4625
Wire Wire Line
	4175 4450 3900 4450
Wire Wire Line
	3900 4450 3900 4250
Connection ~ 3900 4050
Wire Wire Line
	3900 4050 3550 4050
Wire Wire Line
	4175 4250 3900 4250
Connection ~ 3900 4250
Wire Wire Line
	3900 4250 3900 4050
Text GLabel 6550 1275 2    50   Input ~ 0
VBAT
Wire Wire Line
	6550 1275 6225 1275
Connection ~ 6225 1275
$Comp
L power:+12V #PWR09
U 1 1 5EBE86C4
P 5650 4150
F 0 "#PWR09" H 5650 4000 50  0001 C CNN
F 1 "+12V" H 5665 4323 50  0000 C CNN
F 2 "" H 5650 4150 50  0001 C CNN
F 3 "" H 5650 4150 50  0001 C CNN
	1    5650 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4250 5650 4250
Wire Wire Line
	5650 4250 5650 4150
Connection ~ 5350 4250
Text GLabel 3225 4050 0    50   Input ~ 0
VBATSW
Wire Wire Line
	3225 4050 3550 4050
Connection ~ 3550 4050
Wire Notes Line
	1900 3250 6875 3250
Wire Notes Line
	6875 3250 6875 5200
Wire Notes Line
	1900 3250 1900 5200
Wire Notes Line
	1900 5200 6875 5200
Text Notes 1925 5400 0    79   ~ 16
BOOSTING TO 12V
$Comp
L Motor:Fan M1
U 1 1 5EBFB7AC
P 8675 4900
F 0 "M1" H 8833 4996 50  0000 L CNN
F 1 "Fan" H 8833 4905 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 8675 4910 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/670/cfm-80v-1776226.pdf" H 8675 4910 50  0001 C CNN
F 4 "CFM-8025V-132-330" H 8675 4900 50  0001 C CNN "MPN"
	1    8675 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EBFCB9A
P 8675 5175
F 0 "#PWR06" H 8675 4925 50  0001 C CNN
F 1 "GND" H 8680 5002 50  0000 C CNN
F 2 "" H 8675 5175 50  0001 C CNN
F 3 "" H 8675 5175 50  0001 C CNN
	1    8675 5175
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR05
U 1 1 5EBFE335
P 8675 4525
F 0 "#PWR05" H 8675 4375 50  0001 C CNN
F 1 "+12V" H 8690 4698 50  0000 C CNN
F 2 "" H 8675 4525 50  0001 C CNN
F 3 "" H 8675 4525 50  0001 C CNN
	1    8675 4525
	1    0    0    -1  
$EndComp
Text Notes 8225 5675 0    79   ~ 16
FAN
Wire Wire Line
	8675 4525 8675 4600
Wire Wire Line
	8675 5175 8675 5100
Wire Notes Line
	8200 4175 9275 4175
Wire Notes Line
	9275 4175 9275 5525
Wire Notes Line
	9275 5525 8200 5525
Wire Notes Line
	8200 5525 8200 4175
Text Notes 5175 3625 0    50   ~ 0
Set up for fixed 12V DC operation
Text GLabel 3150 6475 2    50   Input ~ 0
VBATSW
Wire Wire Line
	3150 6475 2950 6475
Text GLabel 2350 6375 0    50   Input ~ 0
VBAT
Wire Wire Line
	2350 6375 2550 6375
Wire Notes Line
	1900 5700 3650 5700
Wire Notes Line
	3650 5700 3650 7050
Wire Notes Line
	3650 7050 1900 7050
Wire Notes Line
	1900 7050 1900 5700
Text Notes 1925 7200 0    79   ~ 16
SWITCH
Text Notes 8225 6050 0    50   ~ 0
I wasn't sure whether I'd need\nsome sort of protection diode\naround the fan, but we'll see\nhow we do without.
Text Notes 3775 6425 0    50   ~ 0
I had all these great plans to do some sort of clever touch\nswitch thing instead of having a normal switch. Seemed like\na simple idea. But if you want something that will draw\nnegligible current when the thing is off (i.e. not much more\nthan a MOSFET gate leakage current), it all gets more difficult.\n\nFar too difficult for me, anyway. So I admitted defeat, since\nthe main purpose of this project was to learn a bit about\nbattery charging and power conversion.
Text Notes 7025 1125 0    50   ~ 0
This is more or less following the circuit in the MCP73831 datasheet,\nwith just one small change: "charging" and "charge done" LEDs, since\nthe STAT pin is tri-state. High impedance means "no battery", low\nmeans charging, high means charged.
Text Notes 7025 3400 0    50   ~ 0
Another "copy the datasheet" setup. The TLV61046A has a nice simplified\nsetup for 12V operation, which is what's needed for the fan here.
Wire Wire Line
	2250 1875 2250 2025
NoConn ~ 2150 1875
$Comp
L Switch:SW_SPDT SW1
U 1 1 5EC07698
P 2750 6375
F 0 "SW1" H 2750 6660 50  0000 C CNN
F 1 "SW_SPDT" H 2750 6569 50  0000 C CNN
F 2 "solder-snorter:SW_SPDT_OS102011MA1QN1" H 2750 6375 50  0001 C CNN
F 3 "https://www.mouser.at/datasheet/2/60/os-1841429.pdf" H 2750 6375 50  0001 C CNN
F 4 "OS102011MA1QN1" H 2750 6375 50  0001 C CNN "MPN"
	1    2750 6375
	1    0    0    -1  
$EndComp
$EndSCHEMATC
