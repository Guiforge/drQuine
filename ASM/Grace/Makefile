# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpouyat <gpouyat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/08 23:02:42 by gpouyat           #+#    #+#              #
#    Updated: 2018/11/13 12:29:57 by gpouyat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=cc
CFLAGS          = -Wextra -Wall -Werror
ASMFLAGS		= -f macho64

ifeq ($(DEV),yes)
    CFLAGS              += -g3
endif

ifeq ($(SAN),yes)
    CFLAGS              += -fsanitize=address -fno-omit-frame-pointer -fno-optimize-sibling-calls
endif

NAME=Grace
SRC=$(NAME).s
OBJ=$(NAME).o
all: $(NAME)


$(NAME):
	nasm $(ASMFLAGS) $(CFLAGS) $(SRC) -o $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME) 

clean:
	$(RM) $(OBJ)
	$(RM) $(NAME)_kid.s

fclean: clean
	$(RM) $(NAME)

re: fclean all

test: $(NAME)
		./test.sh

.phony: all clean fclean re test