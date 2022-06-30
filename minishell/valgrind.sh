#bin/bash

make -C ../
read -p 'Which test ?: ' test

rm -rf logs/all_leaks.log logs/leak.log

if [ "$test" = "all" ] ; then
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/cat.sh 2> logs/leak.log ; echo CAT > logs/all_leaks.log  ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/ls.sh 2>> logs/leak.log ; echo LS >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/echo.sh 2>> logs/leak.log ; echo ECHO >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/pwd.sh 2>> logs/leak.log ; echo PWD >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/cd.sh 2>> logs/leak.log ; echo CD >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/env.sh 2>> logs/leak.log ; echo ENV >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/export.sh 2>> logs/leak.log ; echo EXPORT >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/unset.sh 2>> logs/leak.log ; echo UNSET >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/exit.sh 2>> logs/leak.log ; echo EXIT >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/semi_colon.sh 2>> logs/leak.log ; echo SEMICOLON >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/quote.sh 2>> logs/leak.log ; echo QUOTE >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/backslash.sh 2>> logs/leak.log ; echo BKSLH >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/pipe.sh 2>> logs/leak.log ; echo PIPE >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/redir_in.sh 2>> logs/leak.log ; echo REDIN >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/redir_out.sh 2>> logs/leak.log ; echo REDOUT >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/append.sh 2>> logs/leak.log ; echo APPEND >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/redir_nb.sh 2>> logs/leak.log ; echo REDNB >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/parsing.sh 2>> logs/leak.log ; echo PARSING >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/return.sh 2>> logs/leak.log ; echo RETURN >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/roalvalre.sh 2>> logs/leak.log ; echo ROALVARE >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/echo.sh 2>> logs/leak.log ; echo STDIN1 >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/ls.sh 2>> logs/leak.log ; echo STDIN2 >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/backslash.sh 2>> logs/leak.log ; echo ERROR1 >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	echo ----- ----- >> logs/all_leaks.log
	echo >> logs/all_leaks.log
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/error.sh 2>> logs/leak.log ; echo ERROR2 >> logs/all_leaks.log ; tail logs/leak.log | grep -v minishell | grep -v error >> logs/all_leaks.log
	tail logs/all_leaks.log
elif [ -n "$test" ] ; then
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell < srcs/$test.sh 2> logs/leak.log
	tail logs/leak.log
else
	valgrind --leak-check=full --show-leak-kinds=all ./../minishell 2> logs/leak.log
	tail logs/leak.log
fi
