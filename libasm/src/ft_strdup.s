global _ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_strcpy
extern _malloc

section .text

_ft_strdup:
					;const char *s1 -> rdi
	push rdi		;		
	call _ft_strlen	;rax -> in strlen(s1)
	mov rdi,rax
	call _malloc
	test rax,rax	;bits & работает быстрее (check in zero)
	jz	.error
	mov rdi,rax
	pop rsi
	call _ft_strcpy
	ret
.error:
	pop rdi
	ret

