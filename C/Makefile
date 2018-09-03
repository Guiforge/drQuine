# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpouyat <gpouyat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/03 17:12:30 by gpouyat           #+#    #+#              #
#    Updated: 2018/09/03 18:52:34 by gpouyat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: 
	make -C Colleen
	make -C Grace

clean:
	make clean -C Colleen
	make clean -C Grace

fclean:
	make fclean -C Colleen
	make fclean -C Grace

re: fclean all

tests:
	make test -C Colleen
	make test -C Grace

.phony: all clean fclean test