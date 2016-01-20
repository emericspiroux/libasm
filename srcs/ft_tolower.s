; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/19 23:58:00 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 00:31:34 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_tolower
	extern _ft_islower
	extern _ft_isalpha

_ft_tolower:
	call _ft_isalpha
	cmp rax, 0
	je error
	call _ft_islower
	cmp rax, 1
	je error

do_upper:
	mov rax, rdi
	add rax, 32

finish:
	ret

error:
	mov rax, rdi
	ret

