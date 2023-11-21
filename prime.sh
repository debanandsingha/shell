#!/bin/bash

echo -n "Enter number: "
read n

count=0
if [[ n -le 1  ]]
then
	echo "Not prime"
else
	for ((i=2; i<n; i++))
	do
		if [[ $((n%i)) -eq 0 ]]
		then
			echo "Not prime"
			let count++
			break
		fi
	done

	if [[ $((n%i)) -eq 0 && $count -eq 0 ]]
	then
		echo "Prime"
	fi
fi
