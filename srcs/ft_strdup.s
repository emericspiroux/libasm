; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/20 04:14:45 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 04:23:52 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global  _ft_strdup
	extern  _ft_strlen
	extern 	_malloc
	extern	_ft_memcpy

_ft_strdup:
	mov	rbx, rdi
	call _ft_strlen
	mov	rcx, rax
	inc	rcx
	push rcx

	call _malloc
	cmp rax, 0
	je finish

	mov rdi, rax
	mov rsi, rbx
	pop rdx

	call _ft_memcpy

finish:
	ret
