
#!/bin/bash
echo 'enter a number'
read num
declare -a fact
j=0
for (( i=2; i<=$num; i++ ));do
    while [ $((num%$i)) == 0 ];do
        fact[j]=$i
        num=$((num/$i))
	((j++))
    done
done
echo ${fact[@]}
