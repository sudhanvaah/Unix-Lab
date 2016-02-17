#!/bin/bash
x="Documents"
$(cd "$x")
set -- `ls -Rl | grep -v "^d" | sort -k 5 -rn`
echo "Largest is $5 in $7"
