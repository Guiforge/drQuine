#!/bin/zsh

execp() {
	echo -e "\e[93m exec: $@ \e[0m"
	$@
}

echo -e "\e[34m######################## TEST GRACE ASM\e[0m"
execp ./Grace
execp diff ./Grace.s ./Grace_kid.s

if [ $? != 0 ]; then
	echo -e "\e[41m FAIL !!! GRACE ASM\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! GRACE ASM\e[0m"
fi

execp chmod 000 ./Grace_kid.s
execp ./Grace

if [ $? -ge 128 -a $? -ne 255 ]; then
	echo -e "\e[41m FAIL !!! GRACE ASM\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! GRACE ASM\e[0m"
fi