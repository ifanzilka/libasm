;------------------------------------------------------------------------------;
; void  t_list_sort(t_list **begin_list, int (*cmp)());                        ;
;------------------------------------------------------------------------------;
						segment	.text
						global	_ft_list_sort

_ft_list_sort:								; rdi = **list rsi = *cmp(d1, d2)
					cmp		rdi, 0			; !list
					je		.return
					cmp		qword [rdi], 0
					je		.return
					cmp 	rsi, 0			; !*cmp()
					je		.return
					mov 	r8, rdi			; save **begin

.iteration:
					mov		r9, [r8]		; r9 = *begin

.compare:
					cmp		QWORD [r9 + 8], 0 ; if current.next == NULL
					je		.return
					mov		rdi, [r9]		; rdi = current.data
					mov 	rax, rsi		; rax = *cmp(d1, d2)
					push	rsi
					mov		r10, [r9 + 8]	; d2 = current.next
					mov		rsi, [r10]		;
					push	rdi
					push	r8
					push	r9
					call	rax				; (*cmp)(d1, d2)
					pop		r9
					pop		r8
					pop		rdi
					pop 	rsi
					cmp		eax, 0			; if cmp > 0
					jg		.swap
					mov		rax, [r9 + 8]		; rax = current.next
					mov		r9, rax			; r9 = next
					jmp		.compare
.swap:
					mov		r10, [r9 + 8]	; r10 = next
					mov		r11, [r10]		; r11 = next.data
					mov		[r9], r11		; current->data = next->data
					mov		[r10], rdi		; next->data = current->data
					jmp		.iteration

.return:
					ret
