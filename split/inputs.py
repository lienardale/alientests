import random
import string

# These characters are not in the following STR because they cause undefined behavior in the script :
	# { } ? " ' \

STR = "`1234567890-=~!@#$%^&*()_+	qwertyuiop[]QWERTYUIOP|asdfghjkl;ASDFGHJKL:zxcvbnm,./ZXCVBNM<> "

def randomLenght():
	return random.randint(0, 5000)
	# return random.randint(0, 2147483647)

def randomString(stringLength):
	letters = STR
	return ''.join(random.choice(letters) for i in range(stringLength))

def rendomCharSet(stringLength):
	letters = STR
	return ''.join(random.choice(letters) for i in range(stringLength))