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
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=/home/roman/Projects/pictest/lib/softser.c /home/roman/Projects/pictest/lib/uart.c /home/roman/Projects/pictest/lib/softpwm.c /home/roman/Projects/pictest/lib/timer.c /home/roman/Projects/pictest/lib/ser.c /home/roman/Projects/pictest/lib/format.c /home/roman/Projects/pictest/lib/random.c /home/roman/Projects/pictest/lib/delay.c /home/roman/Projects/pictest/src/blinktest.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1006914320/softser.p1 ${OBJECTDIR}/_ext/1006914320/uart.p1 ${OBJECTDIR}/_ext/1006914320/softpwm.p1 ${OBJECTDIR}/_ext/1006914320/timer.p1 ${OBJECTDIR}/_ext/1006914320/ser.p1 ${OBJECTDIR}/_ext/1006914320/format.p1 ${OBJECTDIR}/_ext/1006914320/random.p1 ${OBJECTDIR}/_ext/1006914320/delay.p1 ${OBJECTDIR}/_ext/1006921327/blinktest.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1006914320/softser.p1.d ${OBJECTDIR}/_ext/1006914320/uart.p1.d ${OBJECTDIR}/_ext/1006914320/softpwm.p1.d ${OBJECTDIR}/_ext/1006914320/timer.p1.d ${OBJECTDIR}/_ext/1006914320/ser.p1.d ${OBJECTDIR}/_ext/1006914320/format.p1.d ${OBJECTDIR}/_ext/1006914320/random.p1.d ${OBJECTDIR}/_ext/1006914320/delay.p1.d ${OBJECTDIR}/_ext/1006921327/blinktest.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1006914320/softser.p1 ${OBJECTDIR}/_ext/1006914320/uart.p1 ${OBJECTDIR}/_ext/1006914320/softpwm.p1 ${OBJECTDIR}/_ext/1006914320/timer.p1 ${OBJECTDIR}/_ext/1006914320/ser.p1 ${OBJECTDIR}/_ext/1006914320/format.p1 ${OBJECTDIR}/_ext/1006914320/random.p1 ${OBJECTDIR}/_ext/1006914320/delay.p1 ${OBJECTDIR}/_ext/1006921327/blinktest.p1

