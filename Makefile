NAME		=	libftprintf.a
LIBFT		=	Libft/

#Compiling variables
CC			= 	gcc
CFLAGS		=	-Wall -Werror -Wextra
HEADER		=	Libft/libft.h

#AR command
#Question- using ar command to create library
AR			=	ar rcs

#Source files
SRCS		=	ft_numbers.c ft_printf.c ft_unsigned.c ft_hexa.c ft_hexapointer.c

OBJS		=	$(SRCS:.c=.o)

all			:	$(NAME)

$(NAME)		:	$(OBJS)
				make -C $(LIBFT)
				cp libft/libft.a .
				mv libft.a $(NAME)
				$(AR) $(NAME) $(OBJS)

%.o 		:	%.c 
				$(CC) $(CFLAGS) -I $(HEADER) -o $@ -c $<

clean		:	
				rm -rf $(OBJS)

fclean		:	clean
				rm -rf $(NAME)

re			:	fclean all

.PHONY		:	all clean fclean re
