# MPLAB IDE generated this makefile for use with GNU make.
# Project: bootloader_2.mcp
# Date: Sun Feb 05 01:56:01 2017

AS = mpasmwin$(EXEEXT)
CC = mcc18$(EXEEXT)
LD = mplink$(EXEEXT)
AR = mplib$(EXEEXT)
#RM = rm
CHIP = 18f2550
BUILDDIR =output_$(CHIP)
TARGET = bootloader_2

all: $(BUILDDIR) $(BUILDDIR)/$(TARGET).cof

$(BUILDDIR):
	-mkdir $(BUILDDIR)

$(BUILDDIR)/$(TARGET).cof: $(BUILDDIR)/main.o $(BUILDDIR)/usbmmap.o $(BUILDDIR)/usbdrv.o $(BUILDDIR)/usb9.o $(BUILDDIR)/usbdsc.o $(BUILDDIR)/usbctrltrf.o $(BUILDDIR)/boot.o
	$(LD) /p$(CHIP) /l"C:\MCC18\lib" /l"C:\MCC18\lib" /k"C:\MCC18\lkr" "$(CHIP).lkr" "$(BUILDDIR)\main.o" "$(BUILDDIR)\usbmmap.o" "$(BUILDDIR)\usbdrv.o" "$(BUILDDIR)\usb9.o" "$(BUILDDIR)\usbdsc.o" "$(BUILDDIR)\usbctrltrf.o" "$(BUILDDIR)\boot.o" /u_CRUNTIME /z__MPLAB_BUILD=1 /m".\$(BUILDDIR)\$(TARGET).map" /w /o".\$(BUILDDIR)\$(TARGET).cof"

$(BUILDDIR)/main.o: main.c system/typedefs.h system/usb/usb.h autofiles/usbcfg.h system/usb/usbdefs/usbdefs_std_dsc.h autofiles/usbdsc.h system/usb/class/boot/boot.h system/usb/usbdefs/usbdefs_ep0_buff.h system/usb/usbmmap.h system/usb/usbdrv/usbdrv.h system/usb/usbctrltrf/usbctrltrf.h system/usb/usb9/usb9.h io_cfg.h system/usb/usb_compile_time_validation.h
	$(CC) -p=$(CHIP) /i"." "main.c" -fo=".\$(BUILDDIR)\main.o" -scs

$(BUILDDIR)/usbmmap.o: system/usb/usbmmap.c system/typedefs.h system/usb/usb.h autofiles/usbcfg.h system/usb/usbdefs/usbdefs_std_dsc.h autofiles/usbdsc.h system/usb/class/boot/boot.h system/usb/usbdefs/usbdefs_ep0_buff.h system/usb/usbmmap.h system/usb/usbdrv/usbdrv.h system/usb/usbctrltrf/usbctrltrf.h system/usb/usb9/usb9.h
	$(CC) -p=$(CHIP) /i"." "system\usb\usbmmap.c" -fo=".\$(BUILDDIR)\usbmmap.o" -scs

$(BUILDDIR)/usbdrv.o: system/usb/usbdrv/usbdrv.c system/typedefs.h system/usb/usb.h autofiles/usbcfg.h system/usb/usbdefs/usbdefs_std_dsc.h autofiles/usbdsc.h system/usb/class/boot/boot.h system/usb/usbdefs/usbdefs_ep0_buff.h system/usb/usbmmap.h system/usb/usbdrv/usbdrv.h system/usb/usbctrltrf/usbctrltrf.h system/usb/usb9/usb9.h io_cfg.h
	$(CC) -p=$(CHIP) /i"." "system\usb\usbdrv\usbdrv.c" -fo=".\$(BUILDDIR)\usbdrv.o" -scs

$(BUILDDIR)/usb9.o: system/usb/usb9/usb9.c system/typedefs.h system/usb/usb.h autofiles/usbcfg.h system/usb/usbdefs/usbdefs_std_dsc.h autofiles/usbdsc.h system/usb/class/boot/boot.h system/usb/usbdefs/usbdefs_ep0_buff.h system/usb/usbmmap.h system/usb/usbdrv/usbdrv.h system/usb/usbctrltrf/usbctrltrf.h system/usb/usb9/usb9.h io_cfg.h
	$(CC) -p=$(CHIP) /i"." "system\usb\usb9\usb9.c" -fo=".\$(BUILDDIR)\usb9.o" -scs

$(BUILDDIR)/usbdsc.o: autofiles/usbdsc.c system/typedefs.h system/usb/usb.h autofiles/usbcfg.h system/usb/usbdefs/usbdefs_std_dsc.h autofiles/usbdsc.h system/usb/class/boot/boot.h system/usb/usbdefs/usbdefs_ep0_buff.h system/usb/usbmmap.h system/usb/usbdrv/usbdrv.h system/usb/usbctrltrf/usbctrltrf.h system/usb/usb9/usb9.h
	$(CC) -p=$(CHIP) /i"." "autofiles\usbdsc.c" -fo=".\$(BUILDDIR)\usbdsc.o" -scs

$(BUILDDIR)/usbctrltrf.o: system/usb/usbctrltrf/usbctrltrf.c system/typedefs.h system/usb/usb.h autofiles/usbcfg.h system/usb/usbdefs/usbdefs_std_dsc.h autofiles/usbdsc.h system/usb/class/boot/boot.h system/usb/usbdefs/usbdefs_ep0_buff.h system/usb/usbmmap.h system/usb/usbdrv/usbdrv.h system/usb/usbctrltrf/usbctrltrf.h system/usb/usb9/usb9.h
	$(CC) -p=$(CHIP) /i"." "system\usb\usbctrltrf\usbctrltrf.c" -fo=".\$(BUILDDIR)\usbctrltrf.o" -scs

$(BUILDDIR)/boot.o: system/usb/class/boot/boot.c system/typedefs.h system/usb/usb.h autofiles/usbcfg.h system/usb/usbdefs/usbdefs_std_dsc.h autofiles/usbdsc.h system/usb/class/boot/boot.h system/usb/usbdefs/usbdefs_ep0_buff.h system/usb/usbmmap.h system/usb/usbdrv/usbdrv.h system/usb/usbctrltrf/usbctrltrf.h system/usb/usb9/usb9.h io_cfg.h
	$(CC) -p=$(CHIP) /i"." "system\usb\class\boot\boot.c" -fo=".\$(BUILDDIR)\boot.o" -scs

clean: 
	$(RM) $(BUILDDIR)/main.o $(BUILDDIR)/usbmmap.o $(BUILDDIR)/usbdrv.o $(BUILDDIR)/usb9.o $(BUILDDIR)/usbdsc.o $(BUILDDIR)/usbctrltrf.o $(BUILDDIR)/boot.o $(BUILDDIR)/$(TARGET).cof $(BUILDDIR)/$(TARGET).hex $(BUILDDIR)/$(TARGET).map

program:  | $(BUILDDIR)/$(TARGET).cof
	picpgm -if JDM -pic pic18f2550 -port COM1 -e -p $(BUILDDIR)/$(TARGET).hex