; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/19 19:02:23 by larry             #+#    #+#              ;
;    Updated: 2016/01/19 22:55:23 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_bzero

_ft_bzero:
	mov rax, rdi

	cmp rdi, 0
	je finish
	cmp rsi, 0
	je finish

	mov rcx, rsi

wil:
	mov byte [rdi],0
	inc rdi
	loop wil

finish:
	ret
