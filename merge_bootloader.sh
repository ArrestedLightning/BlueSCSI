#!/bin/bash
# Need to install https://sourceforge.net/projects/srecord/files/srecord-win32/1.65/srecord-1.65.0-win64.exe/download
export PATH=$PATH:/C/Program\ Files/srecord/bin/
#First build the STM32F1-bootloader or bootloader-and-passthrough configuration, then run this script to merge in the USB bootloader image
srec_cat usb_bootloader.hex -intel .pio/build/STM32F1-bootloader/firmware.hex -intel -o .pio/build/STM32F1-bootloader/firmware_with_bootloader.hex -intel
srec_cat usb_bootloader.hex -intel .pio/build/bootloader-and-passthrough/firmware.hex -intel -o .pio/build/bootloader-and-passthrough/firmware_with_bootloader.hex -intel
