#! /bin/bash -x

for((i=1;i<=10;i++))
do
randomValue=$((RANDOM%900+100))
arr[$randomValue]=$randomValue
echo $randomValue
done
echo "Sorted array ${arr[@]}"

max(){
base=0
for i in ${arr[@]}
do
if [ $base -lt $i ]
then
   base=$i
fi
done
echo Maximum number is: $base"
}
echo
max
second=0
for i in ${arr[@]}
do
if [ $i -ne $base ]
then
if [ $second -lt $i ]
then
   second=$i
fi
fi
done
echo "Second maximum number is:$second"

min(){
basemin=$base
for i in ${arr[@]}
do
if [ $basemin -gt $i ]
then
   basemin=$i
fi
done
echo "Minimum number is:$basemin"
}
min
secondmin=$base
for i in ${arr[@]}
do
if [ $i -ne $basemin ]
then
if [ $secondmin -gt $i ]
then
   secondmin=$i
fi
fi
done
echo "Second Minimum number is:$secondmin"
}


