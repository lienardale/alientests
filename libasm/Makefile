# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alienard <alienard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/09 18:51:33 by alienard          #+#    #+#              #
#    Updated: 2020/03/12 12:44:01 by alienard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = 		libasm.a

SRCS =		./../ft_strlen.s \
				./../ft_strcpy.s \
				./../ft_write.s \
				./../ft_strcmp.s \
				./../ft_read.s \
				./../ft_strdup.s

SRCSBONUS =		./../ft_list_size_bonus.s \
					./../ft_list_push_front_bonus.s \
					./../ft_list_remove_if_bonus.s \
					./../ft_list_sort_bonus.s \
					./../ft_atoi_base_bonus.s

SRCC =			./main.c \
					./colors.c \
					./write_main.c \
					./read_main.c \
					./strlen_main.c \
					./strcmp_main.c \
					./strcpy_main.c \
					./strdup_main.c

SRCCBONUS =		./main_bonus.c \
					./colors.c \
					./write_main.c \
					./read_main.c \
					./strlen_main.c \
					./strcmp_main.c \
					./strcpy_main.c \
					./strdup_main.c \
					./ft_lstnew_bonus.c \
					./list_size_main.c \
					./list_push_front_main.c \
					./list_remove_if_main.c \
					./list_sort_main.c \
					./atoi_base_main.c

OBJS = 		$(SRCS:.s=.o)

OBJSBONUS = 	$(SRCSBONUS:.s=.o)

OBJC			= $(SRCC:.c=.o)

OBJCBONUS		= $(SRCCBONUS:.c=.o)

HEADER = 	./

AS = 		nasm

CC =		gcc

RM = 		rm -f

AR = 		ar rc

CFLAGS =	-Wall -Wextra -Werror -I $(HEADER)

ASFLAGS =	-fmacho64

all:		$(NAME)

$(NAME):	$(OBJS)
			$(AR) $(NAME) $(OBJS)

bonus:		$(OBJSBONUS)
			$(AR) $(NAME) $(OBJSBONUS)

test:			all $(OBJC)
				$(CC) -L. -lasm $(OBJC)
				./a.out

test_bonus:		bonus $(OBJCBONUS)
				$(CC) -L. -lasm $(OBJCBONUS)
				a.out

lldb_bonus:		bonus $(OBJCBONUS)
				$(CC) -g -L. -lasm $(OBJCBONUS)
				lldb ./a.out

clean:
			$(RM) $(OBJS) $(OBJSBONUS) $(OBJC) $(OBJCBONUS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		re all clean fclean bonus
