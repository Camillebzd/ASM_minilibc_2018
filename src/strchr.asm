bits 64

global strchr
section .text

strchr:
    xor r8, r8
    cmp	rdi, 0
    je return_null

comp:
    cmp	byte[rdi + r8],	sil ;8bit pas rsi
    je return_result
    cmp byte[rdi + r8], 0
    je return_null
    inc r8
    jmp comp

return_null:
    mov rax, 0
    ret

return_result:
    add rdi, r8
    mov rax, rdi
    ret