# Gateway module for Solarcast
Gateway module implements LORA communication for two purposes, installing it inside the Solarcast device as a LORA communications module as well as attachign it to a RaspberryPi to act as a gateway.

## Design specification
* LORA module [Microchip RN2483](http://www.microchip.com/wwwproducts/en/RN2483) for EU band, alternatively RN2903 for US band
* SMA connector for 434MHz (RF layout guide on [datasheet page 10](http://ww1.microchip.com/downloads/en/DeviceDoc/50002346B.pdf))
* SMA connector for 868MHz (RF layout guide on [datasheet page 10](http://ww1.microchip.com/downloads/en/DeviceDoc/50002346B.pdf))
* SSD1306 i2c display
* 5V power supply and an on board 3V3 regulator, such that it can eb used directly from 3V3 as well\
* Status LED for each RPi and LORA module
* Temperature and humidity sensor BME260 sensor (I2C SDO high 0x77)

## Connection details
The devices have the following connection details:

*  RN2483 module
 * Connect UART (RX,TX,RTS,CTS)
 * LED on GPIO
*  RaspberryPi
  * Connect UART (RX,TX,RTS,CTS)
  * Connect I2C
  * Connect an LED to GPIO

## Board layout
The PCB board is a RaspberryPi shield.
