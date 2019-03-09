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
				strchr.asm		\
				strcmp.asm		\
				memset.asm		\
				memcpy.asm		\
				strstr.asm		\
				strncmp.asm		\
				memmove.asm		\

SRCS		=	$(addprefix $(SRCS_DIR), $(SRCS_FILES))

OBJS 		=	$(SRCS:.asm=.o)

%.o: %.asm
			$(CC) -o $@ $< $(ASMFLAGS)

all:		$(NAME)

$(NAME): 	$(OBJS)
			ld $(LDFLAGS) $(OBJS) -o $(NAME)

clean:
			$(RM) $(OBJS)

fclean: 	clean
			$(RM) $(NAME)

re: 		fclean all

.PHONY: 	all clean fclean re