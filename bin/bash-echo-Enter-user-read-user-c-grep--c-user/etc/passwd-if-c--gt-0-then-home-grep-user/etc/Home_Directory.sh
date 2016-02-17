#!/bin/bash
echo "Enter user "
read user
	c=$( grep -c "$user" /etc/passwd )
	if [ $c -gt 0 ]
	then
		home=$( grep "$user" /etc/passwd | cut -d: -f6 )
		echo "Home directory is $home"
	else
		echo "Invalid user"
	fi
