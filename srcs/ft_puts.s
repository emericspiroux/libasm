; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/20 00:50:20 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 05:46:29 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .data
	nl db 10
	nm db "(null)", 10

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	cmp rdi, 0
	je null

msg:
	push rdi
	call _ft_strlen
	mov rdx, rax
	pop rsi
	mov rdi, 1
	mov rax, 0x2000004
	syscall
	jc error

back_space:
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel nl]
	mov rdx, 1
	syscall
	jc error
	jmp finish

null:
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel nm]
	mov rdx, 7
	syscall
	jc error
	jmp finish

error:
	mov rax, -1
	ret

finish:
	ret
