; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/19 23:22:12 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 00:07:02 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 0
	je false
	cmp rdi, 32
	jl false
	cmp rdi, 126
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
