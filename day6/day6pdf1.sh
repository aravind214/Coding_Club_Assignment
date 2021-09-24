echo "1Q. Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n.?"
isPowerOf2 () {
    local n=$1 i=0
    for ((; n>1; n/=2, i++)); do :; done
    (($1 - (2 ** $i) == 0))
}

for n in {1..100}; 
do
 isPowerOf2 $n && echo $n; 
done

echo "****************************************************************"
echo " 2Q. Write a program that takes a command-line argument n and prints the nth harmonic number. Harmonic Number is of the form?"
echo "Enter a number : "
read n
sum=1
        for ((i = 1; i <= n; i++)) 
        do
           OP=1/$i
           sum = $((sum ))  
        done
  echo $sum 

echo "****************************************************************"
echo " 3Q. Write a program that takes a input and determines if the number is a prime.?"
echo  "Enter Number : "
read n
for((i=2; i<=$n/2; i++))
do
  ans=$(( n%i ))
  if [ $ans -eq 0 ]
  then
    echo "$n is not a prime number."
    exit 0
  fi
done
echo "$n is a prime number."
echo "****************************************************************"
echo " 4Q. Extend the program to take a range of number as input and output the Prime
Numbers in that range.?"

echo "Enter the number"
read N
echo "Enter the second number"
read M

echo "Prime numbers between $N and $M are"
for (( i=$N+1; i <= $M-1; i++ ))
do
count=0
for (( j=2; j <= $i-1; j++ )) 
do
if [ `expr $i % $j` = 0 ]  
then
count=1
break
fi
done
if [ `expr $count` = 0 ]
then
echo $i 
fi
done
echo "****************************************************************"

echo "5. Write a program that computes a factorial of a number taken as input. 5 Factorial – 5! = 1 * 2 * 3 * 4 * 5  ?"

echo -n "Enter a number: "
read num
factorial=1
for(( i=1; i<=num; i++ ))
do
  factorial=$[ $factorial * $i ]
done
echo "The factorial of $num is $factorial"
echo "****************************************************************"
echo "6Q. Write a program to compute Factors of a number N using prime factorization method.
Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
O/P -> Print the prime factors of number N.?"

echo "enter an integer:"
read input
if [ $input -lt 1 ];then
echo "not allowed!"
exit 1
fi
# find factors and prime

i=2
count=0
flag=0
for ((i;i<$input;i++));do
    
  if [ `expr $input % $i` -eq 0 ];then
      factor=$i

  for ((j=2;j<=`expr $factor / 2`;j++));do
      flag=0
      if [ `expr $factor % $j` -eq 0 ];then
      flag=1
      break
      fi
      j=`expr $j + 1`
  done
  if [ $flag -eq 0 ];then
  echo "[ $factor ]"
  count=1
  fi
  fi
  i=`expr $i + 1`
  done
  if [ $count -eq 0 ];then
  echo "no prime factors found except 1 and $input"
  fi

echo "or"
#prime factor
echo "enter a number n till you want to print the primefactors of all the numbers"
read n
declare -a arr

for((i=1;i<=$n;i++))
do
if(($n%$i == 0))
then
arr[$i]=$i
fi
done

echo "all prime factors of $n into array : ${arr[*]}"