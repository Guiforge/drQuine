# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpouyat <gpouyat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/08 23:02:42 by gpouyat           #+#    #+#              #
#    Updated: 2018/09/08 00:45:18 by gpouyat          ###   ########.fr        #
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

NAME=Sully
SRC=$(NAME).s
OBJ=$(NAME).o
TMP= Sully_0 Sully_0.o Sully_0.s Sully_1 Sully_1.o Sully_1.s Sully_2 Sully_2.o \
				Sully_2.s Sully_3 Sully_3.o Sully_3.s Sully_4 Sully_4.o Sully_4.s
all: $(NAME)


$(NAME):
	nasm $(ASMFLAGS) $(CFLAGS) $(SRC) -o $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME) 

clean:
	$(RM) $(OBJ)
	$(RM) $(TMP)

fclean: clean
	$(RM) $(NAME)

re: fclean all

test: $(NAME)
	./$(NAME)

.phony: all clean fclean re test