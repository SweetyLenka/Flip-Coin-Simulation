#!/bin/bash -x 

for((i=0;i<10;i++))
do
   flipCoin=$((RANDOM%2))

   if [ $flipCoin -eq 1 ]
   then
			((Head++))

   elif [ $flipCoin -eq 0 ]
   then
         ((Tail++))
         
   fi
done

echo "HEAD HAS WON $Head Times "
echo "TAIL HAS WON $Tail Times"



