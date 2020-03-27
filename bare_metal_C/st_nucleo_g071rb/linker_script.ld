/* Define the end of RAM and limit of stack memory */

/* RAM starts at 0x20000000 */
/* Flash starts at 0x08000000 */

/* (36KB SRAM on STM32G071RB, 36864 = 0x9000) */
_estack = 0x20009000;


MEMORY
{
	FLASH ( rx )	: ORIGIN = 0x08000000, LENGTH = 128K
	RAM (rwx)	: ORIGIN = 0x20000000, LENGTH = 36K
}
