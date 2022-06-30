echo
echo "--- TESTS PARSING ---"
echo

echo "----space-trimming----"
echo \	\	coucou1
echo \		coucou2
echo		coucou3
echo    coucou4	\	\    
echo    coucou5\	\	\    
echo     coucou6     	
echo    coucou7	"	""    "
echo    coucou8"	""	""    "
echo "	""	"coucou9
echo "	""	"coucou10
echo    coucou11	'	''    '
echo    coucou12'	''	''    '
echo '	''	'coucou13
echo '	''	'coucou14
echo coucou\	    \	coucou15
echo coucou\	    	coucou16
echo coucou	    	coucou17
echo    coucou	\	\    coucou18
echo    coucou\	\	\    coucou19
echo    coucou     	coucou20
echo

echo "----dollar----"
echo "--classic--"
echo $'PWD'
echo $"PWD"
echo $'RIP'
echo $"RIP"

echo $\""RIP"
echo $3
echo $324
echo $RIP


$3
$324
$RIP
$LS
$R1I2P3
$1R2I3P
echo $ 
echo
echo "--bkslh--"
echo \$'PWD'
echo \$"PWD"
echo \$'RIP'
echo \$"RIP"
echo \$\""RIP"
echo \$3
echo \$324
echo \$RIP
echo \$ 
echo
echo "--dquote--"
echo "$'PWD'"
echo "$'PWD'"
echo "$'RIP'"
echo "$'RIP'"
echo "$\"'RIP'"
echo "$3"
echo "$324"
echo "$RIP"
echo "$ "
echo
echo "--squote--"
echo '$"PWD"'
echo '$"PWD"'
echo '$"RIP"'
echo '$"RIP"'
echo '$\""RIP"'
echo '$3'
echo '$324'
echo '$RIP'
echo '$ '
echo
echo "--more--"

echo    $TEST lol $TEST
echo $TEST $TEST


echo "$?TEST"
echo "$1TEST"
echo "$9TEST"
echo "$T1TEST"
echo

echo "----quotes----"
echo "coucouc;"
echo -n -n One"argument"'lo'l; echo n
echo -n -n One"argument"'lo'l; echo "n"
echo -n -n One"argument"'lo'l; echo "n"''ee"d"more'?'''"'"
echo -n One"argument"'lo'l ; echo "n"''ee"d"more'?'''"'"
echo -n -n return
echo test "" test "" test
echo

ls |
ls
ls >
 
 |
ecjo ;;;

echo test | | wc; echo lol
