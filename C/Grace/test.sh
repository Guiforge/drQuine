#!/bin/zsh

execp() {
	echo -e "\e[93m exec: $@ \e[0m"
	$@
}

echo -e "\e[34m######################## TEST GRACE C\e[0m"
execp ./Grace
execp chmod 744 ./Grace_kid.c
execp diff ./Grace.c ./Grace_kid.c

if [ $? != 0 ]; then
	echo -e "\e[41m FAIL !!! GRACE C\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! GRACE C\e[0m"
fi

execp chmod 000 ./Grace_kid.c
execp ./Grace

if [ $? -ge 128 -a $? -ne 255 ]; then
	echo -e "\e[41m FAIL !!! GRACE C\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! GRACE C\e[0m"
fi

execp chmod 744 ./Grace_kid.c