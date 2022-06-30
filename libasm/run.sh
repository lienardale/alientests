cd ..
make
cd alien_lasm_tests
make test
tmp=$(diff test.txt test_2.txt)
if [ "$tmp" == "" ];then
	echo -ne "\033[0;32mdiff write ok\033[0m"
	echo
else
	echo -ne "\033[0;31mdiff write not ok\033[0m"
	echo
fi

echo
echo -ne "\033[0;32muse 'bash segfault.sh' to tests segfaults\033[0m"
echo
