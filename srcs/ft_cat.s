; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/20 04:51:36 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 05:45:57 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data
	new db 1

section .text
	global _ft_cat
	extern _ft_puts

_ft_cat:
	push rdi
	mov rcx, rdi
	jmp boucle

boucle:
	mov rax, 0x2000003
	lea rsi, [rel new]
	mov rdx, 1
	syscall
	jc error

	cmp rax, 0
	je finish

	push rdi

	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel new]
	mov rdx, 1
	syscall

	cmp rax, 0
	jl finish

	pop rdi
	jmp boucle

finish:
	pop rdi
	mov rax, 0
	ret

error:
	mov rax, 0x2000004
	mov rdi, 2
	lea rsi, [rel msg_error]
	mov rdx, 35
	syscall
	pop rdi
	ret

msg_error:
	db "ft_cat: stdin: Bad file descriptor", 10
