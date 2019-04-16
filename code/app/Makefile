include ../settings.mk

PRG            = app
FEATURE_MMC    = 0
FEATURE_ASM    = 1
OBJ            = \
	app.o\
	verified.o\
	verified_except_overflow.o\
	avr-ds18b20/src/ds18b20.o\
	avr-ds18b20/src/onewire.o\
	avr-ds18b20/src/romsearch.o\

ifeq "$(FEATURE_MMC)" "1"
OBJ += \
	fatfs-avr/ff.o\
	fatfs-avr/mmc_avr_spi.o\

endif

ifeq "$(FEATURE_ASM)" "1"
OBJ += asm.O
endif

DEPS           = \
	wire_structs.h\
	fatfs-avr/diskio.h\
	fatfs-avr/ffconf.h\
	fatfs-avr/ff.h\
	fatfs-avr/mmc_avr.h\
	config.h\
	verified.h\
	frama-c-stub.h\
	feature_block.c\
	feature_bsend.c\
	feature_programs.c\
	feature_samples.c\

OPTIMIZE       = -O3 -frename-registers -funroll-loops

DEFS           =-I/usr/local/avr/include -Iavr-ds18b20/include -Ifatfs-avr
LIBS           =-L/usr/local/avr/lib -L/usr/local/avr/lib/avr5

# You should not have to change anything below here.

CC             = avr-gcc

# Override is only needed by avr-lib build system.

#stop on all warnings except unused variables/functions since I'm
#commenting a bunch of things out
#freeRam() needs -Wno-return-local-addr
#LDFLAGS enable float functionality in printf()
CFLAGS  = $(CFLAGS_ROOT) -Werror -Wno-unused -Wno-return-local-addr -Wno-stringop-overflow \
  -Wall $(OPTIMIZE) -mmcu=$(MCU) $(DEFS) -std=gnu99 -DFEATURE_MMC=$(FEATURE_MMC) -DFEATURE_ASM=$(FEATURE_ASM)
LDFLAGS = -Wl,-Map,$(PRG).map -Wl,-u,vfprintf -lprintf_flt -lm \
	-Wl,--defsym=__heap_end=0x80ffff,--print-memory-usage,--script=app.xn
# ^ Put .data and stack in SRAM, .bss and heap in XRAM

OBJCOPY        = avr-objcopy
OBJDUMP        = avr-objdump

all: $(PRG).elf lst text eeprom printstackusage
	avr-nm --size-sort --radix=d $(PRG).elf | sed -e 's/^0*//' | tail -n15
	avr-size $(PRG).elf

PROVERS=z3,cvc4,alt-ergo,qed
verify: verified.c verified_except_overflow.c
	frama-c -wp -wp-rte -warn-unsigned-overflow -wp-prover $(PROVERS) verified.c
	# Some functions are too tedious to verify they don't have signed overflow
	# Such functions go in verified_except_overflow.c for now
	frama-c -wp -wp-rte -warn-unsigned-overflow -no-warn-signed-overflow -wp-prover $(PROVERS) verified_except_overflow.c
	touch verify

.PHONY: printstackusage
printstackusage:
	./avstack.pl $(OBJ)

init3.o: init3.c
	$(CC) -c -o $@ $< $(CFLAGS)

%.O: %.S
	$(CC) -c -o $@ $< $(CFLAGS) -fstack-usage

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) -fstack-usage

$(PRG).elf: $(OBJ) init3.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJ) init3.o $(LIBS)

clean:
	rm -rf $(OBJ) *.o avr-ds18b20/src/*.su fatfs-avr/*.su *.su $(PRG).elf *.eps *.png $(PRG).pdf *.bak
	rm -rf *.lst *.map $(EXTRA_CLEAN_FILES)
	rm -f verify

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

