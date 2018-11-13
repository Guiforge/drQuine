#!/bin/zsh

execp() {
	echo -e "\e[93m exec: $@ \e[0m"
	$@
}

echo -e "\e[34m######################## TEST SULLY C\e[0m"
echo -e "\e[93m exec: mkdir -p ./tmp; cp ./Sully ./tmp; cd ./tmp; ./Sully; ls -al | grep Sully | wc -l \e[0m"
mkdir -p ./tmp; cp ./Sully ./tmp; cd ./tmp; ./Sully; ls -al | grep Sully | wc -l; cd ..; rm -r ./tmp
ret=$?
nb=$(mkdir -p ./tmp; cp ./Sully ./tmp; cd ./tmp; ./Sully; ls -al | grep Sully | wc -l)
cd ./tmp

if [ $ret -ne 0 -o $nb -ne 13 ]; then
	echo -e "\e[41m FAIL !!! SULLY C\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! SULLY C\e[0m"
fi

execp diff ../Sully.c ./Sully_5.c
if [ $? -ne 0 ]; then
	echo -e "\e[41m FAIL !!! SULLY C\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! SULLY C\e[0m"
fi

execp diff ./Sully_4.c ./Sully_5.c
if [ $? -eq 0 ]; then
	echo -e "\e[41m FAIL !!! SULLY C\e[0m"
else
	echo -e "\e[42m GOOD 🛸 !!! SULLY C\e[0m"
fi

execp cd ..
execp rm -r ./tmp