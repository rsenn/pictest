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
ifeq "$(wildcard nbproject/Makefile-local-release.mk)" "nbproject/Makefile-local-release.mk"
include nbproject/Makefile-local-release.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=release
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=../../../lib/comparator.c ../../../lib/delay.c ../../../lib/pwm.c ../../../lib/random.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/softser.c ../../../lib/timer.c ../../../lib/uart.c ../../../lib/lcd5110.c ../../../lib/adc.c ../../../lib/format.c ../../../lib/buffer.c ../../../lib/pcd8544.c /home/roman/Projects/pictest/lib/spi1.c mcc_generated_files/ccp1.c mcc_generated_files/ext_int.c ../../../src/blinktest.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386521430/comparator.p1 ${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/pwm.p1 ${OBJECTDIR}/_ext/1386521430/random.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/softpwm.p1 ${OBJECTDIR}/_ext/1386521430/softser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/uart.p1 ${OBJECTDIR}/_ext/1386521430/lcd5110.p1 ${OBJECTDIR}/_ext/1386521430/adc.p1 ${OBJECTDIR}/_ext/1386521430/format.p1 ${OBJECTDIR}/_ext/1386521430/buffer.p1 ${OBJECTDIR}/_ext/1386521430/pcd8544.p1 ${OBJECTDIR}/_ext/1006914320/spi1.p1 ${OBJECTDIR}/mcc_generated_files/ccp1.p1 ${OBJECTDIR}/mcc_generated_files/ext_int.p1 ${OBJECTDIR}/_ext/1386528437/blinktest.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386521430/comparator.p1.d ${OBJECTDIR}/_ext/1386521430/delay.p1.d ${OBJECTDIR}/_ext/1386521430/pwm.p1.d ${OBJECTDIR}/_ext/1386521430/random.p1.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d ${OBJECTDIR}/_ext/1386521430/softser.p1.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d ${OBJECTDIR}/_ext/1386521430/uart.p1.d ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d ${OBJECTDIR}/_ext/1386521430/adc.p1.d ${OBJECTDIR}/_ext/1386521430/format.p1.d ${OBJECTDIR}/_ext/1386521430/buffer.p1.d ${OBJECTDIR}/_ext/1386521430/pcd8544.p1.d ${OBJECTDIR}/_ext/1006914320/spi1.p1.d ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d ${OBJECTDIR}/mcc_generated_files/ext_int.p1.d ${OBJECTDIR}/_ext/1386528437/blinktest.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386521430/comparator.p1 ${OBJECTDIR}/_ext/1386521430/delay.p1 ${OBJECTDIR}/_ext/1386521430/pwm.p1 ${OBJECTDIR}/_ext/1386521430/random.p1 ${OBJECTDIR}/_ext/1386521430/ser.p1 ${OBJECTDIR}/_ext/1386521430/softpwm.p1 ${OBJECTDIR}/_ext/1386521430/softser.p1 ${OBJECTDIR}/_ext/1386521430/timer.p1 ${OBJECTDIR}/_ext/1386521430/uart.p1 ${OBJECTDIR}/_ext/1386521430/lcd5110.p1 ${OBJECTDIR}/_ext/1386521430/adc.p1 ${OBJECTDIR}/_ext/1386521430/format.p1 ${OBJECTDIR}/_ext/1386521430/buffer.p1 ${OBJECTDIR}/_ext/1386521430/pcd8544.p1 ${OBJECTDIR}/_ext/1006914320/spi1.p1 ${OBJECTDIR}/mcc_generated_files/ccp1.p1 ${OBJECTDIR}/mcc_generated_files/ext_int.p1 ${OBJECTDIR}/_ext/1386528437/blinktest.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=../../../lib/comparator.c ../../../lib/delay.c ../../../lib/pwm.c ../../../lib/random.c ../../../lib/ser.c ../../../lib/softpwm.c ../../../lib/softser.c ../../../lib/timer.c ../../../lib/uart.c ../../../lib/lcd5110.c ../../../lib/adc.c ../../../lib/format.c ../../../lib/buffer.c ../../../lib/pcd8544.c /home/roman/Projects/pictest/lib/spi1.c mcc_generated_files/ccp1.c mcc_generated_files/ext_int.c ../../../src/blinktest.c main.c



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
	${MAKE}  -f nbproject/Makefile-release.mk dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F16Q41
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386521430/comparator.p1: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/comparator.p1 ../../../lib/comparator.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/comparator.d ${OBJECTDIR}/_ext/1386521430/comparator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/comparator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/delay.p1 ../../../lib/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/delay.d ${OBJECTDIR}/_ext/1386521430/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/pwm.p1: ../../../lib/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/pwm.p1 ../../../lib/pwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/pwm.d ${OBJECTDIR}/_ext/1386521430/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/random.p1: ../../../lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/random.p1 ../../../lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/random.d ${OBJECTDIR}/_ext/1386521430/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/ser.p1 ../../../lib/ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/ser.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/softpwm.p1: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/softpwm.p1 ../../../lib/softpwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/softpwm.d ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/softser.p1: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/softser.p1 ../../../lib/softser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/softser.d ${OBJECTDIR}/_ext/1386521430/softser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/softser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/timer.p1 ../../../lib/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/timer.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/uart.p1 ../../../lib/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/uart.d ${OBJECTDIR}/_ext/1386521430/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/lcd5110.p1: ../../../lib/lcd5110.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/lcd5110.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/lcd5110.p1 ../../../lib/lcd5110.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/lcd5110.d ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/adc.p1: ../../../lib/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/adc.p1 ../../../lib/adc.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/adc.d ${OBJECTDIR}/_ext/1386521430/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/format.p1: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/format.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/format.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/format.p1 ../../../lib/format.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/format.d ${OBJECTDIR}/_ext/1386521430/format.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/format.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/buffer.p1: ../../../lib/buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/buffer.p1 ../../../lib/buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/buffer.d ${OBJECTDIR}/_ext/1386521430/buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/pcd8544.p1: ../../../lib/pcd8544.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pcd8544.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pcd8544.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/pcd8544.p1 ../../../lib/pcd8544.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/pcd8544.d ${OBJECTDIR}/_ext/1386521430/pcd8544.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/pcd8544.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/spi1.p1: /home/roman/Projects/pictest/lib/spi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/spi1.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/spi1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1006914320/spi1.p1 /home/roman/Projects/pictest/lib/spi1.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/spi1.d ${OBJECTDIR}/_ext/1006914320/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ccp1.p1: mcc_generated_files/ccp1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/ccp1.p1 mcc_generated_files/ccp1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ccp1.d ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ext_int.p1: mcc_generated_files/ext_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/ext_int.p1 mcc_generated_files/ext_int.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ext_int.d ${OBJECTDIR}/mcc_generated_files/ext_int.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ext_int.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/blinktest.p1: ../../../src/blinktest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/blinktest.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/blinktest.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/blinktest.p1 ../../../src/blinktest.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/blinktest.d ${OBJECTDIR}/_ext/1386528437/blinktest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/blinktest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1386521430/comparator.p1: ../../../lib/comparator.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/comparator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/comparator.p1 ../../../lib/comparator.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/comparator.d ${OBJECTDIR}/_ext/1386521430/comparator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/comparator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/delay.p1: ../../../lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/delay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/delay.p1 ../../../lib/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/delay.d ${OBJECTDIR}/_ext/1386521430/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/pwm.p1: ../../../lib/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/pwm.p1 ../../../lib/pwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/pwm.d ${OBJECTDIR}/_ext/1386521430/pwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/pwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/random.p1: ../../../lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/random.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/random.p1 ../../../lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/random.d ${OBJECTDIR}/_ext/1386521430/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/ser.p1: ../../../lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/ser.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/ser.p1 ../../../lib/ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/ser.d ${OBJECTDIR}/_ext/1386521430/ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/softpwm.p1: ../../../lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softpwm.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/softpwm.p1 ../../../lib/softpwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/softpwm.d ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/softpwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/softser.p1: ../../../lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/softser.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/softser.p1 ../../../lib/softser.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/softser.d ${OBJECTDIR}/_ext/1386521430/softser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/softser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/timer.p1: ../../../lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/timer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/timer.p1 ../../../lib/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/timer.d ${OBJECTDIR}/_ext/1386521430/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/uart.p1: ../../../lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/uart.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/uart.p1 ../../../lib/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/uart.d ${OBJECTDIR}/_ext/1386521430/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/lcd5110.p1: ../../../lib/lcd5110.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/lcd5110.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/lcd5110.p1 ../../../lib/lcd5110.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/lcd5110.d ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/lcd5110.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/adc.p1: ../../../lib/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/adc.p1 ../../../lib/adc.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/adc.d ${OBJECTDIR}/_ext/1386521430/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/format.p1: ../../../lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/format.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/format.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/format.p1 ../../../lib/format.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/format.d ${OBJECTDIR}/_ext/1386521430/format.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/format.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/buffer.p1: ../../../lib/buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/buffer.p1 ../../../lib/buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/buffer.d ${OBJECTDIR}/_ext/1386521430/buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386521430/pcd8544.p1: ../../../lib/pcd8544.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386521430" 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pcd8544.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386521430/pcd8544.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386521430/pcd8544.p1 ../../../lib/pcd8544.c 
	@-${MV} ${OBJECTDIR}/_ext/1386521430/pcd8544.d ${OBJECTDIR}/_ext/1386521430/pcd8544.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386521430/pcd8544.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/spi1.p1: /home/roman/Projects/pictest/lib/spi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/spi1.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/spi1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1006914320/spi1.p1 /home/roman/Projects/pictest/lib/spi1.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/spi1.d ${OBJECTDIR}/_ext/1006914320/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ccp1.p1: mcc_generated_files/ccp1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/ccp1.p1 mcc_generated_files/ccp1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ccp1.d ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ext_int.p1: mcc_generated_files/ext_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ext_int.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/mcc_generated_files/ext_int.p1 mcc_generated_files/ext_int.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ext_int.d ${OBJECTDIR}/mcc_generated_files/ext_int.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ext_int.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/blinktest.p1: ../../../src/blinktest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/blinktest.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/blinktest.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/blinktest.p1 ../../../src/blinktest.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/blinktest.d ${OBJECTDIR}/_ext/1386528437/blinktest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/blinktest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -DXPRJ_release=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gcoff -mstack=hybrid:auto:auto:auto     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_release=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits -std=c90 -gcoff -mstack=hybrid:auto:auto:auto --msgdisable=373,520,752        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.map  -DXPRJ_release=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp=${DFP_DIR}/xc8  -fno-short-double -fno-short-float -memi=wordwrite -Os -fasmfile -maddrqual=ignore -D__18f16q41=1 -D_XTAL_FREQ=48000000 -DUART_BAUD=38400 -DUSE_TIMER0=1 -D_USE_TIMER1=1 -D_USE_TIMER2=1 -D_USE_SOFTPWM=1 -DHAVE_COMPARATOR=1 -DNDEBUG=1 -D__XC8=1 -D_USE_SOFTSER=1 -DSOFTSER_TIMER=2 -DUSE_NOKIA5110_LCD=1 -D_USE_ADCONVERTER=1 -DXTAL_USED=NO_XTAL -xassembler-with-cpp -I"../../.." -I"../../../lib" -I"../../../src" -I"../../../" -mwarn=-9 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx032 -Wl,--data-init -mkeep-startup -mdownload -mdefault-config-bits -std=c90 -gcoff -mstack=hybrid:auto:auto:auto --msgdisable=373,520,752     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_18f16q41_xc8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/release
	${RM} -r dist/release

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
