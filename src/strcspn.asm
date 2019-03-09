bits 64

global strcspn
section .text

strcspn:
    xor rcx, rcx
    xor r8, r8
    xor r9, r9
    cmp	rdi, 0
    je return_nb
    cmp	rsi, 0
    je return_nb
    jmp comp

comp:
    cmp byte[rdi + rcx], 0
    je return_nb
    cmp byte[rsi + r8], 0
    je inc_rcx_and_result
    mov r10b, byte[rdi + rcx]
    mov r11b, byte[rsi + r8]
    cmp r11b, r10b
    je return_nb
    inc r8
    jmp comp

inc_rcx_and_result:
    inc rcx
    xor r8, r8
    inc r9
    jmp comp

return_nb:
    mov rax, r9
    ret