global _ft_strcmp

section .text

_ft_strcmp:
							;s1 -> rdi  s2 -> rsi
			xor	rcx, rcx	;rcx = 0
.cicle:			
			mov al , byte[rdi + rcx]
			mov bl , byte[rsi + rcx]
			cmp al, 0
			je	.return
			cmp bl, 0
			je .return
			inc rcx
			cmp al, bl
			je .cicle
.return:
	movzx rax, al       ; copy al to rax, rax > al that is why movzx make free bits equal to 0
	movzx rbx, bl       
	sub rax, rbx
	ret
