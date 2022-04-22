#!/bin/bash

start=100
end=0
goal=200
win=$((start+1))
lost=$((start-1))
while [[ $lost -ne $end || $win -ne $goal ]]
do
   x=$((RANDOM%2))
   if [ $x -eq 1 ]
   then

      echo "Wins" $win

   ((win++))
   else

      echo "Lost" $lost
   ((lost--))
   fi
done
