##
## Makefile for wolf3D in /home/etienne/delivery/B1/GP/wolf3D
##
## Made by Etienne
## Login   <etienne@epitech.net>
##
## Started on  Fri Dec 23 13:08:03 2016 Etienne
## Last update Mon Jan  9 18:31:20 2017 Etienne
##

CC	= 	gcc

#CFLAGS	+=	-W -Werror -Wextra -Wall
#CFLAGS	+=	-pedantic
CFLAGS	+=	-I include/

RM	=	rm -f

NAME	=	wolf3d

SRC	=	src/main.c		\
		src/str_fct.c		\
		src/my_csfml_fct.c	\
		src/csfml_window.c	\
		src/info.c		\
		src/move_forward.c	\
		src/my_draw_line.c	\
		src/my_put_pixel.c	\
		src/raycast.c		\
		src/cast_fct.c

SRCOBJ	=	$(SRC:.c=.o)

all	:	$(NAME)

$(NAME)	:	$(SRCOBJ)
		$(CC) $(SRCOBJ) $(CFLAGS) -o $(NAME) -lc_graph_prog -lm

clean	:
		$(RM) $(SRCOBJ)

fclean	: clean
		$(RM) $(NAME)

re	: fclean all

.PHONY	:	all clean fclean re
