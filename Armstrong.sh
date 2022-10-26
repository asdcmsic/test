#!/bin/bash

#Program to check a given number is armstrong or not

#ALGORITHM:
# Enter the given number.
# Separate the digit using the formula q=`expr $n % 10` and r=`expr $n % 10`.
# Calculate sum of cube of digits by the formula a=`expr $a + $r /* $r /* $r`.
# Compute the result with the given number.

read -p "Enter the number: " n

function ams
{
t=$n
s=0
b=0
c=10
while [ $n -gt $b ]
do
r=$((n % c))
i=$((r * r * r))
s=$((s + i))
n=$((n / c))
done
echo $s
if [ $s == $t ]
then
echo "$s is an Amstrong number"
else
echo "$s is Not an Armstrong number"
fi
}
result=`ams $n`
echo "$result"
