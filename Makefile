# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: statooin <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/24 13:10:03 by statooin          #+#    #+#              #
#    Updated: 2020/05/26 09:39:43 by statooin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		libft.a

MAIN_SRC =	ft_memset.c 	\
		ft_bzero.c 	\
		ft_calloc.c 	\
		ft_memcpy.c 	\
		ft_memccpy.c 	\
		ft_memmove.c 	\
		ft_memchr.c 	\
		ft_memcmp.c 	\
		ft_strlen.c 	\
		ft_strlcpy.c 	\
		ft_strlcat.c 	\
		ft_strrchr.c 	\
		ft_strnstr.c 	\
		ft_strncmp.c 	\
		ft_strtrim.c 	\
		ft_strchr.c 	\
		ft_atoi.c 	\
		ft_isalpha.c 	\
		ft_isdigit.c 	\
		ft_isalnum.c 	\
		ft_isascii.c 	\
		ft_isprint.c 	\
		ft_toupper.c 	\
		ft_tolower.c 	\
		ft_strdup.c 	\
		ft_substr.c 	\
		ft_strjoin.c 	\
		ft_split.c 	\
		ft_itoa.c 	\
		ft_strmapi.c 	\
		ft_putchar_fd.c \
		ft_putstr_fd.c 	\
		ft_putendl_fd.c \
		ft_putnbr_fd.c

BONUS_SRC =	ft_lstnew.c 		\
		ft_lstadd_front.c 	\
		ft_lstsize.c 		\
		ft_lstlast.c 		\
		ft_lstadd_back.c 	\
		ft_lstdelone.c 		\
		ft_lstclear.c 		\
		ft_lstiter.c 		\
		ft_lstmap.c 

MAIN_OBJ = 	$(MAIN_SRC:.c=.o)

BONUS_OBJ =	$(BONUS_SRC:.c=.o)

INCLUDES = $(NAME:.a=.h)

CFLAGS = -Wall -Wextra -Werror

ifdef WITH_BONUS
SRC = $(BONUS_SRC) $(MAIN_SRC)
OBJ = $(BONUS_OBJ) $(MAIN_OBJ)
else
SRC = $(MAIN_SRC)
OBJ = $(MAIN_OBJ)
endif

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ) $(INCLUDES)
	@echo "-----------------"
	ar -rcs $@ $?
	@echo "-----------------"
	@echo "$(NAME) compiled"
	@echo "-----------------"

%.o: %.c $(INCLUDES)
	gcc $(CFLAGS) -c $< -o $@

bonus:
	@$(MAKE) WITH_BONUS=1 all
	@echo "-----------------"
	@echo "$(NAME) + bonus compiled"
	@echo "-----------------"

so:
	gcc -fPIC -c $(MAIN_SRC) $(BONUS_SRC)
	gcc -shared -o libft.so $(MAIN_OBJ) $(BONUS_OBJ)

clean:
	rm -rf $(MAIN_OBJ) $(BONUS_OBJ)
	@echo "-----------------"
	@echo "Object files deleted"
	@echo "-----------------"

fclean:	clean
	rm -rf $(NAME)
	rm -rf libft.so
	@echo "-----------------"
	@echo "$(NAME) all deleted"
	@echo "-----------------"

re: fclean all
