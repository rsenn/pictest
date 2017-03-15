#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.

# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

prefix := $(shell ${CC} -print-search-dirs|sed -n "/^libraries/ { s,.*=,, ; s,/bin.*,, ; s,/lib.*,,; p }")

# Macros
CND_PLATFORM=$(shell $(CC) -dumpmachine)
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/wave-xc8.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDFLAGS=-static-libgcc -static-libstdc++
LDLIBSOPTIONS=${prefix}/lib/libboost_program_options.a ${prefix}/lib/libboost_system.a ${prefix}/lib/libboost_thread.a ${prefix}/lib/libboost_wave.a ${prefix}/lib/libboost_filesystem.a -lpthread

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: ${prefix}/lib/libboost_filesystem.a
${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: ${prefix}/lib/libboost_program_options.a
${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: ${prefix}/lib/libboost_system.a
${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: ${prefix}/lib/libboost_thread.a
${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: ${prefix}/lib/libboost_wave.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} ${LDFLAGS} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8 ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/wave-xc8.o: wave-xc8.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} $@.d
	$(COMPILE.cc) -g -I${prefix}/include/boost -MMD -MP -MF $@.d -o ${OBJECTDIR}/wave-xc8.o wave-xc8.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/wave-xc8.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
