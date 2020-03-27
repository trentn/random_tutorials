all:
	arm-none-eabi-gcc -x assembler-with-cpp -c -O0 -mcpu=cortex-m0 -mthumb -Wall core.S -o core.o
	arm-none-eabi-gcc core.o -mcpu=cortex-m0 -mthumb -Wall --specs=nosys.specs -nostdlib -lgcc -T./linker_script.ld -o main.elf
	
clean:
	rm core.o main.elf
	
flash:
	openocd -f ../board.cfg -c "program main.elf reset exit"
