#! /bin/bash -x

func() {
randomValue=$((RANDOM%900+100))
echo $randomValue
array[$i]=$randomValue
}

for((i=1;i<=10;i++))
do
func
done
echo "${array[@]}"

max(){
base=${array[1]}
for i in ${array[@]}
do
if [ $base -lt $i ]
then
   base=$i
fi
done
echo "Maximum number is: $base"
}
max

