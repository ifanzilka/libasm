global _ft_read

extern ___error 
section .text

_ft_read:
	mov	rax, 0x02000003
	syscall
	jc .error
	ret
.error:
	push rax		;add stack
	call ___error	;call error
	pop	rdx 		;save old rax
	mov	[rax], rdx 	;save error value to pointer
	mov	rax, -1
	ret
