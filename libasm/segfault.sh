make test > /dev/null

echo -ne "\033[0;32m\nSegmentation Fault tests\n\n\033[0m"

gcc -Wall -Wextra -Werror main_segfault/strlen_main.c ../libasm.a colors.o  && ./a.out
gcc -Wall -Wextra -Werror main_segfault/strcmp_main.c ../libasm.a colors.o  && ./a.out
gcc -Wall -Wextra -Werror main_segfault/strcmp_main_2.c ../libasm.a colors.o  && ./a.out
gcc -Wall -Wextra -Werror main_segfault/strcmp_main_3.c ../libasm.a colors.o  && ./a.out
gcc -Wall -Wextra -Werror main_segfault/strcpy_main.c ../libasm.a colors.o  && ./a.out
gcc -Wall -Wextra -Werror main_segfault/strcpy_main_2.c ../libasm.a colors.o  && ./a.out
gcc -Wall -Wextra -Werror main_segfault/strcpy_main_3.c ../libasm.a colors.o  && ./a.out
gcc -Wall -Wextra -Werror main_segfault/strdup_main.c ../libasm.a colors.o && ./a.out
