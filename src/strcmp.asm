bits 64

global strcmp
section .text

strcmp:
    xor rcx, rcx
    cmp	rdi, 0
    je null
    cmp	rsi, 0
    je null

comp:
    mov al, [rdi + rcx]
    mov r8b, [rsi + rcx]
    cmp al, 0
    je find_value
    cmp r8b, 0
    je find_value
    cmp al, r8b
    jne find_value
    inc rcx
    jmp comp

find_value:
    sub al, r8b
    movsx rax, al
    cmp rax, 0
    jg pos
    cmp rax, 0
    je quit
    jmp nega

null:
    mov rax, 0
    ret

pos:
    mov rax, 1
    ret

nega:
    mov rax, -1
    ret

quit:
    ret