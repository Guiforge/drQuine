# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpouyat <gpouyat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/08 23:02:42 by gpouyat           #+#    #+#              #
#    Updated: 2018/09/03 17:26:05 by gpouyat          ###   ########.fr        #
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

NAME=Colleen
ARCH=macho64
SRCS=Colleen.c

OBJS=$(SRCS:%.s=%.o)

all: $(NAME)


$(NAME):
	$(CC) $(CFLAGS) -o $(NAME) $(SRCS)

clean:
	$(RM) -r tmp_Colleen.tmp

fclean: clean
	$(RM) $(NAME)

re: fclean all

test: $(NAME)
	./Colleen > tmp_Colleen.tmp ; diff tmp_Colleen.tmp Colleen.c

.phony: all clean fclean re test