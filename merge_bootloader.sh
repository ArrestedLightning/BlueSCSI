#!/bin/bash
#First build the STM32F1-bootloader configuration, then run this script to merge in the USB bootloader image
srec_cat usb_bootloader.hex -intel .pio/build/STM32F1-bootloader/firmware.hex -intel -o firmware_with_bootloader.hex -intel
