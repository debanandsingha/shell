#!/bin/bash

echo -n "How many numbers to enter? "
read n

echo "Enetr $n numbers: "
for((i=0;i<n;i++))
do
	read arr[i]
done

echo -n "Entered numbers: "
for((i=0;i<n;i++))
do
	sum=$((sum+arr[i]))

	echo -n "${arr[i]} "
done

echo
echo "Avg: $((sum/n))"
