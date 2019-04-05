SECTIONS {
        . = 0x0;        /* From 0x00000000 */
        
        .text : {
            *(vectors)  /* Vector Table */
            *(.text)    /* Program code */
        }

        .rodata : {
            *(.rodata)  /* Read Only data */
        }
        _DATA_ROM_START = .;

        . = 0x20000000; /* start of read-write memory */
        _DATA_RAM_START = .;
        .data : AT(_DATA_ROM_START) {
            *(.data)
        }
        _DATA_RAM_END = .;

        _BSS_START = .; /* Indicates where BSS section starts in RAM */
        .bss : {
            *(.bss)     /* Zero-filled run time allocate data memory */
        }
        _BSS_END = .;   /* Indicates where BSS section ends in RAM */
}