# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mvan-vel <mvan-vel@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/29 15:36:47 by mvan-vel          #+#    #+#              #
#    Updated: 2024/05/29 15:38:57 by mvan-vel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Werror -Wextra

SRC =  ft_printf.c ft_printconvert.c ft_printconvert2.c
		
		

OBJ = $(SRC:.c=.o)


AR		=	@ar -rc

all : $(NAME)


$(NAME) : $(OBJ)
	$(AR) $(NAME) ${OBJ}

$(OBJ) :
	$(CC) $(CFLAGS) -c $(@:.o=.c)


clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)


re : fclean $(NAME)

.PHONY: all fclean clean re 