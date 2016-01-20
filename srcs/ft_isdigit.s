; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/19 23:22:12 by larry             #+#    #+#              ;
;    Updated: 2016/01/19 23:31:09 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 0
	je false
	cmp rdi, 48
	jl false
	cmp rdi, 57
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
