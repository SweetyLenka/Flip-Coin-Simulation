#!/bin/bash -x 

while [[ $HEAD -ne 21 && $TAIL -ne 21 ]]
do
	FlipCoin=$((RANDOM%2))
	if [ $FlipCoin -eq 1 ]
	then
		((HEAD++))
	else
		((TAIL++))
	fi
done

if [ $HEAD -eq $TAIL ]
then
	while [[ $(($HEAD-$TAIL)) -lt 2 && $(($TAIL-$HEAD)) -lt 2 ]]
	do
		FlipCoin=$((RANDOM%2))
   	if [ $FlipCoin -eq 0 ]
   	then
      	((HEAD++))
   	else
      	((TAIL++))
   	fi
	done
	if [ $HEAD -gt $TAIL ]
	then
		echo HEAD WINS BY $(($HEAD-$TAIL))
	else
		echo TAIL WINS BY $(($TAIL-$HEAD))
	fi

elif [ $HEAD -gt $TAIL ]
then
	echo HEAD WINS BY $(($HEAD-$TAIL))
else
	echo TAIL WINS BY $(($TAIL-$HEAD))
fi
	
