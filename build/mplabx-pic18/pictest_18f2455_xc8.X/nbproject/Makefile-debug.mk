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
ifeq "$(wildcard nbproject/Makefile-local-debug.mk)" "nbproject/Makefile-local-debug.mk"
include nbproject/Makefile-local-debug.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=debug
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/comparator.c ../../../lib/delay.c ../../../lib/pwm.c ../../../lib/random.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/softser.c ../../../lib/timer.c ../../../lib/uart.c /home/roman/Dokumente/Sources/pictest/lib/lcd44780.c /home/roman/Dokumente/Sources/pictest/pictest.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/comparator.p1 ${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/pwm.p1 ${OBJECTDIR}/_ext/1386521430/random.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/softpwm.p1 ${OBJECTDIR}/_ext/1386521430/softser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/uart.p1 ${OBJECTDIR}/_ext/964921973/lcd44780.p1 ${OBJECTDIR}/_ext/784234475/pictest.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/comparator.p1.d ${OBJECTDIR}/_ext/1386521430/delay.p1.d ${OBJECTDIR}/_ext/1386521430/pwm.p1.d ${OBJECTDIR}/_ext/1386521430/random.p1.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d ${OBJECTDIR}/_ext/1386521430/softser.p1.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d ${OBJECTDIR}/_ext/1386521430/uart.p1.d ${OBJECTDIR}/_ext/964921973/lcd44780.p1.d ${OBJECTDIR}/_ext/784234475/pictest.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/comparator.p1 ${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/pwm.p1 ${OBJECTDIR}/_ext/1386521430/random.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/softpwm.p1 ${OBJECTDIR}/_ext/1386521430/softser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/uart.p1 ${OBJECTDIR}/_ext/964921973/lcd44780.p1 ${OBJECTDIR}/_ext/784234475/pictest.p1

# Source Files
SOURCEFILES=../../../lib/comparator.c ../../../lib/delay.c ../../../lib/pwm.c ../../../lib/random.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/softser.c ../../../lib/timer.c ../../../lib/uart.c /home/roman/Dokumente/Sources/pictest/lib/lcd44780.c /home/roman/Dokumente/Sources/pictest/pictest.c



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
	${MAKE}  -f nbproject/Makefile-debug.mk dist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F2455
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/comparator.p1: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/comparator.p1 ../../../lib/comparator.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/comparator.d ${OBJECTDIR}/_ext/1386521430/comparator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/comparator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/delay.p1 ../../../lib/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/delay.d ${OBJECTDIR}/_ext/1386521430/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/pwm.p1: ../../../lib/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/pwm.p1 ../../../lib/pwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/pwm.d ${OBJECTDIR}/_ext/1386521430/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/random.p1: ../../../lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/random.p1 ../../../lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/random.d ${OBJECTDIR}/_ext/1386521430/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/ser.p1 ../../../lib/ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/ser.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/softpwm.p1: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/softpwm.p1 ../../../lib/softpwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/softpwm.d ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/softser.p1: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/softser.p1 ../../../lib/softser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/softser.d ${OBJECTDIR}/_ext/1386521430/softser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/softser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/timer.p1 ../../../lib/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/timer.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/uart.p1 ../../../lib/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/uart.d ${OBJECTDIR}/_ext/1386521430/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/964921973/lcd44780.p1: /home/roman/Dokumente/Sources/pictest/lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/964921973" 
	@${RM} ${OBJECTDIR}/_ext/964921973/lcd44780.p1.d 
	@${RM} ${OBJECTDIR}/_ext/964921973/lcd44780.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/964921973/lcd44780.p1 /home/roman/Dokumente/Sources/pictest/lib/lcd44780.c 
	@-${MV} ${OBJECTDIR}/_ext/964921973/lcd44780.d ${OBJECTDIR}/_ext/964921973/lcd44780.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/964921973/lcd44780.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/784234475/pictest.p1: /home/roman/Dokumente/Sources/pictest/pictest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/784234475" 
	@${RM} ${OBJECTDIR}/_ext/784234475/pictest.p1.d 
	@${RM} ${OBJECTDIR}/_ext/784234475/pictest.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=pickit3    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/784234475/pictest.p1 /home/roman/Dokumente/Sources/pictest/pictest.c 
	@-${MV} ${OBJECTDIR}/_ext/784234475/pictest.d ${OBJECTDIR}/_ext/784234475/pictest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/784234475/pictest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1386521430/comparator.p1: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/comparator.p1 ../../../lib/comparator.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/comparator.d ${OBJECTDIR}/_ext/1386521430/comparator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/comparator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/delay.p1 ../../../lib/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/delay.d ${OBJECTDIR}/_ext/1386521430/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/pwm.p1: ../../../lib/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/pwm.p1 ../../../lib/pwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/pwm.d ${OBJECTDIR}/_ext/1386521430/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/random.p1: ../../../lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/random.p1 ../../../lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/random.d ${OBJECTDIR}/_ext/1386521430/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/ser.p1 ../../../lib/ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/ser.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/softpwm.p1: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/softpwm.p1 ../../../lib/softpwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/softpwm.d ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/softser.p1: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/softser.p1 ../../../lib/softser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/softser.d ${OBJECTDIR}/_ext/1386521430/softser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/softser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/timer.p1 ../../../lib/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/timer.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386521430/uart.p1 ../../../lib/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/uart.d ${OBJECTDIR}/_ext/1386521430/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/964921973/lcd44780.p1: /home/roman/Dokumente/Sources/pictest/lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/964921973" 
	@${RM} ${OBJECTDIR}/_ext/964921973/lcd44780.p1.d 
	@${RM} ${OBJECTDIR}/_ext/964921973/lcd44780.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/964921973/lcd44780.p1 /home/roman/Dokumente/Sources/pictest/lib/lcd44780.c 
	@-${MV} ${OBJECTDIR}/_ext/964921973/lcd44780.d ${OBJECTDIR}/_ext/964921973/lcd44780.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/964921973/lcd44780.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/784234475/pictest.p1: /home/roman/Dokumente/Sources/pictest/pictest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/784234475" 
	@${RM} ${OBJECTDIR}/_ext/784234475/pictest.p1.d 
	@${RM} ${OBJECTDIR}/_ext/784234475/pictest.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist -DXPRJ_debug=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/784234475/pictest.p1 /home/roman/Dokumente/Sources/pictest/pictest.c 
	@-${MV} ${OBJECTDIR}/_ext/784234475/pictest.d ${OBJECTDIR}/_ext/784234475/pictest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/784234475/pictest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=pickit3  -DXPRJ_debug=$(CND_CONF)    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     --rom=default,-5dc0-5fff --ram=default,-3f4-3ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.map  -DXPRJ_debug=$(CND_CONF)    --double=32 --float=32 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,+debug,-local --addrqual=ignore --mode=pro -D__18f2455=1 -DXTAL_FREQ=20000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SOFTPWM=1 -DUSE_SER=1 -DHAVE_COMPARATOR=1 -DUSE_HD44780_LCD=1 -P -N255 -I"../../.." -I"../../../lib" -I"../../../src" -v --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=+mcof,-elf:multilocs --stack=hybrid:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/pictest_18f2455_xc8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/debug
	${RM} -r dist/debug

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
