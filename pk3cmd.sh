#!/bin/sh
FILE="$1"
shift
if [ -z "$CHIP" -a -n "$2" ]; then
  CHIP="$1"
  shift
fi
: ${CHIP:=18F2550}
set -x
exec java -jar /opt/microchip/mplabx/v5.25/mplab_platform/mplab_ipe/ipecmd.jar \
	-OL -TPPK3 -M -P"$CHIP" -F"$FILE" "$@"

