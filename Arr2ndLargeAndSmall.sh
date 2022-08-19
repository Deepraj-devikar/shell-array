#!/bin/bash

function threeDigVal () {
	echo $((RANDOM%900+100))
}

# make array with 10 3 digit values
for (( i=0; i<10; i++ ))
do
	arr[$i]=$(threeDigVal)
done

echo "Array is ${arr[@]}"

# performed selection sort
for (( i=0; i<9; i++ ))
do
	min_ind=$i
	for (( j=$i+1; j<10; j++ ))
	do
		if [ ${arr[$j]} -lt ${arr[$min_ind]} ]
		then
			min_ind=$j
		fi
	done
	tmp=${arr[$i]}
	arr[$i]=${arr[$min_ind]}
	arr[$min_ind]=$tmp
done

echo "Second largest element is ${arr[8]} and second smallest element is ${arr[1]}"
