; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/20 04:00:52 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 04:07:57 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_memset

_ft_memset:
	mov rax, rdi
	cmp rdi, 0
	je finish
	cmp rdx, 0
	je finish

	push rdi
	mov rcx, rdx
	mov al, sil
	rep stosb
	pop rax

finish:
	ret
