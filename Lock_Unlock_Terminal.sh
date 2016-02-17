#!/bin/bash
num=1
clear
while [ $num -eq 1 ] 
do
	echo "Enter password"
	stty -echo
	read pw
	echo "Confirm password"
	read pw2
	if [ "$pw" == "$pw2" ]
	then
		clear
		echo "Terminal locked!"
		let num=0 
	else
		echo "Passwords don't match"
	fi
done
read a #to hold display
clear
while [ $num -eq 0 ]; do
	echo "Enter password"
	read pw2
	if [ "$pw" == "$pw2" ]; then
		clear
		echo "Terminal unlocked"	
		let num=1
	else
		clear
		echo "Incorrect. Try again."
	fi
done
stty echo
