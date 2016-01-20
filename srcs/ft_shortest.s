; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_shortest.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: larry <larry@student.42.fr>                +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/20 18:55:04 by larry             #+#    #+#              ;
;    Updated: 2016/01/20 19:06:13 by larry            ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_shortest
	extern _ft_strlen

_ft_shortest:
	cmp rdi, 0
	je error
	cmp rsi, 0
	je error

	call _ft_strlen
	mov rbx, rax
	mov rdi, rsi
	call _ft_strlen
	mov rcx, rax

	cmp rcx, rbx
	jl return_s2

return_s1:
	mov rax, rbx
	ret

return_s2:
mov rax, rcx
	ret

error:
	mov rax, 0
	ret
