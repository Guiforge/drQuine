#!/bin/zsh

execp() {
	echo -e "\e[93m exec: $@ \e[0m"
	$@
}

echo -e "\e[34m######################## TEST COLLEEN PYTHON\e[0m"
echo -e "\e[93m exec: ./Colleen > ./tmp \e[0m"
./Colleen.py > ./tmp
 execp diff ./Colleen.py ./tmp

if [ $? != 0 ]; then
	echo -e "\e[41m FAIL !!! COLLEEN PYTHON\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! COLLEEN PYTHON\e[0m"
fi

rm ./tmp