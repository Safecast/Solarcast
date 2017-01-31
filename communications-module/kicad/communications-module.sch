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
LIBS:bme280
LIBS:nrf52832
LIBS:ina219
LIBS:fgpmmopa6h_gps
LIBS:fona_3g
LIBS:communications-module-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Solarcast Communications Module"
Date "2017-01-30"
Rev "1.0"
Comp "Institute IRNAS Rače"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L nRF52832 U?
U 1 1 588F3F37
P 5395 4345
F 0 "U?" H 5695 5045 60  0000 C CNN
F 1 "nRF52832" H 5870 4945 60  0000 C CNN
F 2 "nRF52832:nRF52832-SMD" H 5820 4820 60  0001 C CNN
F 3 "" H 5395 4345 60  0000 C CNN
	1    5395 4345
	1    0    0    -1  
$EndComp
$Comp
L FONA_3G U?
U 1 1 58903E2F
P 2270 3910
F 0 "U?" H 2170 5060 60  0000 C CNN
F 1 "FONA_3G" H 2320 4960 60  0000 C CNN
F 2 "FONA_3G:FONA_3G" H 2345 2935 60  0001 C CNN
F 3 "" H 2320 5035 60  0000 C CNN
	1    2270 3910
	1    0    0    -1  
$EndComp
$Comp
L BME280 U?
U 1 1 58903F27
P 5775 2110
F 0 "U?" H 5700 2335 60  0000 C CNN
F 1 "BME280" H 5725 1810 60  0000 C CNN
F 2 "BME280:BME280" H 5725 1710 60  0001 C CNN
F 3 "" H 5775 2110 60  0000 C CNN
	1    5775 2110
	1    0    0    -1  
$EndComp
$EndSCHEMATC
