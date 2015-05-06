NAME = pictest

target = pic14
chip = 16f876a
serialport = /dev/ttyS0

prefix ?= /usr
libdir = ${prefix}/lib
datadir = ${prefix}/share

chipu := `echo "${chip}" | tr "[:lower:]" "[:upper]"`

#CC = /usr/bin/sdcc
CC = sdcc
AS = gpasm
LD = gplink
PICPROG = picprog
#CFLAGS =  -S -V -m${target} -pp$(chip) -D__$(chip) 
CFLAGS =  -m${target} -pp$(chip) -D__$(chip) 
#CFLAGS += -DNO_BIT_DEFINES

#LDFLAGS = -m -s ${prefix}/share/gputils/lkr/$(chip).lkr
#LIBS = $(targetlibdir)/pic$(chip).lib 
#LIBS = $(targetlibdir)/pic$(chip).lib $(sdcclibdir)/libsdcc.lib


CFLAGS += --opt-code-speed --stack-auto


ifeq ($(CC),/usr/bin/sdcc)
 sdcclibdir = $(datadir)/sdcc/lib/pic
 targetlibdir = $(datadir)/sdcc/lib/pic
else
 sdcclibdir = $(datadir)/sdcc/lib/$(target)
 targetlibdir = $(datadir)/sdcc/non-free/lib/$(target)
 CFLAGS += --use-non-free
endif

all: $(NAME).hex

program: $(NAME).hex
	#$(PICPROG) --device="pic$(chip)" --erase --burn --pic-serial-port="$(serialport)" --input-hexfile="$<"
	picpgm -p PIC$(chipu) -e -p "$<"
report: 
	#$(PICPROG) --device="pic$(chip)" --erase --burn --pic-serial-port="$(serialport)" --input-hexfile="$<"
	picpgm -p PIC$(chipu)  -blank -r 

.c.o: ;
#%.o: %.c
%.o: %.as
	$(AS) -c $<

#%.hex: %.o
#	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS)


%.o: %.c
	$(CC) $(CFLAGS) -c $<
%.as: %.c
	$(CC) $(CFLAGS) -S $<

pictest.hex: pictest.o adc.o uart.o
	$(CC) $(CFLAGS) $^

clean:
	$(RM) $(NAME).as $(NAME).cod $(NAME).hex $(NAME).map *.o *.lst *.as


#$(NAME).hex: $(NAME).c adc.c uart.c

