# Communications module for Solarcast
Communications module operates as the main module for the complete Solarcast assembly and is primarily a BLE device with other comms modules being plugged in.

## Design specification
* NRF module [nRF52832 ANT](https://www.tindie.com/products/hnhoan/nrf52832-ant-bluetooth-le-arm-cortex-m4f-30-io/)
* Programmer [CMSIS-DAP](https://www.tindie.com/products/hnhoan/cmsis-dap-arm-debug-jtagswd-module-drag-and-drop/)
* INA219 sensor on the board
* [GPS module](https://www.adafruit.com/products/790)
* [Adafruit FONA 3G module](https://www.adafruit.com/products/2691) (Note version difference between USA and EU)
* GSM antenna [FXUB66.07.0150C](http://www.mouser.com/ProductDetail/Taoglas/FXUB66070150C/?qs=L8NdhHdZHXxzH3hw8Na69A%3D%3D)
* LORA antenna [FXUB66.01.0150C](http://www.mouser.com/ProductDetail/Taoglas/FXUB66010150C/?qs=sGAEpiMZZMuBTKBKvsBmlEt2wojY8dgW39nSVW3ZfN0%3d)
* BME280 sensor (SDO low 0x76)
* Add accelerometer [LIS3DSH](https://www.adafruit.com/products/2809) footprint for the ic and pins for breakout
* UART MUX SN74LV4052AD SOIC-16
* USB connector to outside world http://eu.mouser.com/ProductDetail/Conxall-Switchcraft/DCP-USBCB-SC/?qs=sGAEpiMZZMulM8LPOQ%252byk0tOUVtDtVQ0KVOITCuLB%252bPJPE9H7T7ELA%3d%3d
* Case: PN-1335
* Add a GPIO expansion port for later work (UART for Air can be on it and I2C and SPI)
* Three internal USB connectors, not carrying USB data
 * USB0 - data pins select between I2C and programming pins
 * USB1 - data pins select between I2C and programming pins
 * USB2 - data pins select between GEIGER0/GEIGER1 and programming pins
* Connector for power module - 4 pin (5V,Vbat-in,Vbat-out,GND)
  * Jumpers for selecting current measurement either between Vbat-in,Vbat-out or between 5V in load on the board
* 2 groove expansion ports
* External power switch mounted on the box.


## Power supply configuration
Solar operation of the device and minimal power consumption in the standby state govern the design requirements.

Power flow: Solar cell-> Power module (5v OUT) -> Comms module -> Power switch and fan out to:
* Regulator 3.3V - for core - always on  - 50mA peak [LXDC2UR33A-122] - power directly from battery
* Regulator 3.3V - for non-core - ENABLE-TWI  - 250mA peak [LXDC2UR33A-122] - power from 5V step down regulator
* Regulator 4.1V - for GSM module - ENABLE-CELL - 2A peak - [LXDC55KAAA-205](http://power.murata.com/en/lxdc55kaaa-205.html) - possibly do direct power from battery without regulator
* Switch high-side 5V - USB0 for Air module - ENABLE-AIR - 250mA peak - [TPS2034D](http://www.ti.com/product/TPS2034D?keyMatch=TPS2034D&tisearch=Search-EN-Everything) regulated from battery pack
* Switch high-side 5V - USB1 for Geiger module - ENABLE-GEIG - 50mA peak - [TPS2034D](http://www.ti.com/product/TPS2034D?keyMatch=TPS2034D&tisearch=Search-EN-Everything) regulated from battery pack
* Switch high-side 5V - USB2 -reserve- 1A peak [TPS2034D](http://www.ti.com/product/TPS2034D?keyMatch=TPS2034D&tisearch=Search-EN-Everything)
* Switch high-side 5V - backup - 1A peak [TPS2034D](http://www.ti.com/product/TPS2034D?keyMatch=TPS2034D&tisearch=Search-EN-Everything)

Power switch disconnects power between power module and comms module.

Add headers for mosfet bypass for current consumption measurement and jumpers prior to voltage regulators.

## Board layout
The board is designed as a main board with all other modules connecting to it.
