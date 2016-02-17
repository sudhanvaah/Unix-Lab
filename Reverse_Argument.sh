#!/bin/bash
num=$#
while [ $num -gt 0 ]
do
	num1=${!num}
	echo "$num1"
	let num=num-1
done
