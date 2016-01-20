; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/19 23:22:12 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 00:06:41 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 0
	jl false
	cmp rdi, 127
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
