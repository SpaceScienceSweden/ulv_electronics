PRG            = app
OBJ            = app.o
OPTIMIZE       = -O3 -frename-registers -funroll-loops

DEFS           =-I/usr/local/avr/include -I../avr-ds18b20/include
LIBS           =-L/usr/local/avr/lib -L/usr/local/avr/lib/avr5

# You should not have to change anything below here.

CC             = avr-gcc

# Override is only needed by avr-lib build system.

#stop on all warnings except unused variables/functions since I'm
#commenting a bunch of things out
#freeRam() needs -Wno-return-local-addr
#LDFLAGS enable float functionality in printf()
CFLAGS  = $(CFLAGS_ROOT) -g -Werror -Wno-unused -Wno-return-local-addr \
  -Wall $(OPTIMIZE) -mmcu=$(MCU) $(DEFS) -std=gnu99
LDFLAGS = -Wl,-Map,$(PRG).map -Wl,-u,vfprintf -lprintf_flt -lm \
	-Wl,--section-start,.bss=0x801100,--defsym=__heap_end=0x80ffff
# ^ Put .data and stack in SRAM, .bss and heap in XRAM

OBJCOPY        = avr-objcopy
OBJDUMP        = avr-objdump

all: $(PRG).elf lst text eeprom
	avr-size $(PRG).elf

$(PRG).elf: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -rf *.o $(PRG).elf *.eps *.png *.pdf *.bak
	rm -rf *.lst *.map $(EXTRA_CLEAN_FILES)

loadusb: $(PRG).hex
	avrdude -c $(AVRDUDE_PROGRAMMER) -e -p $(MCU)
	avrdude -c $(AVRDUDE_PROGRAMMER) -U flash:w:$(PRG).hex -p $(MCU)

lst:  $(PRG).lst

%.lst: %.elf
	$(OBJDUMP) -h -S $< > $@

# Rules for building the .text rom images

text: hex bin srec

hex:  $(PRG).hex
bin:  $(PRG).bin
srec: $(PRG).srec

%.hex: %.elf
	$(OBJCOPY) -j .text -j .data -O ihex $< $@

%.srec: %.elf
	$(OBJCOPY) -j .text -j .data -O srec $< $@

%.bin: %.elf
	$(OBJCOPY) -j .text -j .data -O binary $< $@

# Rules for building the .eeprom rom images

eeprom: ehex ebin esrec

ehex:  $(PRG)_eeprom.hex
ebin:  $(PRG)_eeprom.bin
esrec: $(PRG)_eeprom.srec

%_eeprom.hex: %.elf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O ihex $< $@

%_eeprom.srec: %.elf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O srec $< $@

%_eeprom.bin: %.elf
	$(OBJCOPY) -j .eeprom --change-section-lma .eeprom=0 -O binary $< $@

# Every thing below here is used by avr-libc's build system and can be ignored
# by the casual user.

FIG2DEV                 = fig2dev
EXTRA_CLEAN_FILES       = *.hex *.bin *.srec

dox: eps png pdf

eps: $(PRG).eps
png: $(PRG).png
pdf: $(PRG).pdf

%.eps: %.fig
	$(FIG2DEV) -L eps $< $@

%.pdf: %.fig
	$(FIG2DEV) -L pdf $< $@

%.png: %.fig
	$(FIG2DEV) -L png $< $@

