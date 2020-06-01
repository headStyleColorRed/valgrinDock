SRCS = ./main.c

OBJS	= $(SRCS:.c=.o)

NAME	= 	OUTPUT

FLAGS	= -g

GCC = GCC

all:	$(NAME)

$(NAME):	$(OBJS)
				@echo "[0;31m[Remove last version...]"
			@rm -rf result
				@echo "[0;33m[compilation...]"
			$(GCC) $(OBJS) -o $(NAME)

%.o: %.c
	$(GCC) $(FLAGS) -c $<  -o $(<:.c=.o)

fclean: clean
	rm -f $(NAME)

clean : 
		@echo "[0;31m[Deleting Objects...]"
	$(RM) $(OBJS) *.o 

re:				fclean $(NAME)
