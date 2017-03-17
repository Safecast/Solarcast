# Air module for Solarcast
Air module is a standalone sensor unit that is a part of the Solarcast assembly and houses two particle sensors and a temperature and humidity sensor along with an optional BLE processor module.

![Air-module](/img/air-1.jpg)

## Design specification
* BLE module NRF [nRF52832 ANT](https://www.tindie.com/products/hnhoan/nrf52832-ant-bluetooth-le-arm-cortex-m4f-30-io/)
* Particle sensor [Alphasense OPC-N2](http://www.alphasense.com/index.php/products/optical-particle-counter/) (SPI)
* Particle sensor [PM2.5 PMS 5003](http://www.plantower.com/en/content/?108.html) (UART)
* Temperature and humidity sensor BME280 sensor (I2C SDO high 0x77)
* 5V power supply via USB connector (no USB data)
* Outdoor enclosure [PNR-2603](http://eu.mouser.com/ProductDetail/Bud-Industries/PNR-2603/?qs=sGAEpiMZZMsrGrAVj6eTvTO11XxqWC53gJbMy7TDIp4%3d)
* Dual channel high side Switch high-side switch [TPS2034D](http://www.ti.com/product/TPS2034D?keyMatch=TPS2034D&tisearch=Search-EN-Everything) each output for one AIR sensor, with bypass header jumpers.

## Extended details
* Waterproof [USB connector](http://eu.mouser.com/ProductDetail/Conxall-Switchcraft/DCP-USBCB-SC/?qs=sGAEpiMZZMulM8LPOQ%252byk0tOUVtDtVQ0KVOITCuLB%252bPJPE9H7T7ELA%3d%3d
) (data lines carry SWDIO & SWCLK signals)
* Internal 3V3 regulator
* Expansion connector 2x6 (IDC connector) with SPI, I2C and UART

## Connection details
The devices have the following connection details:

* Alphasense (leftmost wire on connector with wire crimp contacts facing up going away from you) Connector: Molex 'Pico Clasp' 6 way Housing, Part Number 501330-0600
 1. 5V
 2. SPI-SCLK
 3. SPI-MISO
 4. SPI-MOSI
 5. SPI-CS
 6. GND

* Plantower, no connector, solder wires
  1. 5V
  2. GND
  3. N/C
  4. RX (optional SCL) (add 0 ohm resistors to select between uart and i2c pins)
  5. TX (optional SDA) (add 0 ohm resistors to select between uart and i2c pins)
  6. N/C
  7. comm config (add solder jumpers for pull up/down)
  8. comm config (add solder jumpers for pull up/down)

*  nRF52832 module
 * Pin 3: P0.23	LED-RED
 * Pin 5: P0.25	TWI-SDA
 * Pin 6: P0.26 TWI-SCL
 * Pin 7: P0.27 UMUX-INH
 * Pin 18: 3.3V
 * Pin 19: GND
 * Pin 20: P0.07 TX
 * Pin 21: SWCLK/TCK
 * Pin 22: SWDIO/TMS
 * Pin 23: P0.08 RX
 * Pin 28: P0.03 SPI-MOSI
 * Pin 29: P0.04 SPI-MISO
 * Pin 30: P0.05 SPI-CS
 * Pin 31: P0.06 SPI-SCLK

 ## Board layout
 The PCB board has a connector of each particle sensor, BLE module on the short board edge and the USB connector on the edge between two rounded corners.
