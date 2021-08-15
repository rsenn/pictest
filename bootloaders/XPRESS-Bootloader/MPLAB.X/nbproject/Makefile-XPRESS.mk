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
ifeq "$(wildcard nbproject/Makefile-local-XPRESS.mk)" "nbproject/Makefile-local-XPRESS.mk"
include nbproject/Makefile-local-XPRESS.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=XPRESS
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=system_config/XPRESS/system.c main.c usb_descriptors.c app_device_msd.c files.c direct.c app_device_cdc.c app_space.c memory.c ../bsp/xpress/buttons.c ../bsp/xpress/leds.c ../bsp/xpress/uart.c ../framework/usb/src/usb_device.c ../framework/usb/src/usb_device_msd.c ../framework/usb/src/usb_device_cdc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/system_config/XPRESS/system.o ${OBJECTDIR}/main.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/app_device_msd.o ${OBJECTDIR}/files.o ${OBJECTDIR}/direct.o ${OBJECTDIR}/app_device_cdc.o ${OBJECTDIR}/app_space.o ${OBJECTDIR}/memory.o ${OBJECTDIR}/_ext/1371762614/buttons.o ${OBJECTDIR}/_ext/1371762614/leds.o ${OBJECTDIR}/_ext/1371762614/uart.o ${OBJECTDIR}/_ext/2142726457/usb_device.o ${OBJECTDIR}/_ext/2142726457/usb_device_msd.o ${OBJECTDIR}/_ext/2142726457/usb_device_cdc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/system_config/XPRESS/system.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/usb_descriptors.o.d ${OBJECTDIR}/app_device_msd.o.d ${OBJECTDIR}/files.o.d ${OBJECTDIR}/direct.o.d ${OBJECTDIR}/app_device_cdc.o.d ${OBJECTDIR}/app_space.o.d ${OBJECTDIR}/memory.o.d ${OBJECTDIR}/_ext/1371762614/buttons.o.d ${OBJECTDIR}/_ext/1371762614/leds.o.d ${OBJECTDIR}/_ext/1371762614/uart.o.d ${OBJECTDIR}/_ext/2142726457/usb_device.o.d ${OBJECTDIR}/_ext/2142726457/usb_device_msd.o.d ${OBJECTDIR}/_ext/2142726457/usb_device_cdc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/system_config/XPRESS/system.o ${OBJECTDIR}/main.o ${OBJECTDIR}/usb_descriptors.o ${OBJECTDIR}/app_device_msd.o ${OBJECTDIR}/files.o ${OBJECTDIR}/direct.o ${OBJECTDIR}/app_device_cdc.o ${OBJECTDIR}/app_space.o ${OBJECTDIR}/memory.o ${OBJECTDIR}/_ext/1371762614/buttons.o ${OBJECTDIR}/_ext/1371762614/leds.o ${OBJECTDIR}/_ext/1371762614/uart.o ${OBJECTDIR}/_ext/2142726457/usb_device.o ${OBJECTDIR}/_ext/2142726457/usb_device_msd.o ${OBJECTDIR}/_ext/2142726457/usb_device_cdc.o

# Source Files
SOURCEFILES=system_config/XPRESS/system.c main.c usb_descriptors.c app_device_msd.c files.c direct.c app_device_cdc.c app_space.c memory.c ../bsp/xpress/buttons.c ../bsp/xpress/leds.c ../bsp/xpress/uart.c ../framework/usb/src/usb_device.c ../framework/usb/src/usb_device_msd.c ../framework/usb/src/usb_device_cdc.c



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
	${MAKE}  -f nbproject/Makefile-XPRESS.mk dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/system_config/XPRESS/system.o: system_config/XPRESS/system.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/system_config/XPRESS" 
	${RM} ${OBJECTDIR}/system_config/XPRESS/system.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 system_config/XPRESS/system.c  -o${OBJECTDIR}/system_config/XPRESS/system.o
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/main.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 main.c  -o${OBJECTDIR}/main.o
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/usb_descriptors.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 usb_descriptors.c  -o${OBJECTDIR}/usb_descriptors.o
	
${OBJECTDIR}/app_device_msd.o: app_device_msd.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/app_device_msd.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 app_device_msd.c  -o${OBJECTDIR}/app_device_msd.o
	
${OBJECTDIR}/files.o: files.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/files.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 files.c  -o${OBJECTDIR}/files.o
	
${OBJECTDIR}/direct.o: direct.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/direct.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 direct.c  -o${OBJECTDIR}/direct.o
	
${OBJECTDIR}/app_device_cdc.o: app_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/app_device_cdc.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 app_device_cdc.c  -o${OBJECTDIR}/app_device_cdc.o
	
${OBJECTDIR}/app_space.o: app_space.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/app_space.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 app_space.c  -o${OBJECTDIR}/app_space.o
	
${OBJECTDIR}/memory.o: memory.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/memory.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 memory.c  -o${OBJECTDIR}/memory.o
	
${OBJECTDIR}/_ext/1371762614/buttons.o: ../bsp/xpress/buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/1371762614" 
	${RM} ${OBJECTDIR}/_ext/1371762614/buttons.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 ../bsp/xpress/buttons.c  -o${OBJECTDIR}/_ext/1371762614/buttons.o
	
${OBJECTDIR}/_ext/1371762614/leds.o: ../bsp/xpress/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/1371762614" 
	${RM} ${OBJECTDIR}/_ext/1371762614/leds.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 ../bsp/xpress/leds.c  -o${OBJECTDIR}/_ext/1371762614/leds.o
	
