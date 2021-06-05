#!/bin/bash
declare -a arr
i=0
echo "enter array length"
read len

while [[ $i -lt $len ]]
do
   read num
   arr[i]=$num
   ((i++))
done

for ((i=0;i<=$len;i++))
do
  for ((j=0;i<=$len;j++))
  do
   for ((k=0;k<=$len;k++))
   do
     if [[ $((arr[$i]+arr[$j]+arr[$k])) -eq 0 ]]
     then
	echo ${arr[i]} ${arr[j]} ${arr[k]}
	exit 0
     fi
   done
  done
done
