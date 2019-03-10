bits 64

global strcasecmp
section .text

strcasecmp:
    xor rcx, rcx
    cmp rdi, 0
    je return
    cmp rsi, 0
    je return
    jmp find_str1

find_str1:
    mov r8b, byte[rdi + rcx]
    cmp r8b, 'A'
    jl find_str2
    cmp r8b, 'Z'
    jl inc_str1    

find_str2:
    mov r9b, byte[rsi + rcx]
    cmp r9b, 'A'
    jl compare_str1_str2
    cmp r9b, 'Z'
    jl inc_str2

compare_str1_str2:
    cmp r8b, 0
    je return
    cmp r9b, 0
    je return
    cmp r8b, r9b
    jne return
    inc rcx
    jmp find_str1

inc_str1:
    add r8b, 32
    jmp find_str2

inc_str2:
    add r9b, 32
    jmp compare_str1_str2

return:
    sub r8b, r9b
    movsx rax, r8b
    ret