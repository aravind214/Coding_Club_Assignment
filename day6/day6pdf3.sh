echo "1Q. Help user find degF or degC based on their Conversion Selection. Use Case Statement and ensure that the inputs are within the Freezing Point (0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
a. degF = (degC * 9/5) + 32
b. degC = (degF – 32) * 5/9?"

echo "*** Converting between the different temperature scales ***"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read selectchoice

if [ $selectchoice -eq 1 ]
then
echo -n "Enter temperature (C) : "
read temp_C
# formula Tf=(9/5)*Tc+32
temp_f=$(( ((9/5) * $temp_C) + 32 ))
echo "$temp_C C = $temp_f F"

elif [ $selectchoice -eq 2 ]
then
echo -n "Enter temperature (F) : "
read temp_f
# formula Tc=(5/9)*(Tf-32)
temp_C=$(( ((($temp_f-32) * 5)/9) ))
echo "$temp_f F = $temp_C C"
else
echo "Please select 1 or 2 only otherwise it will show error"
exit 1
fi

echo "( or )"

echo "convertion of farhenite to celcius or celcius to fahrehnite"
echo "enter choice 1 for fahrenite and 2 for celcius temperature"
read choice
function convert_farahenite_to_celsius_viceversa
{
case $choice in
1)
read -p "enter temperature in farhenite(F): degf"
temp_c=$(( ((($degf-32) * 5)/9) ))
echo "$degf F = $temp_c C";;
2)
read -p "enter temperature in celcius(C) : degc"
temp_f=$(( ((9/5) * $degc) + 32 ))
echo "degc C = $temp_f F";;
*)
echo "Sorry, you have to choice between 1 or 2";
echo "exit"
esac
echo $choice
}
convert_farahenite_to_celsius_viceversa 




echo "*****************************************************************"
echo "2Q. Write a function to check if the two numbers are Palindromes?"
echo "Enter the number"
read n
function pal
{
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $number -eq $reverse ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}
r=`pal $n`
echo "$r"

echo "or"

echo "enter number"
read num
function prime
{
for((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
}
 


function palindrome
{
sum=0
rev=$num
while [[ num -gt 0 ]]
do
rem=$(( $num % 10 ))
sum=$(( $sum * 10 + $rem ))
#echo "sum is $sum"
num=$(( $num / 10 ))
#echo "num is $num"
done
if (( $rev  == $sum ))
then
echo "$rev is palindrome"
else
echo "$rev is not palindrome"
fi
}

p=`palindrome $number`
echo "$p"
r=`prime $number`
echo "$r"

if [[ $p -eq $r ]]
then 
echo "yes,the palindrome number is a prime number"
else
echo "No,the palindrome number is not a prime number"
fi 
echo "palindrom with reverse"
n=12321
rev=$(echo $n | rev)
if [ $n -eq $rev ]; then
   echo "Number is palindrome"
else
   echo "Number is not palindrome"
fi
 
