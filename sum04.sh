#!/bin/bash

# sum of 1/1! + 1/2! + 1/3! + .... nth

echo -n "Enter nth number: "
read n

f=1
g=1
for((i=1;i<=n;i+=4))
do
        f=$((f*i))
        s1=$((s2+(1/f)))

	for((j=i+2;i<=n;j++))
	do
		g=$((g*i))
		s2=$((s2+(1/g)))
	done
done

echo "Result: $((s1+s2))"

