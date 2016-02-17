#!/bin/bash
clear
echo "Enter string"
read str
len=`echo $str | wc -c`
let len=len-1
while [ $len -ge 0 ]
do
	rev1=`echo $str | cut -c $len`
	rev=$rev$rev1
	let len=len-1
done
clear
echo "Reverse is $rev"
if [ 	"$str" == "$rev" ]
then 
	echo "Palindrome"
else
	echo "Not palindrome"
fi	
