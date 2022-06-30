make test_bonus
tmp=$(diff atoi_base.txt ft_atoi_base.txt)
if [ "$tmp" == "" ];then
	echo -ne "\033[0;32mdiff ft_atoi_base ok\033[0m"
	echo
else
	echo -ne "\033[0;31mdiff ft_atoi_base not ok\033[0m"
	echo
fi