### Communications Module testing:
Purpose of this testing is to verify correct operation of assembled circuit boards.

## Voltage and current check:
Validating correct operation of power switches, supplies and other devices.

1. Connect Amp meter on J15 on IoT Battery Pack
 * Expect reading of about 0.12mA
1. Connect IoT battery pack with IDC10 cable to Comms board
 * Expect D3 to start blinking and about 28mA current draw
1. Connect computer to programmer with micro-USB cable
 * Expect the device to appear as MBED USB drive.
 * Upload solarcast-powerdebug-on.bin firmware
1. Disconnect USB and power cycle
 * Expect D1 red LED to be on
 * Expect D2 yellow LED to be on
 * Expect D3 red LED to be blinking
 * Expect current draw of about 27mA
 * Expect the following voltages on power switch outputs
  * JP17 - TWI - 3.3V
  * JP22 - FONA_VBAT - Vbat (3.5-4.2V)
  * JP18 - FONA_3V3 - 3.3V
  * JP19 - GPS - 3.3V
  * JP21 - LORA - 5.0V
  * JP20 - ROCK - 5.0V
  * JP11 - AIR - 5.0V
  * JP12 - GEIGER - 5.0V
 * Expect PWR-SWITCH-OC pin to be high (3.3V)

 
  








* U1 nRF52832:
  * measure 3.3V on pins 18
  * check if programming OK

* U4 PWR_CONN:
  * measure 5V on pin 3
  * measure 3.3V on pin 5
  * measure battery voltage on pin 7
  * check ENABLE-5V
  * check ENABLE-VBAT
  * I2C scan
  
* U3 TPS2064:
  * measure 5V on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-RESERV, measure 5V on pin 6
  * check ENABLE-BACKUP, measure 5V on pin 7

* U5 TPS2064:
  * measure 5V on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-RESERV, measure 5V on pin 6
  * check ENABLE-BACKUP, measure 5V on pin 7
  
* J1 IDC12:
  * measure 5V on pin 1
  * I2C scan
  * check SPI
  * check UART
 
* P2 USB_A:
  * check if programming OK
  * check pulses on GEIGER0,GEIGER1

* P3,P4 USB_A:
  * check if programming OK
  * I2C scan
  
* U7,U9 I2C_connector:
  * check 3.3V on pin 2
  * I2C scan
  
* U8 BME280:
  * check 3.3V on pins 2,6,8
  * I2C scan
  
* U10 LIS3DH_breakout:
  * check 3.3V on pin 1
  * I2C scan
  * check ACC_INT
  
* U6 TPS2064:
  * measure 3.3V on pins 2,5,8
  * check ENABLE-TWI, measure 3.3V on pin 7

* U11 FONA_3G:
  * check VBAT on pin 2
  * check 3.3V on pin 4
  * check UART

* U13 RockBLOCK:
  * check 5V on pins 4,8
  * check UART
  * check 3.3V on pin 12

* U16 FGPMMOPA6H GPS:
  * check 3.3V on pin 1
  * check VBAT on pin 4
  * check LED D3 blinking
  * check UART
  
* U19 Gateway Module LORA:
  * check 5V on pins 2,4
  * check UART

* U14,U18 SN74LV4052A:
  * check UART multiplexing

* U20 TPS2064:
  * measure VBAT on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-FONA, measure VBAT on pin 7
  
* U12 TPS2064:
  * measure 3.3V on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-FONA, measure 3.3V on pin 7
  * check ENABLE-GPS, measure 3.3V on pin 6
  
* U15 TPS2064:
  * measure 5V on pin 2
  * measure 3.3V on pins 5,8
  * check ENABLE-ROCK, measure 5V on pin 7
  * check ENABLE-LORA, measure 5V on pin 6
