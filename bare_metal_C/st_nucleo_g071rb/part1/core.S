.syntax unified
.cpu cortex-m0
.fpu softvfp
.thumb

.global vtable
.global reset_handler

.type vtable, %object
vtable:
	.word _estack
	.word reset_handler
.size vtable, .-vtable

/*
 * The reset handler
 */

.type reset_handler, %function
reset_handler:
	//set the stack pointer to the end of the stack
	//the _estack value is defined in the linker script
	LDR r0, =_estack
	MOV sp, r0

	//set some dummy values. When we see these values
	//in our debugger we'll know our program is running.
	LDR r7, =0x0BADBEEF
	MOVS r0, #0
	main_loop:
		ADDS r0, r0, #1
		B main_loop
.size reset_handler, .-reset_handler


