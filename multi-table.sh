#!/bin/sh
num1=$1
num2=$2

if [ -z $num1 ]
then
	echo "Invalid Input!!!"
	exit 0
fi

if [ -z $num2 ]
then
	echo "Invalid Input!!!"
	exit 0
fi

if [ $num1 -lt 0 ]
then
	echo "Parameter must be positive!!!"
	exit 0
fi

if [ $num2 -lt 0 ]
then
	echo "Parameter must be positive!!!"
	exit 0
fi

for i in $(seq 1 $num1)
do
	for j in $(seq 1 $num2)
	do
		product=`expr $i \* $j`
		printf "%d*%d=%d\t" $i $j $product
	done
	printf "\n"
done

exit 0
