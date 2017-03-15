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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=debug
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/delay.c ../../../lib/lcd44780.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/timer.c ../../../lib/random.c ../../../lib/comparator.c ../../../lib/softser.c ../../../lib/uart.c ../../../src/blinktest.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/delay.o ${OBJECTDIR}/_ext/1386521430/lcd44780.o ${OBJECTDIR}/_ext/1386521430/ser.o ${OBJECTDIR}/_ext/1386521430/softpwm.o ${OBJECTDIR}/_ext/1386521430/timer.o ${OBJECTDIR}/_ext/1386521430/random.o ${OBJECTDIR}/_ext/1386521430/comparator.o ${OBJECTDIR}/_ext/1386521430/softser.o ${OBJECTDIR}/_ext/1386521430/uart.o ${OBJECTDIR}/_ext/1386528437/blinktest.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/delay.o.d ${OBJECTDIR}/_ext/1386521430/lcd44780.o.d ${OBJECTDIR}/_ext/1386521430/ser.o.d ${OBJECTDIR}/_ext/1386521430/softpwm.o.d ${OBJECTDIR}/_ext/1386521430/timer.o.d ${OBJECTDIR}/_ext/1386521430/random.o.d ${OBJECTDIR}/_ext/1386521430/comparator.o.d ${OBJECTDIR}/_ext/1386521430/softser.o.d ${OBJECTDIR}/_ext/1386521430/uart.o.d ${OBJECTDIR}/_ext/1386528437/blinktest.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/delay.o ${OBJECTDIR}/_ext/1386521430/lcd44780.o ${OBJECTDIR}/_ext/1386521430/ser.o ${OBJECTDIR}/_ext/1386521430/softpwm.o ${OBJECTDIR}/_ext/1386521430/timer.o ${OBJECTDIR}/_ext/1386521430/random.o ${OBJECTDIR}/_ext/1386521430/comparator.o ${OBJECTDIR}/_ext/1386521430/softser.o ${OBJECTDIR}/_ext/1386521430/uart.o ${OBJECTDIR}/_ext/1386528437/blinktest.o

# Source Files
SOURCEFILES=../../../lib/delay.c ../../../lib/lcd44780.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/timer.c ../../../lib/random.c ../../../lib/comparator.c ../../../lib/softser.c ../../../lib/uart.c ../../../src/blinktest.c


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
	${MAKE}  -f nbproject/Makefile-debug.mk dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/delay.o: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/delay.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/delay.c  -o${OBJECTDIR}/_ext/1386521430/delay.o
	
${OBJECTDIR}/_ext/1386521430/lcd44780.o: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/lcd44780.c  -o${OBJECTDIR}/_ext/1386521430/lcd44780.o
	
${OBJECTDIR}/_ext/1386521430/ser.o: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/ser.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/ser.c  -o${OBJECTDIR}/_ext/1386521430/ser.o
	
${OBJECTDIR}/_ext/1386521430/softpwm.o: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/softpwm.c  -o${OBJECTDIR}/_ext/1386521430/softpwm.o
	
${OBJECTDIR}/_ext/1386521430/timer.o: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/timer.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/timer.c  -o${OBJECTDIR}/_ext/1386521430/timer.o
	
${OBJECTDIR}/_ext/1386521430/random.o: ../../../lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/random.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/random.c  -o${OBJECTDIR}/_ext/1386521430/random.o
	
${OBJECTDIR}/_ext/1386521430/comparator.o: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/comparator.c  -o${OBJECTDIR}/_ext/1386521430/comparator.o
	
${OBJECTDIR}/_ext/1386521430/softser.o: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/softser.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/softser.c  -o${OBJECTDIR}/_ext/1386521430/softser.o
	
${OBJECTDIR}/_ext/1386521430/uart.o: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/uart.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/uart.c  -o${OBJECTDIR}/_ext/1386521430/uart.o
	
${OBJECTDIR}/_ext/1386528437/blinktest.o: ../../../src/blinktest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386528437 
	${RM} ${OBJECTDIR}/_ext/1386528437/blinktest.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../src/blinktest.c  -o${OBJECTDIR}/_ext/1386528437/blinktest.o
	
else
${OBJECTDIR}/_ext/1386521430/delay.o: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/delay.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/delay.c  -o${OBJECTDIR}/_ext/1386521430/delay.o
	
${OBJECTDIR}/_ext/1386521430/lcd44780.o: ../../../lib/lcd44780.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/lcd44780.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/lcd44780.c  -o${OBJECTDIR}/_ext/1386521430/lcd44780.o
	
${OBJECTDIR}/_ext/1386521430/ser.o: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/ser.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/ser.c  -o${OBJECTDIR}/_ext/1386521430/ser.o
	
${OBJECTDIR}/_ext/1386521430/softpwm.o: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/softpwm.c  -o${OBJECTDIR}/_ext/1386521430/softpwm.o
	
${OBJECTDIR}/_ext/1386521430/timer.o: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/timer.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/timer.c  -o${OBJECTDIR}/_ext/1386521430/timer.o
	
${OBJECTDIR}/_ext/1386521430/random.o: ../../../lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/random.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/random.c  -o${OBJECTDIR}/_ext/1386521430/random.o
	
${OBJECTDIR}/_ext/1386521430/comparator.o: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/comparator.c  -o${OBJECTDIR}/_ext/1386521430/comparator.o
	
${OBJECTDIR}/_ext/1386521430/softser.o: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/softser.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/softser.c  -o${OBJECTDIR}/_ext/1386521430/softser.o
	
${OBJECTDIR}/_ext/1386521430/uart.o: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386521430 
	${RM} ${OBJECTDIR}/_ext/1386521430/uart.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../lib/uart.c  -o${OBJECTDIR}/_ext/1386521430/uart.o
	
${OBJECTDIR}/_ext/1386528437/blinktest.o: ../../../src/blinktest.c  nbproject/Makefile-${CND_CONF}.mk
	${MKDIR} ${OBJECTDIR}/_ext/1386528437 
	${RM} ${OBJECTDIR}/_ext/1386528437/blinktest.o 
	${MP_CC} --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -c -mpic14 -p16f876a ../../../src/blinktest.c  -o${OBJECTDIR}/_ext/1386528437/blinktest.o
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -mpic14 -p16f876a ${OBJECTFILES} -odist/${CND_CONF}/${IMAGE_TYPE}/blinktest_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
else
dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -D__DEBUG=1 -D__16f876a=1 -D_XTAL_FREQ=20000000 -D_DEBUG=1 -DUSE_UART=1 -DUSE_TIMER2=1 -DUSE_TIMER1=1 -DUSE_TIMER0=1 -DUSE_SOFTSER=1 -DUSE_SOFTPWM=1 -DUART_BAUD=38400 -DSOFTSER_TIMER=2 -DPIC16F876A=1 -I"../../.." -I"../../../lib" -I"../../../src" -mpic14 -p16f876a ${OBJECTFILES} -odist/${CND_CONF}/${IMAGE_TYPE}/blinktest_sdcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
