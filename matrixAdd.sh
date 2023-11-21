#!/bin/bash

echo "MATRIX A"
echo -n "Enter row: "
read r1
echo -n "Enter column: "
read c1

echo "MATRIX B"
echo -n "Enter row: "
read r2
echo -n "Enter column: "
read c2

if [[ $r1 -ne $r2 && $c1 -ne $c2 ]]
then
	echo "Matrix Addition not possible!"
else
	echo "Enter elements of MATRIX A: "
	for((i=0;i<r1;i++))
	do
		for((j=0;j<$c1;j++))
		do
			read A[$i$j]
		done
	done
	
	echo "Enter elements of MATRIX B: "
        for((i=0;i<r2;i++))
        do
                for((j=0;j<c2;j++))
                do
                        read B[$i$j]
                done
        done


	echo "Resultant matrix: "
        for((i=0;i<r1;i++))
        do
                for((j=0;j<c1;j++))
                do
			C[$i$j]=$(( ${A[$i$j]}+${B[$i$j]}  ))
			
			echo -n "${C[$i$j]} "
                done

		echo
        done



fi
