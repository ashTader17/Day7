#!/bin/bash
declare -a num

for (( i=1;i<11;i++ ))
do
   num[$i]=$((100+RANDOM%899))
done
for (( j=0;j<=11;j++ ))
do
   for ((k=0;k<=i;k++))
   do
      if [[ ${num[$k]} -gt ${num[$((k+1))]} ]]
      then
          x=${num[$k]}
	  num[$k]=${num[$((k+1))]}
          num[$((k+1))]=$x
      fi
   done
done
echo ${num[*]}
echo '2nd MIN :'${num[4]}
echo '2nd MAX :'${num[11]}
