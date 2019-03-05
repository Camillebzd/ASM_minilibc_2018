bits 64

global strlen
section .text

strlen:
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