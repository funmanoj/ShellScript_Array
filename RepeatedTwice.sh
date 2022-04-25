#! /bin/bash -x

for ((i=1; i<=100; i++))
do
if [ $i -ge 10 ]
then
a=$i
rem=0
rev=""
temp=$a
while [ $a -gt 0 ]
do
        rem=$(( $a % 10 ))
        a=$(( $a / 10 ))
        rev=$( echo ${rev}${rem} )
done
if [ $temp -eq $rev ]
then
        arr[$i]=$i
fi
fi
done
echo "${arr[@]}"
