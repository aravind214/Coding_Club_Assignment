echo "1Q. Write a program that takes a command-line argument n and prints a
table of the powers of 2 that are less than or equal to 2^n till 256 is reached..?" 

echo "Power of Two upto 256 : type second input is 8"
echo "Enter an integer for the base"
read m
echo "Enter Enter a positive integer for the power"
read n
c=$(($m**$n))
echo " "
echo "$m raised to the power of $n is: $c"
echo "****************************************************************"

echo "3Q. Extend the Flip Coin problem till either Heads or Tails wins 11 times.?" 

 Result=$((RANDOM%2+1))
headcount=0
tailcount=0
i=1
while [ $i -lt 12 ]
do
if [[ ${Result} -eq 1 ]]; then
    echo HEADS
    #echo $i
     headcount=$(($headcount + $i ))
     echo "No of Heads :" $headcount

elif [[ ${Result} -eq 2 ]]; then
    echo TAILS
     tailcount=$(($tailcount + $i ))
     echo "No of Tails :" $tailcount

fi
i=`expr $i + 1`
#echo $i
done

