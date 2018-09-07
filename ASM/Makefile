# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpouyat <gpouyat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/03 17:12:30 by gpouyat           #+#    #+#              #
#    Updated: 2018/09/08 00:47:27 by gpouyat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: 
	make -C Colleen
	make -C Grace
	make -C Sully

clean:
	make clean -C Colleen
	make clean -C Grace
	make clean -C Sully

fclean:
	make fclean -C Colleen
	make fclean -C Grace
	make fclean -C Sully

re: fclean all

tests:
	make test -C Colleen
	make test -C Grace
	make test -C Sully

.phony: all clean fclean test