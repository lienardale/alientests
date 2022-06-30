import sys
import subprocess
import random
import string
import inputs

M = 500
COMP = "gcc -Wall -Wextra -Werror"

tests = []

if (len(sys.argv) != 2):
	print("Wrong usage: sh run.sh <path-of-ftsplit>")
	exit()

PATH = sys.argv[1]
if (PATH[-1] != "/"):
	PATH += "/"

def compile_lib():
	result = subprocess.run("make -C {}".format(PATH), shell=True)


def function_content():
	s = inputs.randomString(inputs.randomLenght())
	charset = inputs.randomString(inputs.randomLenght())
	return s, charset

def generate_test():
	content = function_content()
	res1 = "\n	tmp = ft_split_charset(\"{}\", \"{}\");\n	ft_print_ret(tmp);\n	ft_free_ret(tmp);\n".format(content[0], content[1])
	res1 += "	(void)ret;\n	(void)tok;\n	(void)pos;\n"
	res2 = "\n	char line[] = \"{}\";\n	char delim[] = \"{}\";\n	ret = strtok(line, delim);\n".format(content[0], content[1])
	res2 += "	while (ret != NULL)\n	{\n		tok[pos] = ret;\n		pos++;\n		if (pos >= buf)\n		{\n			buf += 64;\n			tok = realloc(tok, buf * sizeof(char*));\n		}\n"
	res2 += "		ret = strtok(NULL, delim);\n"
	res2 += "	}\n	tok[pos] = NULL;\n	ft_print_ret(tok);\n"
	res2 += "	(void)tmp;\n"
	return(res1, res2)

def generate_tests():
	res1 = ""
	res2 = ""
	test = generate_test()
	res1 += test[0]
	res2 += test[1]
	return (res1, res2)

def generate_mains():
	content = ""
	with open("main_template.c", "r") as file:
		content = file.read()
	tests = generate_tests()
	content_ftsplit = content.replace("$$$1", tests[0])
	content_split = content.replace("$$$1", tests[1])
	with open("main_ftsplit.c", "r") as file:
		data = file.read()
	with open("main_ftsplit.c", "w") as file:
		file.write(content_ftsplit)
	with open("main_split.c", "r") as file:
		data = file.read()
	with open("main_split.c", "w") as file:
		file.write(content_split)


def launch_tests():
	result1 = subprocess.run("{} -L{} -lft -o tests_ftsplit main_ftsplit.c".format(COMP, PATH[:-1]), shell=True)
	result2 = subprocess.run("{} -L{} -lft -o tests_split main_split.c".format(COMP, PATH[:-1]), shell=True)
	result3 = subprocess.run("./tests_ftsplit >> ftsplit_output", shell=True)
	result3 = subprocess.run("./tests_split >> split_output", shell=True)

def diff():
    ok = True
    print("Comparing outputs:")
    print()
    ftsplit_output = open("ftsplit_output", "r").readlines()
    split_output = open("split_output", "r").readlines()
    for i in range(len(tests)):
        if (ftsplit_output[i] != split_output[i]):
            ok = False
            print("Diff for split({});".format(tests[i]))
            print("  split: |{}|".format(split_output[i][:-1]))
            print("ftsplit: |{}|".format(ftsplit_output[i][:-1]))
            print()
    if (ok):
        print("No differences, well done !")

print("Generating tests")
for i in range(M):
	print("{}/{}".format(i + 1, M))
	tests = []
	generate_mains()
	launch_tests()
diff()