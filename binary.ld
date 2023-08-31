MEMORY
  {
    RAM : ORIGIN = 0, LENGTH = 4M
  }

REGION_ALIAS("REGION_TEXT", RAM);
REGION_ALIAS("REGION_RODATA", RAM);
REGION_ALIAS("REGION_DATA", RAM);
REGION_ALIAS("REGION_BSS", RAM);

ENTRY(start_external)

SECTIONS
  {
    .text :
      {
        /*
         * Align on 1 may cause breakage.
         * SO, don't say I didn't warn you.
         */
        . = ALIGN(1);
        /*
         * hmm yes, the text segment address 
         * is made out of text segment address
         */
        *(.text)
      } > REGION_TEXT
    .rodata :
      {
        /* I'll not make the same joke twice
         * but basically just say the .rodata
         * pointer exists at the current cursor
         * location 
         */
        *(.rodata)
        /*rodata_end = .;*/
       } > REGION_RODATA
   }
    /*.data : AT (rodata_end)
      {
        data_start = .;
        *(.data)
      } > REGION_DATA
    data_size = SIZEOF(.data);
    data_load_start = LOADADDR(.data);
    .bss :
      {
        *(.bss)
      } > REGION_BSS
  }*/

