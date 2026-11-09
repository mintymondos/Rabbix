global start
extern kernel_main

section .text
bits 32
start:
    cli
    cld
    mov esp, stack_top
    cmp eax, 0x36d76289
    jne .no_multiboot

    xor ebp, ebp
    sub esp, 8
    push ebx
    push eax
    call kernel_main

.halt:
    cli
    hlt
    jmp .halt

.no_multiboot:
    mov dword [0xb8000], 0x4f214f4d
    jmp .halt

section .bss
align 16
stack_bottom:
    resb 16384
stack_top:
