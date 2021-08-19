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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f25k22_mcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f25k22_mcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
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
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/comparator.c ../../../lib/delay.c ../../../lib/pwm.c ../../../lib/random.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/softser.c ../../../lib/timer.c ../../../lib/uart.c ../../../blinktest.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/comparator.o ${OBJECTDIR}/_ext/1386521430/delay.o ${OBJECTDIR}/_ext/1386521430/pwm.o ${OBJECTDIR}/_ext/1386521430/random.o ${OBJECTDIR}/_ext/1386521430/ser.o ${OBJECTDIR}/_ext/1386521430/softpwm.o ${OBJECTDIR}/_ext/1386521430/softser.o ${OBJECTDIR}/_ext/1386521430/timer.o ${OBJECTDIR}/_ext/1386521430/uart.o ${OBJECTDIR}/_ext/2124829536/blinktest.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/comparator.o.d ${OBJECTDIR}/_ext/1386521430/delay.o.d ${OBJECTDIR}/_ext/1386521430/pwm.o.d ${OBJECTDIR}/_ext/1386521430/random.o.d ${OBJECTDIR}/_ext/1386521430/ser.o.d ${OBJECTDIR}/_ext/1386521430/softpwm.o.d ${OBJECTDIR}/_ext/1386521430/softser.o.d ${OBJECTDIR}/_ext/1386521430/timer.o.d ${OBJECTDIR}/_ext/1386521430/uart.o.d ${OBJECTDIR}/_ext/2124829536/blinktest.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/comparator.o ${OBJECTDIR}/_ext/1386521430/delay.o ${OBJECTDIR}/_ext/1386521430/pwm.o ${OBJECTDIR}/_ext/1386521430/random.o ${OBJECTDIR}/_ext/1386521430/ser.o ${OBJECTDIR}/_ext/1386521430/softpwm.o ${OBJECTDIR}/_ext/1386521430/softser.o ${OBJECTDIR}/_ext/1386521430/timer.o ${OBJECTDIR}/_ext/1386521430/uart.o ${OBJECTDIR}/_ext/2124829536/blinktest.o

# Source Files
SOURCEFILES=../../../lib/comparator.c ../../../lib/delay.c ../../../lib/pwm.c ../../../lib/random.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/softser.c ../../../lib/timer.c ../../../lib/uart.c ../../../blinktest.c



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
	${MAKE}  -f nbproject/Makefile-debug.mk dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f25k22_mcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F25K22
MP_PROCESSOR_OPTION_LD=18f25k22
MP_LINKER_DEBUG_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/comparator.o: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/comparator.o   ../../../lib/comparator.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/comparator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/comparator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/delay.o: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/delay.o   ../../../lib/delay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/pwm.o: ../../../lib/pwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/pwm.o   ../../../lib/pwm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/random.o: ../../../lib/random.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/random.o   ../../../lib/random.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/ser.o: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/ser.o   ../../../lib/ser.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/ser.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/softpwm.o: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/softpwm.o   ../../../lib/softpwm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/softpwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/softpwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/softser.o: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/softser.o   ../../../lib/softser.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/softser.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/softser.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/timer.o: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/timer.o   ../../../lib/timer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/uart.o: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/uart.o   ../../../lib/uart.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2124829536/blinktest.o: ../../../blinktest.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blinktest.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blinktest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG  -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/2124829536/blinktest.o   ../../../blinktest.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2124829536/blinktest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/blinktest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/_ext/1386521430/comparator.o: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/comparator.o   ../../../lib/comparator.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/comparator.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/comparator.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/delay.o: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/delay.o   ../../../lib/delay.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/pwm.o: ../../../lib/pwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/pwm.o   ../../../lib/pwm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/random.o: ../../../lib/random.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/random.o   ../../../lib/random.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/ser.o: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/ser.o   ../../../lib/ser.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/ser.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/ser.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/softpwm.o: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/softpwm.o   ../../../lib/softpwm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/softpwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/softpwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/softser.o: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/softser.o   ../../../lib/softser.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/softser.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/softser.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/timer.o: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/timer.o   ../../../lib/timer.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/1386521430/uart.o: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/1386521430/uart.o   ../../../lib/uart.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/1386521430/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1386521430/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/_ext/2124829536/blinktest.o: ../../../blinktest.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2124829536" 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blinktest.o.d 
	@${RM} ${OBJECTDIR}/_ext/2124829536/blinktest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) --verbose -D__18f25k22=1 -DDEBUG=1 -DUSE_SOFTPWM=1 -DUSE_TIMER0=1 -DUART_BAUD=38400 -D_XTAL_FREQ=20000000 -DMCC18=1 -DMCC=1 -DUSE_SER=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -I"../../../" -I"../../../lib" -I"../../../src" -ms -oa- -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-  -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/2124829536/blinktest.o   ../../../blinktest.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/2124829536/blinktest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2124829536/blinktest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f25k22_mcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f25k22_mcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f25k22_mcc.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f25k22_mcc.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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
