; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/20 04:30:19 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 05:50:22 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcat
	extern _ft_strlen
	extern _ft_memcpy

_ft_strcat:
	push rdi
	mov rax, 0
	cmp rdi, 0
	je finish
	cmp rsi, 0
	je finish

	call _ft_strlen
	mov r12, rax

	mov rdi, rsi
	call _ft_strlen
	inc rax

	mov rdx, rax
	pop rdi
	push rdi
	add rdi, r12
	call _ft_memcpy

finish:
	pop rax
	ret

sends2:
	mov rax, rsi
	ret
