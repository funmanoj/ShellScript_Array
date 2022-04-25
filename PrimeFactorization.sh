#! /bin/bash -x

read -p "Enter the number:" num

a=$num
b=2

divide(){
while [ $(($a/$b)) -eq 0 ]
do
   if [ $a -eq 1 ]
   then
   echo "factors are:$factor"
   exit 0
   else
      a=$(($a/$b))
      arr[$b]=$b
   fi
done
}
divide

for `i in 3 5 7 11 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 > $a`
do
  b=$i
  divide
done
echo ${arr[@]}
