#!/bin/bash

echo -n "Enter nth natural number: "
read n

for((i=1;i<=n;i++))
do
	if [[ i%2 -eq 0 ]]
	then
		let s1+=i
	else
		let s2+=i
	fi
done

echo "Odd sum: $s2"
echo "Even sum: $s1"
