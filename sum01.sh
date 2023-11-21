#!/bin/bash

#Sum of 1+2+3+....+n

echo -n "Enter the nth number: "
read n

for ((i=1;i<=n;i++))
do
	sum=$((sum+i));
done

echo "Sum of 1+2+.....+$n: $sum"
