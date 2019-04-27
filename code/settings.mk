MCU=atmega128
AVRDUDE_PROGRAMMER=stk600
#TODO: BOOTSIZE=512 is enough for flight
BOOTSIZE=1024
# Baudrate in program and bootloader
BAUD=115200
# Actual baudrate used during programming
# Will be different from BAUD while changing rates
PROGBAUD=115200
F_CPU=7372800LL
CFLAGS_ROOT=-DF_CPU=$(F_CPU) -DBAUD=$(BAUD) -DBOOTSIZE=$(BOOTSIZE)

