echo "--- HARDCORE PWD ---"

rm hardcore_pwd.log hardcore_pwd_errors.log
rm -rf test0
touch hardcore_pwd.log hardcore_pwd_errors.log
function run(){ 
i=0
while true; do
	if [[ "$i" -gt 250 ]]; then
		break
	fi
	mkdir test$i
	cd test$i
	pwd
	((i++))
done
}
run 1>> hardcore_pwd.log 2>> hardcore_pwd_errors.log
rm -rf test0
