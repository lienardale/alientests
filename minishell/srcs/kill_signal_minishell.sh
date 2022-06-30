ps | grep minishell | cut -b 1,2,3,4,5 | xargs kill
# pid=`cat signal.temp`
# echo $pid
# rm signal.temp
# # ./minishell
# ps | grep minishell | grep $pid | cut -b 1,2,3,4,5 | xargs kill