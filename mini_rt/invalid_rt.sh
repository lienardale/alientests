#!/bin/bash
rm -f kill.log
rm -f test.log
cd ../
make 2>>/dev/null
cd invalid_rt_file_tester

RIGHT="✅"
WRONG="❌"

function run(){ 

	echo "Test no arg:" >> test.log
	echo "Test no arg:" >> kill.log
	./../miniRT >> test.log 2>&1 &
	sleep 0.05
	PID=$(ps -ef | grep "miniRT" | grep -v 'grep' | awk '{print $2}')
	echo -n "Test no arg:"
	if [ $PID ]
	then
		kill $PID 1>&2
		echo $WRONG >> kill.log
		echo $WRONG
	else
		echo $RIGHT
		# echo "\033[0;32m \xE2\x9C\x94	\033[0m"
	fi


	echo "Test non-exist0:" >> test.log
	echo "Test non-exist0:" >> kill.log
	./../miniRT srcs/error.rt >> test.log 2>&1 &
	sleep 0.05
	PID=$(ps -ef | grep "miniRT" | grep -v 'grep' | awk '{print $2}')
	echo -n "Test non-exist0:"
	if [ $PID ]
	then
		kill $PID 1>&2
		echo $WRONG >> kill.log
		echo $WRONG
	else
		echo $RIGHT
		# echo "\033[0;32m \xE2\x9C\x94	\033[0m"
	fi

	echo "Test non-exist1:" >> test.log
	echo "Test non-exist1:" >> kill.log
	./../miniRT srcs/error >> test.log 2>&1 &
	sleep 0.05
	PID=$(ps -ef | grep "miniRT" | grep -v 'grep' | awk '{print $2}')
	echo -n "Test non-exist1:"
	if [ $PID ]
	then
		kill $PID 1>&2
		echo $WRONG >> kill.log
		echo $WRONG
	else
		echo $RIGHT
		# echo "\033[0;32m \xE2\x9C\x94	\033[0m"
	fi

	echo "Test multi-arg0:" >> test.log
	echo "Test multi-arg0:" >> kill.log
	./../miniRT srcs/objects.rt srcs/objects.rt >> test.log 2>&1 &
	sleep 0.05
	PID=$(ps -ef | grep "miniRT" | grep -v 'grep' | awk '{print $2}')
	echo -n "Test multi-arg0:"
	if [ $PID ]
	then
		kill $PID 1>&2
		echo $WRONG >> kill.log
		echo $WRONG
	else
		echo $RIGHT
		# echo "\033[0;32m \xE2\x9C\x94	\033[0m"
	fi

	echo "Test multi-arg1:" >> test.log
	echo "Test multi-arg1:" >> kill.log
	./../miniRT srcs/objects.rt srcs/objects.rt srcs/objects.rt >> test.log 2>&1 &
	sleep 0.05
	PID=$(ps -ef | grep "miniRT" | grep -v 'grep' | awk '{print $2}')
	echo -n "Test multi-arg1:"
	if [ $PID ]
	then
		kill $PID 1>&2
		echo $WRONG >> kill.log
		echo $WRONG
	else
		echo $RIGHT
		# echo "\033[0;32m \xE2\x9C\x94	\033[0m"
	fi

	echo '' >> test.log
	echo "Test .cube:" >> test.log
	echo "Test .cube:" >> kill.log
	./../miniRT srcs/0.cube >> test.log 2>&1 &
	sleep 0.05
	PID=$(ps -ef | grep "miniRT" | grep -v 'grep' | awk '{print $2}')
	echo -n "Test .cube:"
	if [ $PID ]
	then
		kill $PID 1>&2
		echo $WRONG >> kill.log
		echo $WRONG
	else
		echo $RIGHT
		# echo "\033[0;32m \xE2\x9C\x94	\033[0m"
	fi
	i=0
	while true; do
		if [[ "$i" -gt 191 ]]; then
			break
		fi
		if ! (("$i" % 10)) ; then
			echo
		fi
		echo '' >> test.log
		echo "Test $i:" >> test.log
		echo "Test $i:" >> kill.log
		./../miniRT srcs/$i.rt >> test.log 2>&1 &
		sleep 0.05
		PID=$(ps -ef | grep "miniRT" | grep -v 'grep' | awk '{print $2}')
		echo -ne " $i:"
		if [ $PID ]; then
			kill $PID 1>&2
			echo $WRONG >> kill.log
			echo -ne $WRONG
		else
			echo -ne $RIGHT
			# echo "\033[0;32m \xE2\x9C\x94	\033[0m"
		fi
		((i++))
	done
}
run 2>> kill.log

DIFF=$(diff kill.log srcs/kill_diff.log)
if [ "$DIFF" == "" ] ; then
	echo -e "\033[0;32m[OK]\033[0m"
	echo -e "\033[0;32mNo errors, gg.\033[0m"
	echo -e "\033[0;32mCheck test.log to see if the error messages are explicit.\033[0m"
else
	echo -e "\033[0;31m[KO]\033[0m"
	echo ''
	echo -e "\033[0;31mErrors, check kill.log, re-run if suspicious or if some lines look like 'kill: 35686: No such process'.\033[0m"
	echo ''
	echo -e "\033[0;31mIf the person tells you the tester is wrong, run a few test manually.\033[0m"
	echo ''
	echo -e "\033[0;31mIf they are slow, but you do not see a window opening, they are right.\033[0m"
	echo -e "\033[0;31mElse, they're wrong, put them a 0 and tell them to come fight me.\033[0m"
	echo ''
	echo -e "\033[0;31mIf you haven't, RTFM.\033[0m"
fi
