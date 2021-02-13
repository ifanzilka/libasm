global _ft_strcpy

section .text

_ft_strcpy:
						;rdi ->dst rsi-> src
			cmp rsi, 0	; if (!src)
			je	.return
			xor rcx,rcx
.cicle:
		mov dl, byte[rsi + rcx]
		mov byte[rdi + rcx] ,dl
		inc rcx
		cmp dl,0
		jne .cicle

.return:
		mov rax, rdi
		ret
