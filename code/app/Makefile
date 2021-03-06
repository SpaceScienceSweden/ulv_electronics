
include ../settings.mk

STACK_MAX = 512

PRG            = app
FEATURE_MMC    = 0
FEATURE_ASM    = 1
OBJ            = \
	app.o\
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
	verified.c\
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
#CFLAGS += -DTEST_SPEED
LDFLAGS = -Wl,-Map,$(PRG).map -Wl,-u,vfprintf -lprintf_flt -lm \
	-Wl,--defsym=__heap_end=0x80ffff,--print-memory-usage,--script=app.xn
# ^ Put .data and stack in SRAM, .bss and heap in XRAM

OBJCOPY        = avr-objcopy
OBJDUMP        = avr-objdump

all: $(PRG).elf lst text eeprom printstackusage checkstackusage
	avr-nm --size-sort --radix=d $(PRG).elf | sed -e 's/^0*//' | tail -n15
	avr-size $(PRG).elf

print-%: ; @echo $*=$($*)

FRAMA_C_BOILER=-wp-model Typed+nocast+int -wp-prover script,alt-ergo -load-script ../gcc_avr_16_machdep.ml -cpp-extra-args="-DF_CPU=$(F_CPU) -DFRAMA_C -D__FC_MACHDEP_GCC_AVR_16" -wp -machdep gcc_avr_16 -wp-rte -warn-unsigned-overflow
FRAMA_C_TIMEOUT=10

verify: verify-strong verify-weak

verify-strong:
	time frama-c $(FRAMA_C_BOILER) -wp-timeout $(FRAMA_C_TIMEOUT) verified.c

verify-weak:
	# Do another round of proving but with weaker wreg simulation
	# In other words, without assuming wreg always succeeds
	time frama-c $(FRAMA_C_BOILER) -wp-timeout $(FRAMA_C_TIMEOUT) -cpp-extra-args=-DWEAK_WREG verified.c

verify-gui:
	# Have much shorter timeout in the GUI so we make faster proof scripts and don't have to wait so long for steps that usually time out
	frama-c-gui  $(FRAMA_C_BOILER) -wp-timeout 1 verified.c

# For verifying specific functions, for example:
#
#  make verify-compute_sum_abs
#
verify-%:
	time frama-c $(FRAMA_C_BOILER) -wp-timeout $(FRAMA_C_TIMEOUT) -wp-fct $* verified.c

# Same as above but with GUI
verify-gui-%:
	frama-c-gui  $(FRAMA_C_BOILER) -wp-timeout 1 -wp-fct $* verified.c

.PHONY: printstackusage
printstackusage:
	./avstack.pl $(OBJ)

.PHONY: checkstackusage
checkstackusage:
	# If this fails then __DATA_REGION_LENGTH__ needs to be decreased in app.xn,
	# and STACK_MAX increased accordingly
	[ $$(./avstack.pl $(OBJ) | head -n3 | tail -n1 | tr -s ' ' | cut -d' ' -f3) \
	  -le $(STACK_MAX) ] || ( \
	  echo Only $(STACK_MAX) B reserved for stack, check app.xn && exit 1)

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

loadusb: $(PRG).hex
	avrdude -c $(AVRDUDE_PROGRAMMER) -e -p $(MCU)
	avrdude -c $(AVRDUDE_PROGRAMMER) -U flash:w:$(PRG).hex -p $(MCU)

lst:  $(PRG).lst

%.lst: %.elf
	$(OBJDUMP) -h -S -j .data -j .text $< > $@

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

