
echo
echo "--- TESTS unset ---"
echo

export coucou=salut
env | grep coucou
unset coucou
env | grep coucou

unset PATH
ls
exit

echo
