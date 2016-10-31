PRG            = adc
OBJ            = adc.o
MCU_TARGET     = atmega128
OPTIMIZE       = -O2

DEFS           =-I/usr/local/avr/include
LIBS           =-L/usr/local/avr/lib -L/usr/local/avr/lib/avr5

# You should not have to change anything below here.

CC             = avr-gcc

# Override is only needed by avr-lib build system.

#stop on all warnings except unused variables/functions since I'm
#commenting a bunch of things out
override CFLAGS        = -g -Werror -Wno-unused -Wall $(OPTIMIZE) -mmcu=$(MCU_TARGET) $(DEFS)
override LDFLAGS       = -Wl,-Map,$(PRG).map

OBJCOPY        = avr-objcopy
OBJDUMP        = avr-objdump

all: $(PRG).elf lst text eeprom

$(PRG).elf: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -rf *.o $(PRG).elf *.eps *.png *.pdf *.bak 
	rm -rf *.lst *.map $(EXTRA_CLEAN_FILES)

load: $(PRG).hex
	uisp -dprog=stk200 -dlpt=/dev/parport0 --erase
	uisp -dprog=stk200 -dlpt=/dev/parport0 --upload if=$(PRG).hex -v=3 --hash=32 #--verify

loadusb: $(PRG).hex
	avrdude -c stk600 -e -p $(MCU_TARGET)
	avrdude -c stk600 -U flash:w:$(PRG).hex -p $(MCU_TARGET)

setfuses:
	# External HF crystal, 16k CK + 4 ms startup
	# ATmega103 compatibility mode *off* (else USART1 won't work)
	avrdude -c stk600 -p m128 -U lfuse:w:0xef:m -U hfuse:w:0x99:m -U efuse:w:0xff:m 

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

