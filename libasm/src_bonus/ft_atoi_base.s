global _ft_atoi_base

section	.text

_ft_atoi_base:
														; rdi = *str rsi = *base
						mov		r8, 1					; sign = 1
						xor		rax, rax				; res = 0
						cmp		rsi, 0					; !base
						je		.return
						xor		rcx,rcx					; i = 0
						xor		rbx,rbx					; j = 0 (increment for check repeat)
						xor		r9, r9					; base_len = 0
.check_base:
						cmp		BYTE [rsi + rcx], 0		; base[i] == \0
						je		.rcx_zero
						cmp		BYTE [rsi + rcx], 32	; base[i] == ' '
						je	 	.return
						cmp		BYTE [rsi + rcx], 9		; base[i] == \t
						je		.return
						cmp		BYTE [rsi + rcx], 10	; base[i] == \n
						je		.return
						cmp		BYTE [rsi + rcx], 11	; b[i] == \v
						je		.return
						cmp		BYTE [rsi + rcx], 12	; b[i] == \f
						je		.return
						cmp		BYTE [rsi + rcx], 13	; b[i] == \r
						je		.return
						cmp		BYTE [rsi + rcx], 45	; base[i] == '-'
						je	 	.return
						cmp		BYTE [rsi + rcx], 43	; base[i] == '+'
						je		.return
						xor		rbx,rbx					; j = 0  
.check_base_repeat:
						cmp		rbx, r9					; j == base_len
						je		.check_base_increment
						mov		dl, [rsi + rbx]
						cmp		[rsi + rcx], dl			; base[i] == base[j]
						je		.return
						inc		rbx						; j++
						jmp		.check_base_repeat
.check_base_increment:
						inc		rcx						; i++
						inc		r9						; base_len++
						jmp		.check_base
.rcx_zero:
						xor		rcx, rcx				; i = 0
.isspace:
						cmp		BYTE [rdi + rcx], 0		; str[i] == \0
						je		.return
						cmp		r9, 1					; base_len <= 1
						jle		.return
						cmp		BYTE [rdi + rcx], 32	; str[i] == ' '
						je	 	.space
						cmp		BYTE [rdi + rcx], 9		; str[i] == \t
						je		.space
						cmp		BYTE [rdi + rcx], 10	; str[i] == \n
						je		.space
						cmp		BYTE [rdi + rcx], 11	; s[i] == \v
                        je		.space
						cmp		BYTE [rdi + rcx], 12	; s[i] == \f
						je		.space
						cmp		BYTE [rdi + rcx], 13	; s[i] == \r
                        je		.space
                        jmp		.issign
.space:
						inc		rcx						; i++
						jmp		.isspace
.issign:
						cmp		BYTE [rdi + rcx], 0		; str[i] == \0
						je		.return
						cmp		BYTE [rdi + rcx], 45	; str[i] == '-'
                        je	 	.negative
                        cmp		BYTE [rdi + rcx], 43	; str[i] == '+'
                        je		.positive
                        jmp		.zero_j
						
.negative:				neg		r8						; sign = -1
.positive:				inc		rcx						; i++
						jmp		.issign
.zero_j:
						xor 	rbx, rbx				; j == 0	
.is_in_base:
						cmp		BYTE [rdi + rcx], 0		; str[i] == \0
						je		.return
						mov		dl, BYTE [rsi + rbx]
						cmp 	BYTE [rdi + rcx], dl	; str[i] == base[j]
						je		.add
						inc		rbx						; j++
						cmp		BYTE [rsi + rbx], 0		; str[j] == \0
						je		.return
						jmp		.is_in_base

.add:
						mul		r9						;rax = rax * base len
						add		rax, rbx				; res += j
						inc		rcx						; i++
						jmp		.zero_j

.return:
						cmp		r8, 1					; sign == 1
						je		.end
						neg		rax						; res = - res
.end:
						ret
