global	_ft_putchar

;section .data

section .text
_ft_putchar:
	mov		rax, 0x02000004 ; системная функция write
	mov	rsi, rdi			; закидываем первый аргумент в rsi (первый аргумент был в rdi)
	mov rdi, 1				;(0 аргумент фунцции write ставим  1)
	mov rdx, 1				;(2 аргумент функции write ставим  1)
	syscall					;делаем системный вызов функции
	ret

