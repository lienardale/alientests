echo
echo "--- TESTS < ---"
echo
ls > 0test.log
echo phase 1 ok
echo
sort < 0test.log
echo
echo phase 2 ok
echo
grep .sh < 0test.log
echo
echo phase 3 ok
echo
rm 0test.log

echo coucou les zouzous > 0test.log
echo bonjour.sh >> 0test.log
echo salut.sh >> 0test.log
echo hello.sh >> 0test.log
echo phase 1 ok
echo
sort < 0test.log
echo
echo phase 2 ok
echo
grep .sh < 0test.log
echo
echo phase 3 ok
echo
rm 0test.log

sort < 0test.log
