#!/bin/bash

function getInteger () {
	echo $((RANDOM))
}

for (( i=0; i<3; i++ ))
do
	threeIntegers[$i]=$(getInteger)
done

echo "Three integers are ${threeIntegers[@]}"

sum=0

for (( i=0; i<3; i++ ))
do
	sum=$(($sum+${threeIntegers[$i]}))
done

echo "their sum is $sum"
