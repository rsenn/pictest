: ${OS:=`uname -o`}
MYDIR=`dirname "$0"`
cd "$MYDIR"


exec 10>&2

case "$OS" in
  "GNU/Linux") EXEEXT=".elf" ;;
  *) EXEEXT=".exe" ;;
 esac
nl="
"
IFS="
 	"
[ $# -gt 0 ] && SOURCES="$*" ||
SOURCES='${PROGRAM_NAME}.c ${PROGRAM_NAME}.h lib/*.[ch] src/config-${CHIP}.h src/config-bits.h src/*.c'

#set -- --preproc="./cpp-xc8${EXEEXT}" 
: ${CHIPS='12f1840 16f628a 16f876a 18f2450 18f2520 18f2550 18f25k50'}
#CHIPS='18f25k50 18f2550'
BUILD_TYPES='debug release'
BUILD_TYPES='debug' 
: ${MAKE_PROGRAMS:='make ninja nmake mplab'}
: ${PROGRAM_NAME=${SOURCES%%.*}}


: ${PROGRAMS:='blinktest pictest serialtest'}

for PROGRAM_NAME in $PROGRAMS; do 
  for CHIP in $CHIPS;  do
    for BUILD_TYPE in $BUILD_TYPES; do
      for COMPILER in xc8 htc sdcc; do 
        for MAKE_PROGRAM in $MAKE_PROGRAMS; do 
          case $COMPILER in
            xc8) PREPROC="./cpp-xc8${EXEEXT}" ;;
            *) unset PREPROC ;;
          esac
          case $MAKE_PROGRAM in
            make) EXT=.mk ;;
            ninja) EXT=.ninja ;;
            nmake) EXT=.jom ;;
            mplab) EXT=.mcp ;;
           esac
        
 (eval "SOURCES=\$(set -- $SOURCES; ls -d \$@ 2>/dev/null)"
  echo "${nl}SOURCES='"$SOURCES"'${nl}" 1>&2

          (set -x;
          genmakefile -t $COMPILER -m $MAKE_PROGRAM \
            $PREPROC \
            -I. -Ilib -Isrc \
        ${SOURCES} \
          -DHAVE_COMPARATOR=1 -DSOFTSER_TIMER=2 -DUART_BAUD=38400 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DUSE_HD44780_LCD=1 -DUSE_SOFTSER=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 \
            --create-bins \
            --no-create-libs \
            --$BUILD_TYPE \
            --chip=${CHIP} \
            -o $PROGRAM_NAME-$CHIP-$COMPILER-$BUILD_TYPE$EXT >&genmakefile-$COMPILER-$BUILD_TYPE.log) 2>&10)
        done
      done
    done
  done
done
