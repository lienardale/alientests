echo
echo "--- TESTS export ---"
echo

export coucou=salut ;
env | grep coucou
unset coucou
echo

echo -n 0 : \	\	
export cou=ec ; export bon=ho ; $cou$bon salut
echo "expected : 	salut"
echo

echo -n 1 : \	\	
export cou=ec ; export bon=ho ; "$cou$bon" salut
echo "expected : 	salut"
echo

echo -n 2 : \	\	
export cou=ec ; export bon=ho ; '$cou$bon' salut
echo "expected : 	 \$cou\$bon : command not found"
echo

echo -n 3 : \	\	
export cou=ec ; export bon=ho ; \$cou\$bon salut
echo "expected : 	 \$cou\$bon : command not found"
echo

echo -n 4 : \	\	
export cou=ec ; export bon=ho ; \'$cou$bon\' salut
echo "expected : 	 'echo' : command not found"
echo

echo -n 5 : \	\	
export cou=ec ; export bon=ho ; \"$cou$bon\" salut
echo "expected : 	 \"echo\" : command not found"
echo

echo -n 6 : \	\	
export cou=ec ; export bon=ho ; "\$cou\$bon" salut
echo "expected : 	 \$cou\$bon : command not found"
echo

echo -n 7 : \	\	
export cou=ec ; export bon=ho ; '\$cou\$bon' salut
echo "expected : 	 \\\$cou\\\$bon : command not found"
echo

echo -n 8 : \	\	
export cou=ec ; export bon=ho ; $cou $bon salut
echo "expected : 	 ec : command not found"
echo

echo -n 9 : \	\	
export cou=ec ; export bon=ho ; "$cou $bon" salut
echo "expected : 	 ec ho : command not found"
echo

echo -n 10 : \	\	
export cou=ec ; export bon=ho ; $cou\ $bon salut
echo "expected : 	 ec ho : command not found"
echo

echo -n 11 : \	\	
export cou=ec ; export bon=ho ; "$cou\ $bon" salut
echo "expected : 	 ec\\ ho : command not found"
echo

echo -n 12 : \	\	
export pouet="echo coucou" ; $pouet
echo "expected : 	coucou"
echo

echo -n 13 : \	\	
export pouet="e""cho"' coucou' ; $pouet
echo "expected : 	coucou"
echo

export test="   a   "
echo $test
echo $test$test$test$test$test$test$test$test$test$test$test
echo "$test$test$test$test$test$test$test$test$test"
unset test

export TEST=coucou
export TEST+=bonjour
export | grep TEST
unset TEST

export TE+S=T="" ; env | sort | grep -v SHLVL | grep -v _= | grep TEST
export TEST=LOL; export TEST+=LOL ; echo $TEST ; env | sort | grep -v SHLVL | grep -v _= | grep TEST ; unset TEST
export TEST="ls       -l     - a" ; echo $TEST ; $LS ;  env | sort | grep -v SHLVL | grep -v _= | grep TEST ; unset TEST
export test=hello ; export test ; env | grep test | grep -v alien; unset test
export test=hello ; export test += coucou ; env | grep test | grep -v alien ; unset test

export TEST ; export | sort | grep -v SHLVL | grep -v _= | grep -v OLDPWD

