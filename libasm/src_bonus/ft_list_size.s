segment .text
global _ft_list_size

;------------------------------------------------------------------------------;
; int  ft_list_size(t_list *begin_list);                                       ;
;------------------------------------------------------------------------------;


_ft_list_size:

						;t_list -> rdi
	xor rcx ,rcx 		;i = 0
	push rdi
.cicle:
	cmp rdi, 0 			;t _list == NULL
	je .return
	inc rcx				; i++
	mov rdi,[rdi + 8] 	; rdi -> list-> next  копирование из памяти по адресу rdi + 8 в регситр rdi просто rdi это число (adress) [rdi]-> означает берем что то по этому адресу 
	jmp .cicle

.return:
	pop rdi				;list = begin
	mov rax, rcx
	ret	
