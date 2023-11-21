#!/bin/bash

read -p "Enter string: " str

len=${#str}

#reversing string
for((i=len-1;i>=0;i--))
do
	####################
	rev="$rev${str:i:1}"
	####################
done

#palindrome condition
if [[ $str == $rev ]]
then
	echo "Palindrome"
else
	echo "Not Palindrome"

fi
