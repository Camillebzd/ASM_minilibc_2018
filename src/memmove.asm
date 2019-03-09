bits 64

global memmove
section .text

memmove:
	xor rcx, rcx
	cmp rdi, 0
	je return_ptr
    cmp rsi, 0
    je return_ptr
    cmp rdx, 0
    jg comp
    jmp return_ptr

comp:
    cmp rdx, 0
    jl return_ptr
    mov r8b, byte[rsi + rdx]
    mov byte[rdi + rdx], r8b
    dec rdx
    jmp comp

return_ptr:
    mov rax, rdi
    ret