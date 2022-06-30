echo
echo "--- HARDCORE > < >> ---"
echo

# the last redir file is the one taken into account
# the args concat themselves
# if simple redir present for the final file it takes over append, but if it is for another file, append takes over
>lol echo > test>lol>test>>lol>test mdr >lol test >>test; cat test ; cat lol
 >> lol >> lol > lol >> lol echo coucou; cat lol
echo coucou >> lol >> lol >test >> lol ; cat lol
rm lol test

echo coucou > test0.log >> test0.log > test1.log >> test0.log ; cat -e test0.log
echo coucou > test0.log >> test0.log > test1.log >> test0.log ; cat -e test0.log
rm test0.log test1.log

echo salut > lol >> lol > lol
echo salut > lol >> lol >> lol
echo salut >> lol > test >> lol

ls efdjhgdf 1>2 test.log
rm 2
ls efdjhgdf -1> test.log
ls efdjhgdf \1> test.log
ls efdjhgdf 2147483647> test.log
ls efdjhgdf -2147483648> test.log
ls efdjhgdf 2147483648654565> test.log

ls 1>2 test.log
ls -1> test.log
ls \1> test.log
ls 2147483647> test.log
ls -2147483648> test.log
ls 2147483648654565> test.log
