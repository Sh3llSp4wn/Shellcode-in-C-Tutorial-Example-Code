ENTRY(start_external)

SECTIONS
{
  . = 0x42000;
  .text : { *(.text) }
  . = 0x690000;
  .data : { *(.data) }
  .bss : { *(.bss) }
}

