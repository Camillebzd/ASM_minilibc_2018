bits 64

global memset
section .text

memset:
	xor rcx, rcx
	cmp rdi, 0
	je return_ptr
    cmp sil, 0
    je return_ptr
    cmp rdx, 0
    jg comp
    jmp return_ptr

comp:
    cmp rdx, 0
    je return_ptr
    mov byte[rdi + rcx], sil
    inc rcx
    dec rdx
    jmp comp

return_ptr:
    mov rax, rdi
    ret