#!/bin/bash

function threeDigVal () {
	echo $((RANDOM%900+100))
}

for (( i=0; i<10; i++ ))
do
	arr[$i]=$(threeDigVal)
done

firstLarge=${arr[0]}
firstSmall=${arr[0]}
secondLarge=100
secondSmall=999

for (( i=1; i<10; i++ ))
do
	if [ ${arr[$i]} -gt $firstLarge ]
	then
		secondLarge=$firstLarge
		firstLarge=${arr[$i]}
	elif [ ${arr[$i]} -gt $secondLarge ]
	then
		secondLarge=${arr[$i]}
	fi

	if [ ${arr[$i]} -lt $firstSmall ]
	then
		secondSmall=$firstSmall
		firstSmall=${arr[$i]}
	elif [ ${arr[$i]} -lt $secondSmall ]
	then
		secondSmall=${arr[$i]}
	fi
done

echo "Array is ${arr[@]}"
echo "Second largest element is $secondLarge and second smallest element is $secondSmall"
