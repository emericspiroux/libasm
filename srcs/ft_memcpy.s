; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/20 04:08:27 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 04:14:28 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memcpy

_ft_memcpy:
	mov rax, rdi
	mov rcx, rdx
	push rsi

	cmp rsi, 0
	je finish

	rep movsb

finish:
	pop rsi
	ret
