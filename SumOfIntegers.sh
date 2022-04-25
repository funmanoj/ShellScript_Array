#! /bin/bash -x

read -p "Enter the first number:" a
read -p "Enter the second number:" b
read -p "Enter the third number:" c

sum=$(($a+$b+$c))

if(($sum==0))
then
   echo "True"
else
   echo "False"
fi


