#bin/bash

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

echo -en $RED
echo "Before executing this tester, run 'bash norme.sh'
Don't give too much importance to the yellow output, check the .diff files

/!\ If the prompt is written in stderr, it will get in the .diff files 
	It is a valid interpretation, don't give 0/100 for this
/!\ Same goes if there is an 'exit' printed at the end of each script
	the function isatty that allows bash to detect if stdin is really stdin
	is only available if you do bonuses, so it is not required."
echo -e $WHITE

# bash norme.sh
# bash all_tests.sh
bash all_redirin.sh

if [ -f diff.txt ]; then
	errors=$(cat diff.txt)
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

if [ -f diff_errors.txt ]; then
	errors=$(cat diff_errors.txt)
	if [ -z "$errors" ] ; then
		echo -en $GREEN
		echo "All error tests ok."
		echo -en $WHITE
	else
		echo -en $YELLOW
		echo "Diffs in error output, check diff_errors.txt to see details."
		echo -en $WHITE
	fi
	# echo -en $GREEN
	# echo "One you have checked the .diff files, run 'valgrind.sh' to test leaks."
	# echo -en $WHITE
fi
# bash valgrind.sh