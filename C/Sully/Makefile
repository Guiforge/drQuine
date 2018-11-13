# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpouyat <gpouyat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/08 23:02:42 by gpouyat           #+#    #+#              #
#    Updated: 2018/11/13 13:07:16 by gpouyat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=cc
CFLAGS          = -Wall -Wextra -Werror

ifeq ($(DEV),yes)
    CFLAGS              += -g3
endif

ifeq ($(SAN),yes)
    CFLAGS              += -fsanitize=address -fno-omit-frame-pointer -fno-optimize-sibling-calls
endif

NAME=Sully
SRC=$(NAME).c

all: $(NAME)


$(NAME):
	$(CC) $(CFLAGS) -o $(NAME) $(SRC)

clean:
	$(RM) -r $(NAME)_*

fclean: clean
	$(RM) $(NAME)

re: fclean all

test: $(NAME)
	./test.sh

.phony: all clean fclean re test