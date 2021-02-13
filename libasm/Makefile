# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bmarilli <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/08 22:00:50 by bmarilli          #+#    #+#              #
#    Updated: 2021/02/13 16:59:52 by bmarilli         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

DIR_SRCS = src/
DIR_SRCS_BONUS = src_bonus/

SRCS = $(addprefix $(DIR_SRCS), ft_putchar.s	ft_read.s	ft_strcpy.s	ft_strlen.s	ft_write.s ft_strcmp.s ft_strdup.s)

#SRCS = ft_putchar.s	ft_read.s	ft_strcpy.s	ft_strlen.s	ft_write.s ft_strcmp.s ft_strdup.s


#BONUS_SRCS	=	ft_list_size.s  ft_list_push_front.s ft_atoi_base.s

BONUS_SRCS = $(addprefix $(DIR_SRCS_BONUS), ft_list_size.s  ft_list_push_front.s ft_atoi_base.s)

BONUS_OBJS	=	$(BONUS_SRCS:.s=.o)

OBJS = $(SRCS:.s=.o)

RM = rm -rf

NM = nasm

NFLAGS = -f macho64

%.o: %.s
	$(NM) $(NFLAGS) $< -o $@

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

all: 	$(NAME)

bonus:	$(OBJS) $(BONUS_OBJS)
		ar rc $(NAME) $(OBJS) $(BONUS_OBJS)

clean:
		$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
		$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
