##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=pictest-xc8s
ConfigurationName      :=Debug
WorkspacePath          :=/home/roman/Dokumente/Sources/pictest/build
ProjectPath            :=/home/roman/Dokumente/Sources/pictest/build
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=roman
Date                   :=25/08/19
CodeLitePath           :=/home/roman/.codelite
LinkerName             :=/opt/microchip/xc8/v1.34/bin/mplink
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=bin/Debug/pictest
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="pictest-xc8s.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -O0
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)../lib $(IncludeSwitch)../src 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). $(LibraryPathSwitch)Debug 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcu
CXX      := /opt/microchip/xc8/v1.34/bin/xc8
CC       := /opt/microchip/xc8/v1.34/bin/xc8
CXXFLAGS :=  --chip=16f876a --opt=default,+asm,-debug,+speed,-space,9 -C -D__16f876a=1  $(Preprocessors)
CFLAGS   :=  --chip=16f876a --opt=default,+asm,-debug,+speed,-space,9 -C -D__16f876a=1  $(Preprocessors)
ASFLAGS  := 
AS       := /opt/microchip/xc8/v1.34/bin/mpasm


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/up_lib_adc.c$(ObjectSuffix) $(IntermediateDirectory)/up_lib_delay.c$(ObjectSuffix) $(IntermediateDirectory)/up_lib_lcd44780.c$(ObjectSuffix) $(IntermediateDirectory)/up_lib_ledsense.c$(ObjectSuffix) $(IntermediateDirectory)/up_lib_uart.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_pictest.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/up_lib_adc.c$(ObjectSuffix): ../lib/adc.c 
	$(CC) $(SourceSwitch) "/home/roman/Dokumente/Sources/pictest/lib/adc.c" $(CFLAGS) -c -o$(IntermediateDirectory)/up_lib_adc.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_lib_adc.c$(PreprocessSuffix): ../lib/adc.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_lib_adc.c$(PreprocessSuffix) ../lib/adc.c

$(IntermediateDirectory)/up_lib_delay.c$(ObjectSuffix): ../lib/delay.c 
	$(CC) $(SourceSwitch) "/home/roman/Dokumente/Sources/pictest/lib/delay.c" $(CFLAGS) -c -o$(IntermediateDirectory)/up_lib_delay.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_lib_delay.c$(PreprocessSuffix): ../lib/delay.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_lib_delay.c$(PreprocessSuffix) ../lib/delay.c

$(IntermediateDirectory)/up_lib_lcd44780.c$(ObjectSuffix): ../lib/lcd44780.c 
	$(CC) $(SourceSwitch) "/home/roman/Dokumente/Sources/pictest/lib/lcd44780.c" $(CFLAGS) -c -o$(IntermediateDirectory)/up_lib_lcd44780.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_lib_lcd44780.c$(PreprocessSuffix): ../lib/lcd44780.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_lib_lcd44780.c$(PreprocessSuffix) ../lib/lcd44780.c

$(IntermediateDirectory)/up_lib_ledsense.c$(ObjectSuffix): ../lib/extra/ledsense.c 
	$(CC) $(SourceSwitch) "/home/roman/Dokumente/Sources/pictest/lib/extra/ledsense.c" $(CFLAGS) -c -o$(IntermediateDirectory)/up_lib_ledsense.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_lib_ledsense.c$(PreprocessSuffix): ../lib/extra/ledsense.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_lib_ledsense.c$(PreprocessSuffix) ../lib/extra/ledsense.c

$(IntermediateDirectory)/up_lib_uart.c$(ObjectSuffix): ../lib/uart.c 
	$(CC) $(SourceSwitch) "/home/roman/Dokumente/Sources/pictest/lib/uart.c" $(CFLAGS) -c -o$(IntermediateDirectory)/up_lib_uart.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_lib_uart.c$(PreprocessSuffix): ../lib/uart.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_lib_uart.c$(PreprocessSuffix) ../lib/uart.c

$(IntermediateDirectory)/up_src_pictest.c$(ObjectSuffix): ../src/pictest.c 
	$(CC) $(SourceSwitch) "/home/roman/Dokumente/Sources/pictest/src/pictest.c" $(CFLAGS) -c -o$(IntermediateDirectory)/up_src_pictest.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_pictest.c$(PreprocessSuffix): ../src/pictest.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_pictest.c$(PreprocessSuffix) ../src/pictest.c

##
## Clean
##
clean:
	$(RM) -r ./Debug/