# Source Files
SOURCEFILES=/home/roman/Projects/pictest/lib/softser.c /home/roman/Projects/pictest/lib/uart.c /home/roman/Projects/pictest/lib/softpwm.c /home/roman/Projects/pictest/lib/timer.c /home/roman/Projects/pictest/lib/ser.c /home/roman/Projects/pictest/lib/format.c /home/roman/Projects/pictest/lib/random.c /home/roman/Projects/pictest/lib/delay.c /home/roman/Projects/pictest/src/blinktest.c



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
	${MAKE}  -f nbproject/Makefile-release.mk dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=12F1840
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1006914320/softser.p1: /home/roman/Projects/pictest/lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/softser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/softser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/softser.p1 /home/roman/Projects/pictest/lib/softser.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/softser.d ${OBJECTDIR}/_ext/1006914320/softser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/softser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/uart.p1: /home/roman/Projects/pictest/lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/uart.p1 /home/roman/Projects/pictest/lib/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/uart.d ${OBJECTDIR}/_ext/1006914320/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/softpwm.p1: /home/roman/Projects/pictest/lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/softpwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/softpwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/softpwm.p1 /home/roman/Projects/pictest/lib/softpwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/softpwm.d ${OBJECTDIR}/_ext/1006914320/softpwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/softpwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/timer.p1: /home/roman/Projects/pictest/lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/timer.p1 /home/roman/Projects/pictest/lib/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/timer.d ${OBJECTDIR}/_ext/1006914320/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/ser.p1: /home/roman/Projects/pictest/lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/ser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/ser.p1 /home/roman/Projects/pictest/lib/ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/ser.d ${OBJECTDIR}/_ext/1006914320/ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/format.p1: /home/roman/Projects/pictest/lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/format.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/format.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/format.p1 /home/roman/Projects/pictest/lib/format.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/format.d ${OBJECTDIR}/_ext/1006914320/format.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/format.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/random.p1: /home/roman/Projects/pictest/lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/random.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/random.p1 /home/roman/Projects/pictest/lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/random.d ${OBJECTDIR}/_ext/1006914320/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/delay.p1: /home/roman/Projects/pictest/lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/delay.p1 /home/roman/Projects/pictest/lib/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/delay.d ${OBJECTDIR}/_ext/1006914320/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006921327/blinktest.p1: /home/roman/Projects/pictest/src/blinktest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006921327" 
	@${RM} ${OBJECTDIR}/_ext/1006921327/blinktest.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006921327/blinktest.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006921327/blinktest.p1 /home/roman/Projects/pictest/src/blinktest.c 
	@-${MV} ${OBJECTDIR}/_ext/1006921327/blinktest.d ${OBJECTDIR}/_ext/1006921327/blinktest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006921327/blinktest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1006914320/softser.p1: /home/roman/Projects/pictest/lib/softser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/softser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/softser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/softser.p1 /home/roman/Projects/pictest/lib/softser.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/softser.d ${OBJECTDIR}/_ext/1006914320/softser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/softser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/uart.p1: /home/roman/Projects/pictest/lib/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/uart.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/uart.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/uart.p1 /home/roman/Projects/pictest/lib/uart.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/uart.d ${OBJECTDIR}/_ext/1006914320/uart.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/uart.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/softpwm.p1: /home/roman/Projects/pictest/lib/softpwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/softpwm.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/softpwm.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/softpwm.p1 /home/roman/Projects/pictest/lib/softpwm.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/softpwm.d ${OBJECTDIR}/_ext/1006914320/softpwm.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/softpwm.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/timer.p1: /home/roman/Projects/pictest/lib/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/timer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/timer.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/timer.p1 /home/roman/Projects/pictest/lib/timer.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/timer.d ${OBJECTDIR}/_ext/1006914320/timer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/timer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/ser.p1: /home/roman/Projects/pictest/lib/ser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/ser.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/ser.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/ser.p1 /home/roman/Projects/pictest/lib/ser.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/ser.d ${OBJECTDIR}/_ext/1006914320/ser.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/ser.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/format.p1: /home/roman/Projects/pictest/lib/format.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/format.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/format.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/format.p1 /home/roman/Projects/pictest/lib/format.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/format.d ${OBJECTDIR}/_ext/1006914320/format.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/format.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/random.p1: /home/roman/Projects/pictest/lib/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/random.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/random.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/random.p1 /home/roman/Projects/pictest/lib/random.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/random.d ${OBJECTDIR}/_ext/1006914320/random.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/random.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006914320/delay.p1: /home/roman/Projects/pictest/lib/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006914320" 
	@${RM} ${OBJECTDIR}/_ext/1006914320/delay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006914320/delay.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006914320/delay.p1 /home/roman/Projects/pictest/lib/delay.c 
	@-${MV} ${OBJECTDIR}/_ext/1006914320/delay.d ${OBJECTDIR}/_ext/1006914320/delay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006914320/delay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1006921327/blinktest.p1: /home/roman/Projects/pictest/src/blinktest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1006921327" 
	@${RM} ${OBJECTDIR}/_ext/1006921327/blinktest.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1006921327/blinktest.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist -DXPRJ_release=$(CND_CONF)  --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1006921327/blinktest.p1 /home/roman/Projects/pictest/src/blinktest.c 
	@-${MV} ${OBJECTDIR}/_ext/1006921327/blinktest.d ${OBJECTDIR}/_ext/1006921327/blinktest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1006921327/blinktest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=none  -DXPRJ_release=$(CND_CONF)    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.map  -DXPRJ_release=$(CND_CONF)    --double=32 --float=24 --opt=+asm,+asmfile,-speed,+space,-debug,+local --addrqual=ignore --mode=pro -DUSE_TIMER0=1 -DUSE_LED=1 -DUSE_TIMER1=1 -DDONT_USE_SOFTPWM=1 -DNDEBUG=1 -DPIC12F1840=1 -D__12f1840=1 -DXTAL_USED=NO_XTAL -D_XTAL_FREQ=48000000 -P -N255 -I"../../../../lib" -I"../../../../src" --warn=-3 --asmlist --summary=default,+psect,-class,+mem,+hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,+keep,-no_startup,+osccal,+oscval:0x3400,-resetbits,-download,-stackcall,+clib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/blinktest_12f1840_xc8.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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
