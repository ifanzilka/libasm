global _ft_list_push_front
segment	.text
extern _malloc

_ft_list_push_front:
								;rdi -> **list  rsi -> *data
		push	rsp
		push	rdi
		push	rsi				
		mov rdi, 16 			;sizeof(t_list)
		call _malloc
		pop		rsi
		pop 	rdi	
		cmp	rax, 0				;check return value malloc
		je	.return	
								;rax -> new struct
		mov	[rax], rsi			; new.data = data
		mov	r9, [rdi]			;регитср оющего назначение
		mov	[rax + 8], r9		; mov	[rax + 8], [rdi]	 new.next = *list
		mov	[rdi], rax			; *list = new
.return:
		pop rsp
		ret		
