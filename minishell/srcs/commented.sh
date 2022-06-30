echo "coucou
1
2
3
4
5
6
7
8
9
10
11
12"

# expected :
# "test1
# test2"
echo test1\
; echo test2

# echo test1\
# ; echo test2
#

# echo "ls hahsda
# exit" > exit_minishell.sh
# ./minishell exit_minishell.sh
# echo $?

# echo "ls
# exit" > exit_minishell.sh
# ./minishell exit_minishell.sh
# echo $?

# echo "" > exit_minishell.sh
# ./minishell exit_minishell.sh
# echo $?

# echo "echo coucou" > exit_minishell.sh
# ./minishell exit_minishell.sh
# echo $?

# expected :
# stdin_mode : "bash: syntax error near unexpected token `;;'"
# in_file_mode :
# "alientest_minishell/debug.sh: line 6: syntax error near unexpected token `;;'
# alientest_minishell/debug.sh: line 6: `echo ;;;;'"
# ->doesn't read the .sh further
# echo ;;;;

# expected :
# stdin_mode : "bash: syntax error near unexpected token `;'"
# in_file_mode :
# "alientest_minishell/debug.sh: line 6: syntax error near unexpected token `;'
# alientest_minishell/debug.sh: line 6: `echo ; ; ; ;'"
# ->doesn't read the .sh further
# echo ; ; ; ;

# expected :
# stdin_mode : "bash: syntax error near unexpected token `|'"
# in_file_mode :
# "alientest_minishell/debug.sh: line 7: syntax error near unexpected token `|'
# alientest_minishell/debug.sh: line 7: `echo test | | wc; echo lol'"
# ->doesn't read the .sh further


echo "11 : expected output :	bonjour
			coucou
			salut
			salut"
echo "salut
coucou
bonjour
salut" | sort
echo

echo "12 : expected output : 
coucou
pwd output"

echo "coucou
salut"

echo 'coucou
salut'

# echo
# echo 7
# echo
# echo coucou > 0test.log 1test.log 2test.log > 3test.log

./minishell
exit
echo $?

echo "coucou
1
2
3
4
5
6
7
8
9
10
11
12" ; ls ; pwd