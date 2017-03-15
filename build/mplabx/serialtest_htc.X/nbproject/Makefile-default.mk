#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/delay.c ../../../lib/ds18b20.c ../../../lib/lcd44780.c ../../../lib/pwm.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/softser.c ../../../lib/timer.c ../../../lib/uart.c ../../../src/serialtest.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/ds18b20.p1 ${OBJECTDIR}/_ext/1386521430/lcd44780.p1 ${OBJECTDIR}/_ext/1386521430/pwm.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/softpwm.p1 ${OBJECTDIR}/_ext/1386521430/softser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/uart.p1 ${OBJECTDIR}/_ext/1386528437/serialtest.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/delay.p1.d ${OBJECTDIR}/_ext/1386521430/ds18b20.p1.d ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d ${OBJECTDIR}/_ext/1386521430/pwm.p1.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d ${OBJECTDIR}/_ext/1386521430/softser.p1.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d ${OBJECTDIR}/_ext/1386521430/uart.p1.d ${OBJECTDIR}/_ext/1386528437/serialtest.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/ds18b20.p1 ${OBJECTDIR}/_ext/1386521430/lcd44780.p1 ${OBJECTDIR}/_ext/1386521430/pwm.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/softpwm.p1 ${OBJECTDIR}/_ext/1386521430/softser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/uart.p1 ${OBJECTDIR}/_ext/1386528437/serialtest.p1

# Source Files
SOURCEFILES=../../../lib/delay.c ../../../lib/ds18b20.c ../../../lib/lcd44780.c ../../../lib/pwm.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/softser.c ../../../lib/timer.c ../../../lib/uart.c ../../../src/serialtest.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=16F876A
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/delay.p1: > ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/delay.dep >> ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/delay.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/ds18b20.p1: ../../../lib/ds18b20.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/ds18b20.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/ds18b20.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/ds18b20.p1: > ${OBJECTDIR}/_ext/1386521430/ds18b20.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ds18b20.dep >> ${OBJECTDIR}/_ext/1386521430/ds18b20.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ds18b20.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/lcd44780.p1: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/lcd44780.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/lcd44780.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/lcd44780.p1: > ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/lcd44780.dep >> ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/pwm.p1: ../../../lib/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/pwm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/pwm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/pwm.p1: > ${OBJECTDIR}/_ext/1386521430/pwm.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/pwm.dep >> ${OBJECTDIR}/_ext/1386521430/pwm.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/pwm.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/ser.p1: > ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ser.dep >> ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/softpwm.p1: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/softpwm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/softpwm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/softpwm.p1: > ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/softpwm.dep >> ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/softpwm.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/softser.p1: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/softser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/softser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/softser.p1: > ${OBJECTDIR}/_ext/1386521430/softser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/softser.dep >> ${OBJECTDIR}/_ext/1386521430/softser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/softser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/timer.p1: > ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/timer.dep >> ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/uart.p1: > ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/uart.dep >> ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/uart.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/serialtest.p1: ../../../src/serialtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/serialtest.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/serialtest.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG   --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/serialtest.p1: > ${OBJECTDIR}/_ext/1386528437/serialtest.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/serialtest.dep >> ${OBJECTDIR}/_ext/1386528437/serialtest.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/serialtest.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/delay.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/delay.p1: > ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/delay.dep >> ${OBJECTDIR}/_ext/1386521430/delay.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/delay.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/ds18b20.p1: ../../../lib/ds18b20.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/ds18b20.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/ds18b20.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/ds18b20.p1: > ${OBJECTDIR}/_ext/1386521430/ds18b20.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ds18b20.dep >> ${OBJECTDIR}/_ext/1386521430/ds18b20.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ds18b20.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/lcd44780.p1: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/lcd44780.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/lcd44780.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/lcd44780.p1: > ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/lcd44780.dep >> ${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/lcd44780.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/pwm.p1: ../../../lib/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/pwm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/pwm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/pwm.p1: > ${OBJECTDIR}/_ext/1386521430/pwm.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/pwm.dep >> ${OBJECTDIR}/_ext/1386521430/pwm.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/pwm.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/ser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/ser.p1: > ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/ser.dep >> ${OBJECTDIR}/_ext/1386521430/ser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/softpwm.p1: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/softpwm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/softpwm.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/softpwm.p1: > ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/softpwm.dep >> ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/softpwm.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/softser.p1: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/softser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/softser.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/softser.p1: > ${OBJECTDIR}/_ext/1386521430/softser.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/softser.dep >> ${OBJECTDIR}/_ext/1386521430/softser.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/softser.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/timer.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/timer.p1: > ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/timer.dep >> ${OBJECTDIR}/_ext/1386521430/timer.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	${MP_CC} --pass1 ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../lib/uart.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386521430" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386521430/uart.p1: > ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@cat ${OBJECTDIR}/_ext/1386521430/uart.dep >> ${OBJECTDIR}/_ext/1386521430/uart.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/uart.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1386528437/serialtest.p1: ../../../src/serialtest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	${MP_CC} --pass1 ../../../src/serialtest.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep  ../../../src/serialtest.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir="${OBJECTDIR}\_ext\1386528437" -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3 --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --opt=all,+asm,+asmfile,+speed,-space,-debug,9  --double=32 --float=24 --addrqual=ignore --mode=pro -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/_ext/1386528437/serialtest.p1: > ${OBJECTDIR}/_ext/1386528437/serialtest.p1.d
	@cat ${OBJECTDIR}/_ext/1386528437/serialtest.dep >> ${OBJECTDIR}/_ext/1386528437/serialtest.p1.d
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386528437/serialtest.p1.d" $(SILENT) -ht  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -D__DEBUG  -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3  --double=32 --float=24 --addrqual=ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES_QUOTED_IF_SPACED}  
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/serialtest_htc.X.${IMAGE_TYPE}.map --summary=default,-psect,-class,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+init,-keep,+osccal,+oscval:0,-resetbits,+download,-stackcall,+clib --summary=default,-psect,-class,+mem,-hex --opt=all,+asm,+asmfile,+speed,-space,-debug,9 -DUSE_UART=1 -D__DEBUG=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -P -N127 -I".." -I"." -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=3  --double=32 --float=24 --addrqual=ignore --mode=pro --output=default,-inhx032 -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES_QUOTED_IF_SPACED}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
