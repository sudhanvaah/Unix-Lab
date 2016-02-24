#!/bin/bash
time=$(date | cut -d " " -f4 | cut -d ":" -f1 )
if [ $time -lt 18 ]
then 
	echo "Good day"

else 
	echo "Good evening"
fi
