#bin/bash

ALL=( cat ls echo pwd cd env export unset exit semi_colon quote backslash pipe redir_in redir_out append redir_nb parsing return roalvare pcariou )
LOGS=( bash us diff us_errors bash_errors diff_errors )

if [ "$(uname -s)" != "Linux" ]
	then
		RED="\033[91m"
		GREEN="\033[92m"
		YELLOW="\033[93m"
		BLUE="\033[94m"
		PURPLE="\033[95m"
		CYAN="\033[96m"
		WHITE="\033[97m"
	else
		RED="\e[91m"
		GREEN="\e[92m"
		YELLOW="\e[93m"
		BLUE="\e[94m"
		PURPLE="\e[95m"
		CYAN="\e[96m"
		WHITE="\e[97m"
fi

clean()
{
    for log in ${LOGS[*]}
    do
        rm alientest_minishell/$log.txt 2> /dev/null
    done
}

do_diff()
{
    echo -en $RED
    diff alientest_minishell/us.txt alientest_minishell/bash.txt
    echo -en $WHITE
    diff alientest_minishell/us.txt alientest_minishell/bash.txt > alientest_minishell/diff.txt

    echo -en $RED
    diff alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt | grep -v ls | grep -v cat | grep -v - | grep -v c | grep -v a
    # diff alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt
    echo -en $WHITE
    diff alientest_minishell/us_errors.txt alientest_minishell/bash_errors.txt > alientest_minishell/diff_errors.txt
}

one()
{
	./minishell < alientest_minishell/$1.sh 1>> alientest_minishell/us.txt 2>> alientest_minishell/us_errors.txt
     bash < alientest_minishell/$1.sh 1>> alientest_minishell/bash.txt 2>> alientest_minishell/bash_errors.txt
}

cd ..
make make 1> /dev/null
clean

echo -en $BLUE
echo "Which one ?"
echo -en $GREEN
for scr in ${ALL[*]} 
	do
        echo " - $scr"
	done
echo -en $WHITE
read -p '> ' test
one "$test"

do_diff

if [ -f alientest_minishell/diff.txt ]; then
	errors=$(cat alientest_minishell/diff.txt)
	if [ -z "$errors" ] ; then
		echo -en $GREEN
		echo "All tests ok."
		echo -en $WHITE
	else
		echo -en $YELLOW
		echo "Error(s), check diff.txt to see details."
		echo -en $WHITE
	fi
fi

if [ -f alientest_minishell/diff_errors.txt ]; then
	errors=$(cat alientest_minishell/diff_errors.txt)
	if [ -z "$errors" ] ; then
		echo -en $GREEN
		echo "All error tests ok."
		echo -en $WHITE
	else
		echo -en $YELLOW
		echo "Diffs in error output, check diff_errors.txt to see details."
		echo -en $WHITE
	fi
fi
