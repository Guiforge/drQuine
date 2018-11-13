#!/bin/zsh

execp() {
	echo -e "\e[93m exec: $@ \e[0m"
	$@
}

echo -e "\e[34m######################## TEST GRACE PYTHON\e[0m"
execp ./Grace.py
execp chmod 744 ./Grace_kid.py
execp diff ./Grace.py ./Grace_kid.py

if [ $? != 0 ]; then
	echo -e "\e[41m FAIL !!! GRACE PYTHON\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! GRACE PYTHON\e[0m"
fi

execp chmod 000 ./Grace_kid.py
execp ./Grace.py

if [ $? -ge 128 -a $? -ne 255 ]; then
	echo -e "\e[41m FAIL !!! GRACE PYTHON\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! GRACE PYTHON\e[0m"
fi

execp chmod 744 ./Grace_kid.py
execp rm ./Grace_kid.py