; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/20 00:52:58 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 02:04:07 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

_ft_strlen:
	mov rax, 0
	cmp rdi, 0
	je finish

	mov rcx, -1
	repnz scasb
	mov rax, rcx
	neg rax
	sub rax, 2

finish:
	ret
