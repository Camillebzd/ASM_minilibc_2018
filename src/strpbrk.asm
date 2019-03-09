bits 64

global strpbrk
section .text

strpbrk:
    xor rcx, rcx
    xor r8, r8
    cmp	rdi, 0
    je return_null
    cmp	rsi, 0
    je return_null
    jmp comp

comp:
    cmp byte[rdi + rcx], 0
    je return_null
    cmp byte[rsi + r8], 0
    je inc_rcx
    mov r9b, byte[rdi + rcx]
    mov r10b, byte[rsi + r8]
    cmp r9b, r10b
    je return_ptr
    inc r8
    jmp comp

inc_rcx:
    inc rcx
    xor r8, r8
    jmp comp

return_ptr:
    add rdi, rcx
    mov rax, rdi
    ret

return_null:
    mov rax, 0
    ret