#!/bin/bash

echo -n "Enter number: "
read n

n1=$n	#storing n in n1 so that we can get the entered number when needed

while [[ $n>0 ]]
do	
	rem=$((n%10))
	rev=$((rev*10+rem))
	n=$((n/10))
	
	# sum of digits
	sum=$((sum+rem))
	# number of digits
	let count++
done

if [[ $rev -eq $n1 ]]
then
	echo "Palindrome"
else
	echo "Not Palindrome"
fi

echo "Reverse: $rev"
echo "Sum: $sum"
echo "No. of digits: $count"
