MCU=atmega128
AVRDUDE_PROGRAMMER=stk600
#TODO: BOOTSIZE=512 is enough for flight
BOOTSIZE=1024
# Baudrate in program and bootloader
BAUD=115200
# Actual baudrate used during programming
# Will be different from BAUD while changing rates
PROGBAUD=115200
CFLAGS_ROOT=-DF_CPU=14745600LL -DBAUD=$(BAUD) -DBOOTSIZE=$(BOOTSIZE)
export

# We could have some different options when developing,
# like faster boot time
all:
	make -C app all

avr109:
	WAIT_VALUE=300 make -C avr109 all

.PHONY: flight programserial manual clean avr109
flight:
	make -C app clean all
	WAIT_VALUE=300 make -C avr109 clean all

	# efuse: ATmega103 compatibility mode *off* (else USART1 won't work)
	# hfuse: JTAG *off* (else PF4..7 won't work)
	#        BOOTSZ=2 (1024), BOOTRST on
	# lfuse: CKOPT=1 (3.3V XTAL2 output)
	#        External HF crystal, 16k CK + 4 ms startup
	#eeprom: Keep motors off
	avrdude -c $(AVRDUDE_PROGRAMMER) -p $(MCU) -e -U flash:w:avr109/main.hex \
	  -U lfuse:w:0xef:m -U hfuse:w:0xCC:m -U efuse:w:0xff:m -U eeprom:w:eeprom.hex -B 10
	make programserial

setbaud:
	stty -F /dev/ttyUSB0 $(PROGBAUD)

programserial:
	make -C app all
	killall picocom minicom || true
	stty -F /dev/ttyUSB0 $(PROGBAUD)
	./reset_kub.sh
	# Don't touch EEPROM -> motors keep spinning if spun up
	avrdude -b $(PROGBAUD) -c avr109 -p atmega128 -P /dev/ttyUSB0 -U flash:w:app/app.hex

manual:
	make -C manual manual.pdf

clean:
	make -C avr109 clean
	make -C app clean
