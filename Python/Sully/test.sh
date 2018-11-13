#!/bin/zsh

execp() {
	echo -e "\e[93m exec: $@ \e[0m"
	$@
}

echo -e "\e[34m######################## TEST SULLY PYTHON\e[0m"
echo -e "\e[93m exec: mkdir -p ./tmp; cp ./Sully.py ./tmp; cd ./tmp; ./Sully.py; ls -al | grep Sully | wc -l \e[0m"
mkdir -p ./tmp; cp ./Sully.py ./tmp; cd ./tmp; ./Sully.py; ls -al | grep Sully | wc -l; cd ..; rm -r ./tmp
ret=$?
nb=$(mkdir -p ./tmp; cp ./Sully.py ./tmp; cd ./tmp; ./Sully.py; ls -al | grep Sully | wc -l)
cd ./tmp

if [ $ret -ne 0 -o $nb -ne 7 ]; then
	echo -e "\e[41m FAIL !!! SULLY PYTHON\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! SULLY PYTHON\e[0m"
fi

execp diff ../Sully.py ./Sully_5.py
if [ $? -ne 0 ]; then
	echo -e "\e[41m FAIL !!! SULLY PYTHON\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! SULLY PYTHON\e[0m"
fi

execp diff ./Sully_4.py ./Sully_5.py
if [ $? -eq 0 ]; then
	echo -e "\e[41m FAIL !!! SULLY PYTHON\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! SULLY PYTHON\e[0m"
fi

execp cd ..
execp rm -r ./tmp