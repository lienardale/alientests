echo
echo "--- TEST >> ---"

echo
echo 0
echo
echo coucou >> test0.log
ls
cat test0.log

echo
echo 1
echo
echo coucou >> test0.log\ coucou
ls
cat test0.log\ coucou
rm test0.log\ coucou

echo
echo 2
echo
echo coucou >> 0test.log >> test0.log
ls
cat 0test.log
cat test0.log
rm 0test.log

echo
echo 3
echo
ls >> test0.log
ls
cat test0.log

echo
echo 4
echo
ls >> 0test.log\ coucou
ls
cat 0test.log\ coucou
rm 0test.log\ coucou

echo
echo 5
echo
ls >> 1test.log\ coucou
ls
cat 1test.log\\\ coucou
rm 1test.log\ coucou

echo
echo 6
echo
ls >> 2test.log >> test0.log
ls
cat 2test.log
cat test0.log
rm 2test.log

rm test0.log
