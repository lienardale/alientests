#bin/bash

TEST_DIR="srcs"
LOG_DIR="logs"

ALL=( cat ls echo pwd cd env export unset exit semi_colon quote backslash pipe redir_in redir_out append redir_nb parsing return roalvare pcariou )
EXECVE=( cat ls )
BLT=( echo pwd cd env export unset exit )
PARSING=( semi_colon quote backslash pipe redir_in redir_out append redir_nb parsing return )
OTHER=( roalvare pcariou )
HARDCORE=( cd env pipe pwd redir )
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
        rm $LOG_DIR/$log.txt 2> /dev/null
    done
}

norme()
{
    cd ..
    rm -rf alientest_minishell/logs/norme.log
    norminette */*.c */*.h */*/*.c */*/*.h > alientest_minishell/logs/norme.log
    errors=$(cat alientest_minishell/logs/norme.log | grep Error)
    cd alientest_minishell/
    if [ -z "$errors" ] ; then
        echo "No norme error."
        return 1;
    else
        echo "Norm error(s), check norme.log to see details."
        return 0;
    fi
}

do_diff()
{
    echo -en $RED
    diff $LOG_DIR/us.txt $LOG_DIR/bash.txt
    echo -en $WHITE
    diff $LOG_DIR/us.txt $LOG_DIR/bash.txt > $LOG_DIR/diff.txt

    echo -en $RED
    diff $LOG_DIR/us_errors.txt $LOG_DIR/bash_errors.txt | grep -v ls | grep -v cat | grep -v - | grep -v c | grep -v a
    # diff $LOG_DIR/us_errors.txt $LOG_DIR/bash_errors.txt
    echo -en $WHITE
    diff $LOG_DIR/us_errors.txt $LOG_DIR/bash_errors.txt > $LOG_DIR/diff_errors.txt
}

all_tests()
{
    for scr in ${ALL[*]} 
	do
		./../minishell < $TEST_DIR/$scr.sh 1>> $LOG_DIR/us.txt 2>> $LOG_DIR/us_errors.txt
        bash < $TEST_DIR/$scr.sh 1>> $LOG_DIR/bash.txt 2>> $LOG_DIR/bash_errors.txt
	done
}

execve()
{
    for scr in ${EXECVE[*]} 
	do
		./../minishell < $TEST_DIR/$scr.sh 1>> $LOG_DIR/us.txt 2>> $LOG_DIR/us_errors.txt
        bash < $TEST_DIR/$scr.sh 1>> $LOG_DIR/bash.txt 2>> $LOG_DIR/bash_errors.txt
	done
}

blt()
{
    for scr in ${BLT[*]} 
	do
		./../minishell < $TEST_DIR/$scr.sh 1>> $LOG_DIR/us.txt 2>> $LOG_DIR/us_errors.txt
        bash < $TEST_DIR/$scr.sh 1>> $LOG_DIR/bash.txt 2>> $LOG_DIR/bash_errors.txt
	done
}

parse()
{
    for scr in ${PARSING[*]} 
	do
		./../minishell < $TEST_DIR/$scr.sh 1>> $LOG_DIR/us.txt 2>> $LOG_DIR/us_errors.txt
        bash < $TEST_DIR/$scr.sh 1>> $LOG_DIR/bash.txt 2>> $LOG_DIR/bash_errors.txt
	done
}

hard()
{
    for scr in ${HARDCORE[*]} 
	do
		./../minishell < $TEST_DIR/hardcore_tests/${scr}_hardcore.sh 1>> $LOG_DIR/us.txt 2>> $LOG_DIR/us_errors.txt
        bash < $TEST_DIR/hardcore_tests/${scr}_hardcore.sh 1>> $LOG_DIR/bash.txt 2>> $LOG_DIR/bash_errors.txt
	done
}

one()
{
	./../minishell < $TEST_DIR/$1.sh 1>> $LOG_DIR/us.txt 2>> $LOG_DIR/us_errors.txt
     bash < $TEST_DIR/$1.sh 1>> $LOG_DIR/bash.txt 2>> $LOG_DIR/bash_errors.txt
}

# testing signals

# ./../minishell $TEST_DIR/signal.sh 1>> $TEST_DIR/us.txt 2>> $TEST_DIR/us_errors.txt
# bash $TEST_DIR/signal.sh 1>> $TEST_DIR/bash.txt 2>> $TEST_DIR/bash_errors.txt

make -C ../ 1> /dev/null
clean

if [ -z "$1" ]; then
        echo -en $BLUE
        echo 'What do you want to test ?'
        echo -en $GREEN
        echo -n '- For all tests, type "all"
- For only execve tests, type "exec"
- For only builtins tests, type "blt"
- For only parsing tests, type "parse"
- For hardcore tests, type "hard"
- To test only one script, enter "one"
- To exit, enter "exit"'
        echo -e $WHITE
        read -p '> ' test
        if [ "$test" == "all" ]; then
            all_tests
            elif [ "$test" ==  "exec" ]
            then
                execve
            elif [ "$test" ==  "blt" ]
            then
                blt
            elif [ "$test" ==  "parse" ]
            then
                parse
            elif [ "$test" ==  "hard" ]
            then
                hard
            elif [ "$test" ==  "one" ]
            then
                echo -en $BLUE
                echo "Which one ?"
                echo -en $GREEN
                for scr in ${ALL[*]} 
	                do
                        echo " - $scr"
	                done
                # echo -en $BLUE
                # echo "Hardcore tests :"
                # echo -en $GREEN
                # for scr in ${HARDCORE[*]} 
	            #     do
                #         echo " - ${scr}_hardcore"
	            #     done
                echo -en $WHITE
                read -p '> ' test
                one "$test"
            elif [ "$test" ==  "exit" ]
            then
                exit
            fi
    else
        all_tests
    fi
if [ "$test" !=  "exit" ]
    then
        do_diff
    fi