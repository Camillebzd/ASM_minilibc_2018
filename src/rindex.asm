bits 64

global rindex
section .text

rindex:
    xor rcx, rcx
    cmp rdi, 0
    je return_ptr
    cmp rsi, 0
    jg my_strlen
    jmp return_ptr

my_strlen:
    cmp byte[rdi + rcx], 0
    je cut_end
    inc rcx
    jmp my_strlen

cut_end:
    dec rcx
    jmp comp

comp:
    cmp byte[rdi + rcx], sil
    je return_ptr
    cmp byte[rdi + rcx], 0
    je return_ptr
    dec rcx
    jmp comp

return_ptr:
    cmp rcx, 0
    jle return_null
    add rdi, rcx
    mov rax, rdi
    ret

return_null:
    mov rax, 0
    ret