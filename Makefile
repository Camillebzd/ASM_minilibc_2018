##
## EPITECH PROJECT, 2017
## Makefile
## File description:
## a_makefile_for_projetcs
##

CC			=	nasm

RM			=	rm -rf

CFLAGS		=	-Wall -Wextra -Werror

LDFLAGS		= 	-shared -fPIC

ASMFLAGS	=	-f elf64

NAME 		=	libasm.so

SRCS_DIR	=	src/

SRCS_FILES	=	strlen.asm		\

SRCS		=	$(addprefix $(SRCS_DIR), $(SRCS_FILES))

OBJS 		=	$(SRCS:.asm=.o)

all:		$(NAME)

$(NAME): 	$(SRCS)
			$(CC) $(ASMFLAGS) $(SRCS)
			gcc $(OBJS) $(LDFLAGS) -o $(NAME)

clean:
			$(RM) $(OBJS)

fclean: 	clean
			$(RM) $(NAME)

re: 		fclean all

.PHONY: 	all clean fclean re