#rm prog
#gcc -Wall -Wextra -Werror -g -D BUFFER_SIZE=1 get_next_line.c get_next_line_utils.c alien_main.c -o prog
#valgrind ./prog get_next_line.c
#gcc -Wall -Wextra -Werror -fsanitize=address -D BUFFER_SIZE=1 get_next_line_bonus.c get_next_line_utils_bonus.c alien_main.c -o prog

gcc -Wall -Wextra -Werror -g -D BUFFER_SIZE=42 get_next_line_bonus.c get_next_line_utils_bonus.c alien_main.c
./a.out get_next_line.c get_next_line.c get_next_line.h

#gcc -Wall -Wextra -Werror -g -D BUFFER_SIZE=9999 get_next_line_bonus.c get_next_line_utils_bonus.c alien_main.c -o prog
#~/.brew/bin/valgrind --leak-check=full ./prog get_next_line.c get_next_line.c get_next_line.h
