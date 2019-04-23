ARCH=arm-none-eabi
CPU=cortex-m3
LINKER_SCRIPT=linker_script.ld

CC=$(ARCH)-gcc
CFLAGS=-O0 -c -g

CFLAGS_EXTRA=-mthumb

LD=$(ARCH)-ld
LDFLAGS=-T$(LINKER_SCRIPT)

OBJCP=$(ARCH)-objcopy
OBJCPFLAGS=-O binary


SOURCES := $(wildcard *.c)
OBJECTS := $(SOURCES:%.c=%.o)


all: program.bin

%.o: %.c
	$(CC) $(CFLAGS) $(CFLAGS_EXTRA) -o $@ $<

program.elf: $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@ $^

program.bin: program.elf
	$(OBJCP) $(OBJFLAGS) $^ $@

clean:
	rm *.o *.elf *.bin

