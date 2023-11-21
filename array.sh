#!/bin/bash

# arr=(1 2 3 4 5)

echo -n "Enter array size: "
read n

echo "Enter $n elements: "
for((i=0;i<n;i++))
do
	read arr[i]
done

echo -n "Array: "
for((i=0;i<n;i++))
do
	echo -n "${arr[i]}  "
done


for i in ${arr[*]}
do
	sum=$((sum+i))
	avg=$((sum/5))
done

echo
echo "Sum: $sum"
echo "Avg: $avg"
