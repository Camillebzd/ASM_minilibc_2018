bits 64

global memcpy
section .text

memcpy:
	xor rcx, rcx
	cmp rdi, 0
	je return_ptr
    cmp rsi, 0
    je return_ptr
    cmp rdx, 0
    jg comp
    jmp return_ptr

comp:
    cmp byte[rsi + rcx], 0
    je return_ptr
    cmp rdx, rcx
    je return_ptr
    mov r8b, byte[rsi + rcx]
    mov byte[rdi + rcx], r8b
    inc rcx
    jmp comp

return_ptr:
    mov rax, rdi
    ret