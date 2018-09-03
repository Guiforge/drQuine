# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpouyat <gpouyat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/03 17:12:30 by gpouyat           #+#    #+#              #
#    Updated: 2018/09/03 17:25:41 by gpouyat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	make -C C

clean:
	make clean -C C

fclean:
	make fclean -C C

re: fclean all

tests:
	make tests -C C

.phony: all clean fclean tests