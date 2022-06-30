rm -rf logs/norme.log
norminette ../*.c ../*.h ../*/*.c ../*/*.h ../*/*/*.c ../*/*/*.h > logs/norme.log
errors=$(cat logs/norme.log | grep Error)
if [ -z "$errors" ] ; then
	echo "No norme error."
else
	echo "Norm error(s), check norme.log to see details."
fi