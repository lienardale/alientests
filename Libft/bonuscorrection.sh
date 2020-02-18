cd /tmp/libft
make
make bonus
cd
cd /tmp/tests
gcc -c -Wall -Wextra -Werror main.c memset_main.c bzero_main.c memcpy_main.c memccpy_main.c memmove_main.c memchr_main.c memcmp_main.c strlen_main.c ft_is_main.c strchr_main.c strrchr_main.c strncmp_main.c strlcpy_main.c strlcat_main.c strnstr_main.c atoi_main.c calloc_main.c strdup_main.c strncmp_main.c split_main.c itoa_main.c strmapi_main.c lstadd_back_main.c lstadd_front_main.c lstclear_main.c lstdelone_main.c lstiter_main.c lstlast_main.c lstmap_main.c lstnew_main.c lstsize_main.c substr_main.c strjoin_main.c strtrim_main.c
ar rc mainlibft.a *.o
rm -rf *.o
gcc -Wall -Wextra -Werror  mainlibft.a /tmp/libft/libft.a && ./a.out
