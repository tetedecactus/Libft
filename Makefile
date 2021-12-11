NAME = libft.a

SRCS = ft_atoi.c \
		ft_atol.c \
		ft_bzero.c \
		ft_calloc.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_isnumber.c \
		ft_itoa.c \
		ft_memccpy.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putchar.c \
		ft_putchar_int.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr.c \
		ft_putnbr_fd.c \
		ft_putnbr_long.c \
		ft_putstr.c \
		ft_putstr_fd.c \
		ft_putstr_int.c \
		ft_split.c \
		ft_strchr.c \
		ft_strdup.c \
		ft_strjoin.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strmapi.c \
		ft_strncmp.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strtrim.c \
		ft_substr.c \
		ft_tolower.c \
		ft_toupper.c \
		get_next_line.c \
		free_arg.c \
		error_message.c \
		width_counter.c \

BONUS = ft_lstnew.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_front.c \
	    ft_lstadd_back.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c \

OBJS 	= ${SRCS:.c=.o}

BONUS_OBJS =${BONUS:.c=.o}

HEADER	= libft.h

CC 		= gcc
CFLAGS 	= -Wall -Wextra -Werror

all: 		${NAME}

.c.o:
					${CC} ${CFLAGS} -I ${HEADER} -c $< -o ${<:.c=.o} 

$(NAME):	${OBJS}
					ar rc ${NAME} ${OBJS}
bonus: 		${BONUS_OBJS}
					ar rc ${NAME} ${BONUS_OBJS}
clean:
					rm -f ${OBJS}

bonus_clean: 
					rm -f ${BONUS_OBJS}

fclean: 	clean
					rm -f $(NAME)
re:			fclean all 

.PHONY: all clean fclean re