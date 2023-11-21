#!/bin/bash

echo -n "How many numbers to enter? "
read n

echo "Enter $n numbers: "
for((i=0;i<n;i++))
do
	read arr[i]	# No need of ${} as we are not calling the array rather declaring and initializing it
done

echo

echo -n "Your entered numbers: "
for((i=0;i<n;i++))
do
	echo -n "${arr[i]} "
done

echo


g=s=${arr[0]}
for((i=0;i<n;i++))
do
		if [[ ${arr[i]} -gt $g  ]]
		then
			g=${arr[i]}
		fi

		if [[ ${arr[i]} -lt $s ]]
		then
			s=${arr[i]}
		fi
done

echo "Greatest: $g"
echo "Smallest: $s"
