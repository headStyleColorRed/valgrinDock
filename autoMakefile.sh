# C R E A T E   M A K E F I L E

find . -name "*.c" > files.txt

echo 'SRCS		= ' > file1.txt

x=$(cat file1.txt files.txt)
echo $x > Makefile

echo '
OBJS	= $(SRCS:.c=.o)

NAME	= 	OUTPUT

FLAGS	= -g

GCC = gcc

all:	$(NAME)

$(NAME):	$(OBJS)
				@echo "\033[0;31m[Remove last version...]"
			@rm -rf result
				@echo "\033[0;33m[compilation...]"
			$(GCC) $(OBJS) -o $(NAME)

%.o: %.c
	$(GCC) $(FLAGS) -c $<  -o $(<:.c=.o)

fclean: clean
	rm -f $(NAME)

clean : 
		@echo "\033[0;31m[Deleting Objects...]"
	$(RM) $(OBJS) *.o 

re:				fclean $(NAME)' >> Makefile

rm files.txt
rm file1.txt