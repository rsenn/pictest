#!/bin/sh

while :; do
  case "$1" in
    -*) OPTS="${OPTS:+$IFS}$1" ;;
    *) break ;;
  esac
  shift
done
FILE=$1

if [ "${CHIP-unset}" = unset ]; then
case "$FILE" in
  *1[68]f*) B4=${FILE%%1[68][Ff]*}; CHIP=${FILE#$B4}; CHIP=${CHIP%%[-/]*} ;;
esac
fi 
set -- -TPPK3 -E -M ${CHIP:+-P$CHIP} -OL  $OPTS -F"$FILE"
echo ipecmd "$@" 1>&2
exec ${SHELL:-sh} scripts/ipecmd.sh "@" 
