#!/bin/bash

declare -A Singlet


echo "----------UC 1-----------"
x=$((RANDOM%2))
if [ $x -eq 1 ]
then 
	echo "Head"
else
	echo "Tail"
fi

echo "-------------UC 2----------"
for ((i=o;i<10;i++))
do
	x=$((RANDOM%2))
	if [ $x -eq 1 ]
	then
   	Singlet[$i]="Head"
	else
   	Singlet[$i]="Tail"
	fi

done
echo "Singlet Combination:"${Singlet[@]}

echo "--------------UC 3--------------"
for ((i=o;i<10;i++))
do
	x=$((RANDOM%2))
	y=$((RANDOM%2))
	if [ $x -eq 1 ]
	then
		if [ $y -eq 1 ]
		then
			Doublet[$i]=" H-H "
		else
			Doublet[$i]=" H-T "
		fi
	else [ $x -eq 0 ]

		if [ $y -eq 0 ]
		then
			Doublet[$i]=" T-T "
		else
			Doublet[$i]=" T-H "
		fi
	fi

done 
echo "Doublet Combination "${Doublet[@]}

echo "----------UC 5----------------"
