bits 64

global my_strlen 		; size_t strlen(char const *s)
section .text

my_strlen:
	xor rsi, rsi
	cmp rdi, 0
	jz end

comp:
	cmp byte[rdi + rsi], 0
	jz end
	inc rsi
	jmp comp

end:
	mov rax, rsi
	ret