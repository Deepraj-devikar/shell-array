#!/bin/bash

for (( i=1; i<=9; i++ ))
do
	arr[$(($i-1))]=$(($i*11))
done

echo "in the range of 0-100 numbers having same digit two times are ${arr[@]}"
