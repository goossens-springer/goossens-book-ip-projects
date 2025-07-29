ENTRY(main)
SECTIONS
{
    . = 0;
    .text :
    {
        *(.text.main);
        *(.text*);
    }
    . = 0;
    .data :
    {
        *(.*data*);
    }
    .bss :
    {
        *(.*bss*);
    }
}
