#!/bin/bash

# sum of 1/1! + 1/2! + 1/3! + .... nth

echo -n "Enter nth number: "
read n

f=1
for((i=1;i<=n;i++))
do
	f=$((f*i))
	sum=$((sum+(1/f)))
done

echo "Result: $sum"
