#!/bin/bash

calc_m() {
  case "${BRGH:-1}:${SYNC:-0}" in
    0:0) M=64 ;;
    0:1) M=4 ;;
    1:*) M=16 ;;
  esac
}

# calc_baud <Fosc> <SPBRG> 
calc_baud() {
  B=$(( $1 / (M * ($2 + 1)) ))
  echo "${B:-0}"
}

# calc_spbrg <Fosc> <baud>
calc_spbrg() {
  SPBRG=$(( ($1 / ($2 * M) ) - 1 ))
  [ $SPBRG -lt 0 ] && SPBRG=
  echo "${SPBRG:-0}"
}

: ${SYNC:=0}
: ${BRGH:=1}

calc_m

XTAL=${2:-8643600}
FOSC=$((XTAL / 4))
BAUD=${1:-9600}

SPBRG=$(calc_spbrg "$FOSC" "$BAUD")
BAUD=$(calc_baud "$FOSC" "$SPBRG")

for VAR in XTAL FOSC BAUD; do
  eval "echo \"  // $VAR: \$$VAR\""
done
for VAR in SYNC BRGH SPBRG; do
  eval "echo \"  $VAR = \$$VAR;\""
done

