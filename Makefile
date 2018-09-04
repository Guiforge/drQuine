# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpouyat <gpouyat@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/03 17:12:30 by gpouyat           #+#    #+#              #
#    Updated: 2018/09/04 20:07:45 by gpouyat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	make -C C
	make -C ASM

clean:
	make clean -C C
	make clean -C ASM

fclean:
	make fclean -C C
	make fclean -C ASM

re: fclean all

tests:
	make tests -C C
	make tests -C ASM

.phony: all clean fclean tests