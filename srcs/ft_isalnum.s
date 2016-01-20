; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/19 22:41:39 by larry             #+#    #+#              ;
;    Updated: 2016/01/19 23:29:09 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	cmp rdi, 0
	je false

	call _ft_isalpha
	cmp rax, 1
	je true

	call _ft_isdigit
	cmp rax, 1
	je true

	jmp false

false:
	mov rax, 0
	ret

true:
	mov rax, 1
	ret
