global	_ft_write
extern ___error

section .text
_ft_write:
	mov		rax, 0x02000004 ; системная функция write
							;mov	rsi, rdi			; закидываем первый аргумент в rsi (первый аргумент был в rdi)
							;mov rdi, rdi				;(0 аргумент фунцции write ставим  1)
							;mov rdx, rdx				;(2 аргумент функции write ставим  1)
	syscall					;делаем системный вызов функцииi
	jc .errors
	ret
.errors:
	push rax		;add stack
	call ___error	;call error (запишет в rax адресс)
	pop	rdx 		;save old rax (номер ошибки)
	mov	[rax], rdx 	;save error value to pointer (по адресу запишем ошибку)
	mov	rax, -1
	ret	
