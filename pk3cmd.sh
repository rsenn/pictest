#!/bin/sh
exec java -jar /opt/microchip/mplabx/v5.25/mplab_platform/mplab_ipe/ipecmd.jar \
	-OL -TPPK3 -M -P18F2550 -F"${1:-bootloaders/msd-bootloader/Firmware/USB MSD Bootloader.hex}" -W

