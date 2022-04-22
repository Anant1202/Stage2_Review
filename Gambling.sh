#!/bin/bash

start=100
end=0
goal=200
won=0
lost=0
while [[ $start -ne $end && $start -ne $goal ]]
do
   x=$((RANDOM%2))
   if [ $x -eq 1 ]
   then

   	((won++))
		((start++))
   else

      ((lost--))
		((start--))
   fi
done

echo "Total win:"$won
echo "Total losses"$lost

if [ $start -eq $goal ]
then
	echo "Goal is reached, total money:$start"
else
	echo "End, total money:$start"
fi

