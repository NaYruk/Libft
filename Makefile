CC = cc

CFLAGS = -Wall -Wextra -Werror $(INCLUDE)

INCLUDE = -I./includes

SRC = $(wildcard ./libft/*.c) \
		$(wildcard ./ft_printf/*.c) \
		$(wildcard ./get_next_line/*.c)
		
OBJ = $(SRC:.c=.o)

NAME = libft.a

AR = ar -r -c -s

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

.PHONY: bonus clean fclean re

clean: 
	rm -rf $(OBJ) $(BONUS_OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all