__asm
{
    mov eax,01h
    cpuid
    mov t,ebx
}
// (t>>16)&0xff
