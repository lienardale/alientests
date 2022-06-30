
# ./minishell
ps | grep minishell | grep -v grep | grep -v signal | cut -b 1,2,3,4,5 > signal.temp
# pid=`cat signal.temp`
# echo $pid
# rm signal.temp
# # ./minishell
# ps | grep minishell | grep $pid | cut -b 1,2,3,4,5 | xargs kill