${OBJECTDIR}/_ext/1371762614/uart.o: ../bsp/xpress/uart.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/1371762614" 
	${RM} ${OBJECTDIR}/_ext/1371762614/uart.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 ../bsp/xpress/uart.c  -o${OBJECTDIR}/_ext/1371762614/uart.o
	
${OBJECTDIR}/_ext/2142726457/usb_device.o: ../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	${RM} ${OBJECTDIR}/_ext/2142726457/usb_device.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 ../framework/usb/src/usb_device.c  -o${OBJECTDIR}/_ext/2142726457/usb_device.o
	
${OBJECTDIR}/_ext/2142726457/usb_device_msd.o: ../framework/usb/src/usb_device_msd.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	${RM} ${OBJECTDIR}/_ext/2142726457/usb_device_msd.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 ../framework/usb/src/usb_device_msd.c  -o${OBJECTDIR}/_ext/2142726457/usb_device_msd.o
	
${OBJECTDIR}/_ext/2142726457/usb_device_cdc.o: ../framework/usb/src/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	${RM} ${OBJECTDIR}/_ext/2142726457/usb_device_cdc.o 
	${MP_CC} --use-non-free --debug -c -mpic16 -p18f25k50 ../framework/usb/src/usb_device_cdc.c  -o${OBJECTDIR}/_ext/2142726457/usb_device_cdc.o
	
else
${OBJECTDIR}/system_config/XPRESS/system.o: system_config/XPRESS/system.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/system_config/XPRESS" 
	${RM} ${OBJECTDIR}/system_config/XPRESS/system.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 system_config/XPRESS/system.c  -o${OBJECTDIR}/system_config/XPRESS/system.o
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/main.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 main.c  -o${OBJECTDIR}/main.o
	
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/usb_descriptors.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 usb_descriptors.c  -o${OBJECTDIR}/usb_descriptors.o
	
${OBJECTDIR}/app_device_msd.o: app_device_msd.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/app_device_msd.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 app_device_msd.c  -o${OBJECTDIR}/app_device_msd.o
	
${OBJECTDIR}/files.o: files.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/files.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 files.c  -o${OBJECTDIR}/files.o
	
${OBJECTDIR}/direct.o: direct.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/direct.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 direct.c  -o${OBJECTDIR}/direct.o
	
${OBJECTDIR}/app_device_cdc.o: app_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/app_device_cdc.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 app_device_cdc.c  -o${OBJECTDIR}/app_device_cdc.o
	
${OBJECTDIR}/app_space.o: app_space.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/app_space.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 app_space.c  -o${OBJECTDIR}/app_space.o
	
${OBJECTDIR}/memory.o: memory.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}" 
	${RM} ${OBJECTDIR}/memory.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 memory.c  -o${OBJECTDIR}/memory.o
	
${OBJECTDIR}/_ext/1371762614/buttons.o: ../bsp/xpress/buttons.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/1371762614" 
	${RM} ${OBJECTDIR}/_ext/1371762614/buttons.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 ../bsp/xpress/buttons.c  -o${OBJECTDIR}/_ext/1371762614/buttons.o
	
${OBJECTDIR}/_ext/1371762614/leds.o: ../bsp/xpress/leds.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/1371762614" 
	${RM} ${OBJECTDIR}/_ext/1371762614/leds.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 ../bsp/xpress/leds.c  -o${OBJECTDIR}/_ext/1371762614/leds.o
	
${OBJECTDIR}/_ext/1371762614/uart.o: ../bsp/xpress/uart.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/1371762614" 
	${RM} ${OBJECTDIR}/_ext/1371762614/uart.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 ../bsp/xpress/uart.c  -o${OBJECTDIR}/_ext/1371762614/uart.o
	
${OBJECTDIR}/_ext/2142726457/usb_device.o: ../framework/usb/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	${RM} ${OBJECTDIR}/_ext/2142726457/usb_device.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 ../framework/usb/src/usb_device.c  -o${OBJECTDIR}/_ext/2142726457/usb_device.o
	
${OBJECTDIR}/_ext/2142726457/usb_device_msd.o: ../framework/usb/src/usb_device_msd.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	${RM} ${OBJECTDIR}/_ext/2142726457/usb_device_msd.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 ../framework/usb/src/usb_device_msd.c  -o${OBJECTDIR}/_ext/2142726457/usb_device_msd.o
	
${OBJECTDIR}/_ext/2142726457/usb_device_cdc.o: ../framework/usb/src/usb_device_cdc.c  nbproject/Makefile-${CND_CONF}.mk 
	${MKDIR} "${OBJECTDIR}/_ext/2142726457" 
	${RM} ${OBJECTDIR}/_ext/2142726457/usb_device_cdc.o 
	${MP_CC} --use-non-free -c -mpic16 -p18f25k50 ../framework/usb/src/usb_device_cdc.c  -o${OBJECTDIR}/_ext/2142726457/usb_device_cdc.o
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -mpic16 -p18f25k50 ${OBJECTFILES_QUOTED_IF_SPACED} -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
else
dist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} -Wl-c -Wl-m --use-non-free -mpic16 -p18f25k50 ${OBJECTFILES_QUOTED_IF_SPACED} -odist/${CND_CONF}/${IMAGE_TYPE}/MPLAB.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/XPRESS
	${RM} -r dist/XPRESS

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
