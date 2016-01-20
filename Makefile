# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: larry <larry@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/19 18:59:31 by larry             #+#    #+#              #
#    Updated: 2016/01/20 06:06:24 by larry            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libfts.a

SRC		= 	ft_bzero.s ft_isalpha.s ft_isdigit.s ft_isalnum.s ft_isascii.s \
			ft_isprint.s ft_toupper.s ft_tolower.s ft_isupper.s ft_islower.s\
			ft_strlen.s ft_puts.s ft_memset.s ft_memcpy.s ft_strdup.s \
			ft_strcat.s ft_cat.s

NASM	= /usr/local/Cellar/nasm/2.11.08_1/bin/nasm

SRCDIR	= ./srcs/

INCDIR	= ./includes/

CC_FLAG = -Wall -Werror -Wextra -mdynamic-no-pic

MAIN	= main_test

FLAG	= -f macho64

SRCS	= $(addprefix $(SRCDIR), $(SRC))

OBJS	= $(SRCS:.s=.o)

all: $(NAME)

$(NAME) : $(OBJS)
	echo "Compiling $(NAME)..."
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)
	echo "DONE"

%.o: %.s
	$(NASM) $(FLAG) $<

clean:
	rm -rf $(OBJS)
	echo "Object files has been removed!"

fclean: clean
	rm -rf $(NAME)
	rm -rf main_test
	echo "$(NAME) has been removed!"

re: fclean all

part1: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L. -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN) part1

part2: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L. -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN) part2

part3: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L. -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN) part3

bonus: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L. -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN) bonus
