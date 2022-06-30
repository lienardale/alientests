echo "--- TESTS \ ---"

echo 1 "coucou\"bonjour"
echo 2 "coucou\'bonjour"
echo 3 'coucou\"bonjour'
echo 4 'coucou\'bonjour''
echo 5 "'''''''''"
echo 6 '"""""""""""'
echo -n "7	"
\l\s
echo -n "8	"
 \l\s
echo -n "9	"
\ \l\s

echo 10 \"coucou
echo 11 \'coucou
echo -n "12	"
echo \-n coucou
echo
echo -n "13	"
echo\ -n coucou
echo

ls > test.log\ coucou
cat test.log\ coucou
rm test.log\ coucou

ls > test.log\\ coucou
cat test.log\\
cat test.log\\ coucou
rm test.log\\

ls > test.log\\\ coucou
cat test.log\\\ coucou
rm test.log\\\ coucou

ls > test.log\\\\ coucou
cat test.log\\\\
cat test.log\\\\ coucou
rm test.log\\\\

ls -la Dockerfile > test.log\\\\ coucou salut
cat test.log\\\\
cat test.log\\\\ coucou
rm test.log\\\\

ls -la Dockerfile > test.log\\\\ a.out minishell
cat test.log\\\\
cat test.log\\\\ coucou
rm test.log\\\\

ls > test.log\\\\\ coucou
cat test.log\\\\\ coucou
rm test.log\\\\\ coucou

echo '\\please\\' "\"fail\\"

