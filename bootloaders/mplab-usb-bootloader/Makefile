# MPLAB IDE generated this makefile for use with GNU make.
# Project: HID Bootloader PIC18 Non J.mcp
# Date: Sun Feb 05 08:15:30 2017

AS = mpasm
CC = mcc18
LD = mplink
AR = mplib
RM = rm
MCCDIR = /opt/microchip/mplabc18/v3.40

HID/ Bootloader/ PIC18/ Non/ J.cof : hid.o main.o usb9.o usbctrltrf.o usbdrv.o usbdsc.o usbmmap.o BootPIC18NonJ.o
	$(LD) -p18F4550 -l"$(MCCDIR)/lib" -k"$(MCCDIR)/lkr" "BootModified.18f4550.lkr" "hid.o" "main.o" "usb9.o" "usbctrltrf.o" "usbdrv.o" "usbdsc.o" "usbmmap.o" "BootPIC18NonJ.o" -u_CRUNTIME -z__MPLAB_BUILD=1 -m"HID Bootloader PIC18 Non J.map" -w -o"HID Bootloader PIC18 Non J.cof"

hid.o : hid.c hid.h usbdrv.h hid.c $(MCCDIR)/h/p18cxxx.h $(MCCDIR)/h/p18f4550.h typedefs.h usb.h usbcfg.h usbdefs_std_dsc.h usbdsc.h usbdefs_ep0_buff.h usbmmap.h usbctrltrf.h usb9.h
	$(CC) -p=18F4550 -I"$(MCCDIR)/h" "hid.c" -fo="hid.o" -pa=4

main.o : main.c hid.h usbdrv.h main.c $(MCCDIR)/h/p18cxxx.h $(MCCDIR)/h/p18f4550.h typedefs.h usb.h usbcfg.h usbdefs_std_dsc.h usbdsc.h usbdefs_ep0_buff.h usbmmap.h usbctrltrf.h usb9.h io_cfg.h BootPIC18NonJ.h
	$(CC) -p=18F4550 -I"$(MCCDIR)/h" "main.c" -fo="main.o" -pa=4

usb9.o : usb9.c hid.h usbdrv.h usb9.c $(MCCDIR)/h/p18cxxx.h $(MCCDIR)/h/p18f4550.h typedefs.h usb.h usbcfg.h usbdefs_std_dsc.h usbdsc.h usbdefs_ep0_buff.h usbmmap.h usbctrltrf.h usb9.h io_cfg.h
	$(CC) -p=18F4550 -I"$(MCCDIR)/h" "usb9.c" -fo="usb9.o" -pa=4

usbctrltrf.o : usbctrltrf.c hid.h usbdrv.h usbctrltrf.c $(MCCDIR)/h/p18cxxx.h $(MCCDIR)/h/p18f4550.h typedefs.h usb.h usbcfg.h usbdefs_std_dsc.h usbdsc.h usbdefs_ep0_buff.h usbmmap.h usbctrltrf.h usb9.h
	$(CC) -p=18F4550 -I"$(MCCDIR)/h" "usbctrltrf.c" -fo="usbctrltrf.o" -pa=4

usbdrv.o : usbdrv.c hid.h usbdrv.h usbdrv.c $(MCCDIR)/h/p18cxxx.h $(MCCDIR)/h/p18f4550.h typedefs.h usb.h usbcfg.h usbdefs_std_dsc.h usbdsc.h usbdefs_ep0_buff.h usbmmap.h usbctrltrf.h usb9.h io_cfg.h
	$(CC) -p=18F4550 -I"$(MCCDIR)/h" "usbdrv.c" -fo="usbdrv.o" -pa=4

usbdsc.o : usbdsc.c hid.h usbdrv.h usbdsc.c typedefs.h usb.h usbcfg.h usbdefs_std_dsc.h usbdsc.h usbdefs_ep0_buff.h usbmmap.h usbctrltrf.h usb9.h
	$(CC) -p=18F4550 -I"$(MCCDIR)/h" "usbdsc.c" -fo="usbdsc.o" -pa=4

usbmmap.o : usbmmap.c hid.h usbdrv.h usbmmap.c typedefs.h usb.h usbcfg.h usbdefs_std_dsc.h usbdsc.h usbdefs_ep0_buff.h usbmmap.h usbctrltrf.h usb9.h
	$(CC) -p=18F4550 -I"$(MCCDIR)/h" "usbmmap.c" -fo="usbmmap.o" -pa=4

BootPIC18NonJ.o : BootPIC18NonJ.c hid.h usbdrv.h BootPIC18NonJ.c $(MCCDIR)/h/p18cxxx.h $(MCCDIR)/h/p18f4550.h typedefs.h usb.h usbcfg.h usbdefs_std_dsc.h usbdsc.h usbdefs_ep0_buff.h usbmmap.h usbctrltrf.h usb9.h io_cfg.h
	$(CC) -p=18F4550 -I"$(MCCDIR)/h" "BootPIC18NonJ.c" -fo="BootPIC18NonJ.o" -pa=4

clean : 
	$(RM) "hid.o" "main.o" "usb9.o" "usbctrltrf.o" "usbdrv.o" "usbdsc.o" "usbmmap.o" "BootPIC18NonJ.o" "HID Bootloader PIC18 Non J.cof" "HID Bootloader PIC18 Non J.hex" "HID Bootloader PIC18 Non J.map"

