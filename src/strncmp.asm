bits 64

global strncmp
section .text

strncmp:
    xor rcx, rcx
    cmp	rdi, 0
    je quit
    cmp	rsi, 0
    je quit
    cmp rdx, 0
    je null

comp:
    mov al, byte[rdi + rcx]
    mov r8b, byte[rsi + rcx]
    cmp al, 0
    je find_value
    cmp r8b, 0
    je find_value
    cmp al, r8b
    jne find_value
    inc rcx
    cmp rcx, rdx
    je find_value
    jmp comp

find_value:
    sub al, r8b
    movsx rax, al
    jmp quit

null:
    mov rax, 0
    ret

quit:
    ret