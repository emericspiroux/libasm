; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/19 22:41:39 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 00:14:51 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isupper

_ft_isupper:
	cmp rdi, 0
	je false
	cmp rdi, 65
	jl false
	cmp rdi, 90
	jle true

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
