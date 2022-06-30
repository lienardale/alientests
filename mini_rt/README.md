# invalid_rt_file_tester

## usage
go to your mini_RT repo
and clone the repository at the root of your miniRT without giving it a different name
```
git clone https://github.com/lienardale/invalid_rt_file_tester.git && cd invalid_rt_file_tester
```
```
bash invalid_rt.sh
```


## leaks
'bash leaks_invalid_rt.sh'
this tester implements a 

## logs
- kill messages are in kill.log
- error messages are in test.log
- valgrind output is in leaks.log

if there are lines looking like "invalid_rt.sh: line 3: 16740 Terminated: 15          ./../miniRT srcs/$i.rt >> test.log"    
it means a window was open, and that the mini_RT treated an invalid file as a valid one

**CAREFULL**   
	/!\ if there are lines like "kill: 35686: No such process" /!\     
   /!\ it only means the kill command executed too fast /!\   
   /!\ it is not a signal that the mini_RT failed a test /!\   
   /!\ in such cases, take the test nb and test it manually /!\

