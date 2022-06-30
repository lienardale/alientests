echo
echo "--- TEST NB> ---"
echo

echo coucou > test.log
ls -l test.log
rm tes.log

echo coucou >> test.log
ls -l test.log
rm tes.log

export > 0test.log
cat 0test.log | grep 'USER'
rm 0test.log


echo coucou > ../alientest_minishell/test.log ; ls
echo coucou >> ../alientest_minishell/test.log ; ls

echo lol > srcs ; ls
echo lol > srcs




echo coucou > 0test.log 1test.log 2test.log > 3test.log

cat 0test.log

cat 3test.log
rm 0test.log 3test.log


> lol echo test lol; cat lol
rm lol

cat Dockerfile 1> 0test.log
rm 0test.log
cat nop.txt 2> error.txt
rm error.txt

ls efdjhgdf 2> test.log
ls efdjhgdf 32> test.log
ls efdjhgdf 1> test.log
ls efdjhgdf 0> test.log
ls efdjhgdf '1'> test.log
ls efdjhgdf "1"> test.log
ls efdjhgdf 12> test.log
ls 2> test.log
ls 32> test.log
ls 1> test.log
ls 0> test.log
ls '1'> test.log
ls "1"> test.log
ls 12> test.log

2> test.log ls sdfsdf
\2> test.log ls sdfsdf


echo coucou >0test.log;cat 0test.log
rm 0test.log
echo test > ls >> ls ; echo test
rm ls

echo test > ls >> ls >> ls ; echo test >> ls; cat ls
rm ls

rm test.log

ls >
