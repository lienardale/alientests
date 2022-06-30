# alientest_minishell

## usage :
clone into your minishell repo without changing its name
```
git clone https://github.com/lienardale/alientest_minishell.git && cd alientest_minishell
```

## to test norme :
```
bash norme.sh
```

## to run tests : 
```
bash run.sh
```    

if you want to see all the options

```
bash valgrind.sh
```    

if you want to test leaks


## output :
diffs with bash will be printed in stdout and in the /logs directory
- bash's stdout -> bash.txt
- minishell's stdout -> us.txt
- bash's stderr -> bash_errors.txt
- minishell's stderr -> us_errors.txt
- leak summary -> leak.log
- leak detail -> all_leaks.log
- norme -> norme.log

/!\ Work in progress
- Does not test return or exit values very extensively
- Does not test signals

## tests :
all the tests are in the files in the /srcs directory   
to add your own, either append existing files and / or create new ones and modify the shell scripts accordingly