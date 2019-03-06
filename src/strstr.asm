bits 64

global strstr
section .text

strstr:
	cmp rdi, 0
	je return_null
    cmp rsi, 0
    je return_null
    jmp init_index

init_index:
    xor rcx, rcx
    jmp comp

comp:
    mov r8b, byte[rdi+ rcx]
    mov r9b, byte[rsi + rcx]
    cmp r9b, 0
    je same
    cmp r9b, r8b
    jne move_in_str
    inc rcx
    jmp comp

move_in_str:
    cmp r8b, 0
    je return_null
    inc rdi
    jmp init_index

same:
    mov rax, rdi
    ret

return_null:
    mov rax, 0
    ret
