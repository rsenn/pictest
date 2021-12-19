#!/bin/sh
export jdkhome=/opt/microchip/mplabx/v5.35/sys/java/jre1.8.0_181

exec /opt/microchip/mplabx/v5.35/mplab_platform/mplab_ipe/ipecmd.sh "$@"

MPLABX_DIR=/opt/microchip/mplabx/v5.35


exec env jdkhome=/opt/microchip/mplabx/v5.35/sys/java/zulu8.40.0.25-ca-fx-jre8.0.222-linux_x64 sh $MPLABX_DIR/mplab_platform/mplab_ipe/ipecmd.sh "$@"
