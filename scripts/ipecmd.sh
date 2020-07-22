#!/bin/sh
MPLABX_DIR=/opt/microchip/mplabx/v5.40
    
exec env jdkhome=/opt/microchip/mplabx/v5.40/sys/java/zulu8.36.0.1-ca-fx-jdk8.0.202-linux_x64/jre sh $MPLABX_DIR/mplab_platform/mplab_ipe/ipecmd.sh "$@"
