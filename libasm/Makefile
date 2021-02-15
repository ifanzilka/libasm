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
NAME_BONUS = libasm_b.a

HEADER	= ./includes

DIR_SRCS = src/
DIR_SRCS_BONUS = src_bonus/

OBJ_DIR = bin/

SRCS = $(addprefix $(DIR_SRCS), ft_putchar.s	ft_read.s	ft_strcpy.s	ft_strlen.s	ft_write.s ft_strcmp.s ft_strdup.s)

SRCS.O = $(addprefix $(OBJ_DIR),$(SRCS:.s=.o))


BONUS_SRCS = $(addprefix $(DIR_SRCS_BONUS), ft_list_size.s  ft_list_push_front.s ft_atoi_base.s ft_list_remove_if.s  ft_list_sort.s)

BONUS_SRCS.O = $(addprefix $(OBJ_DIR),$(BONUS_SRCS:.s=.o))

EXE = test_libasm

OBJS = $(SRCS:.s=.o)

RM = rm -rf

NM = nasm

AR	= ar rc 

NFLAGS = -f macho64

F_NONE		= \033[37m
F_BOLD		= \033[1m
F_RED		= \033[31m
F_ORANGE	= \033[38m
F_YELLOW	= \033[33m
F_GREEN		= \033[32m
F_CYAN		= \033[36m
F_BLUE		= \033[34m 

MAIN_S =  main_standart.c
MAIN_B = main_bonus.c

%.o: %.s
	$(NM) $(NFLAGS) $< -o $@



all: 	$(OBJ_DIR) $(NAME)


bonus:	$(OBJ_DIR) $(NAME) $(NAME_BONUS) 

$(NAME): $(SRCS.O)
	@echo "$(F_BLUE)Standart PART! $(F_NONE)"
	$(AR) $(NAME) $(SRCS.O)
	@echo "$(F_YELLOW)libasm compile! $(F_NONE)"

$(NAME_BONUS):  $(BONUS_SRCS.O) $(SRCS.O)
	@echo "$(F_BLUE)Bonus PART! $(F_NONE)"
	$(AR) $(NAME) $(SRCS.O) $(BONUS_SRCS.O)
	@echo "$(F_YELLOW)libasm compile! $(F_NONE)"


$(SRCS.O): $(OBJ_DIR)%.o:%.s 
	$(NM) $(NFLAGS)  $< -o $@
	@echo "$(F_BLUE)Object files libasm in ready! $(F_NONE)"

$(BONUS_SRCS.O): $(OBJ_DIR)%.o:%.s 
	$(NM) $(NFLAGS)  $< -o $@
	@echo "$(F_BLUE)Object files bonus libasm in ready! $(F_NONE)"

$(OBJ_DIR):
		mkdir $(OBJ_DIR)
		mkdir  $(addprefix $(OBJ_DIR),$(DIR_SRCS))
		mkdir $(addprefix	$(OBJ_DIR), $(DIR_SRCS_BONUS))


comp_s : $(OBJ_DIR) $(NAME)
		gcc $(NAME) $(MAIN_S) -I$(HEADER) -o $(EXE)
		./$(EXE)

comp_b:	$(OBJ_DIR) $(NAME) $(NAME_BONUS) 
		gcc $(NAME) $(MAIN_B) -I$(HEADER) -o $(EXE) 
		./$(EXE)

clean:
		$(RM) $(OBJ_DIR)
		@echo "$(F_GREEN)Cleaned! $(F_NONE)"

fclean: clean
		$(RM) $(NAME)
		$(RM) $(EXE)
		@echo "$(F_GREEN)FCleaned! $(F_NONE)"

re: fclean all

.PHONY: all clean fclean re