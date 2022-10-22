#!/bin/bash

palindrome_check () {
	reverse=""
	input=$[$1]
	len=${#input}
	for (( i=$len-1; i>=0; i-- ));do

		reverse="$reverse${input:$i:1}"
	done
	if [ $input -eq $reverse ];then

    		echo "Yes you are right $input is palindrome"
	else
   		echo "No $input is not palindrome"
	fi
}
while true;do
	read -p "Enter the number to check is it palindrome or not: " num
	x=${num:-121}
	palindrome_check $num
	read -p "Do you want to continue[y/n]" replay
	if [ $replay == 'Y' -o $replay == 'y' ];then
		continue
	else
		break
	fi
done
