#!/bin/bash

echo "Matrix A: "
echo "Enter row + column: "
read r1
read c1

echo "Matrix B: "
echo "Enter row + column: "
read r2
read c2

if [[ c1 -ne r2 ]]
then
	echo "Matrix Multiplication not possible!"
else
	echo "Enter elements of Mattrix A: "
	for((i=0;i<r1;i++))
	do
		for((j=0;j<c1;j++))
		do
			read A[$i$j]
		done
	done

	echo "Enter elements of matrix B: "
	for((i=0;i<r2;i++))
	do
		for((j=0;j<c2;j++))
		do
			read B[$i$j]
		done
	done

	for((i=0;i<r1;i++))
	do
		for((j=0;j<c2;j++))
		do
			for((k=0;k<c1;k++))
			do
				C[$i$j]=$(( ${C[$i$j]} + ${A[$i$k]} * ${B[$k$j]}  ))
			done
		done
	done

	echo "Resultant Matrix: "
	for((i=0;i<r1;i++))
	do
		for((j=0;j<c2;j++))
		do
			echo -n "${C[$i$j]}  "
		done
		echo
	done
fi
