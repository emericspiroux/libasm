; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: espiroux <espiroux@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2016/01/20 15:29:51 by espiroux          #+#    #+#              ;
;    Updated: 2016/01/20 15:48:36 by espiroux         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcmp

_ft_strcmp:
	
test_str:
	cmp byte [rdi], rsi
	jne finish
	cmp rdi, 0
	je endword
	cmp rsi, 0
	je endword
	inc rdi
	loop test_str

finish:
	sub rdi, rsi
	mov rax, rdi 
	ret