global  _ft_strlen

section .text

_ft_strlen:
						xor	rax, rax		; i = 0
.cicle:
			cmp			BYTE [rdi + rax], 0
			je			.exit
			inc 		rax				; i++
			jmp 		.cicle
.exit:
			ret
