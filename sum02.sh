#!/bin/bash

# Sum of 1-3+5-7+......nth

echo -n "Enter nth number: "
read n

for((i=1;i<=n;i+=4))
do
	s1=$((s1+i))

	for((j=i+2;j<=n;j++))
	do
		s2=$((s2+i))
	done
done

echo "Result: $((s1-s2))"

