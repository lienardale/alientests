echo "--- TEST > ---"

echo
echo 0
echo
echo coucou > test.log
ls
cat test.log
rm test.log

echo
echo 1
echo
echo coucou > test.log\ coucou
ls
cat test.log\ coucou
rm test.log\ coucou

echo
echo 2
echo
echo coucou > 0test.log > 1test.log
ls
cat 0test.log
cat 1test.log
rm 0test.log 1test.log

echo
echo 3
echo
ls > test.log
ls
cat test.log
rm test.log

echo
echo 4
echo
ls > 0test.log\ coucou
ls
cat 0test.log\ coucou
rm 0test.log\ coucou

echo
echo 5
echo
ls > 1test.log\ coucou
ls
cat 1test.log\\\ coucou
rm 1test.log\ coucou

echo
echo 6
echo
ls > 2test.log > 3test.log
ls
cat 2test.log
cat 3test.log
rm 2test.log 3test.log

export | grep SHELL > 0test.log
cat 0test.log
rm 0test.log

env | SHELL > 0test.log
cat 0test.log
rm 0test.log

pwd > 0test.log
cat 0test.log
rm 0test.log

cd srcs > 0test.log
cd ..
cat 0test.log
rm 0test.log

echo
echo 7
echo
echo coucou> test.log
ls
cat test.log
rm test.log

echo
echo 8
echo
echo coucou >test.log
ls
cat test.log
rm test.log

echo
echo 9
echo
echo coucou>test.log
ls
cat test.log
rm test.log


