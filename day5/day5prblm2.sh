echo "1Q. Write a program that reads 5 Random 3 Digit values and then outputs the minimumand the maximum value ?"

random1=$(((RANDOM%99)+100))
random2=$(((RANDOM%9)+100))
random3=$(((RANDOM%99)+100))
random4=$(((RANDOM%99)+100))
random5=$(((RANDOM%99)+100))
echo "Ans :" $random1; echo $random2; echo $random3; echo $random4; echo $random5
if (( ($random1>$random2) && ($random1>$random3) && ($random1>$random4) && ($random1>$random5) )); then
        echo "maximum number is $random1"
elif (( ($random2>$random1) && ($random2>$random3) && ($random2>$random4) && ($random2>$random5) )); then
        echo "maximum number is $random2"
elif (( ($random3>$random1) && ($random3>$random2) && ($random3>$random4) && ($random3>$random5) )); then
        echo "maximum number is $random3"
elif (( ($random4>$random1) && ($random4>$random3) && ($random4>$random2) && ($random4>$random5) )); then
        echo "maximum number is $random4"
else
        echo "maximum number is $random5"
fi

#minimun value
if (( ($random1<$random2) && ($random1<$random3) && ($random1<$random4) && ($random1<$random5) )); then
        echo "minimum number is $random1"
elif (( ($random2<$random1) && ($random2<$random3) && ($random2<$random4) && ($random2<$random5) )); then
        echo "minimum number is $random2"
elif (( ($random3<$random1) && ($random3<$random2) && ($random3<$random4) && ($random3<$random5) )); then
        echo "minimum number is $random3"
elif (( ($random4<$random1) && ($random4<$random3) && ($random4<$random2) && ($random4<$random5) )); then
        echo "minimum number is $random4"
else
        echo "minimum number is $random5"
fi
echo "****************************************************************"

echo "2Q. Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise...?"
echo "Ans :"
read -p " Enter Date:-" date
read -p " Enter Month:-" Month

if (( ($Month <=6  & $date <= 20) ))
then
        echo $Month $date "True";

elif (( ($Month >= 3 & $Month < 6) & ($date<20)  ))
then
        echo $date $Month "True";
else
        echo "False";
fi
echo "******************************************************************"

echo "3Q. Write a program that takes a year as input and outputs the Year is a Leap Year or nota Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless divisible by 400...?"
echo "Ans :"
echo "Enter the year (YYYY)"
read year
if [ $((year % 4)) -eq 0 ]
then
  if [ $((year % 100)) -eq 0 ]
    then
    if [ $((year % 400)) -eq 0 ]
          then
        echo "its a leap year"
    else
           echo "its not a leap year"
    fi
  else
  echo "Its a leap year"
  fi
else
 echo "its not a leap year"
fi
echo "******************************************************************"
echo "4Q. Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly...?"
echo "Ans :"
FLIP=$(($(($RANDOM%10))%2))
if [ $FLIP -eq 1 ];then
    echo "heads"
else
    echo "tails"
fi

echo "****************************************************************"
echo "************************** if-elif-else *****************************"

echo "2Q. Read a Number and Display the week day (Sunday, Monday,...)?"

echo "Ans : ""Enter a number"
read num
  if [[ $num == 1 ]]
  then
      echo "Monday"
  elif [[ $num == 2 ]]
  then
      echo "Tuesday"
  elif [[ $num == 3 ]]
  then
      echo "Wednesday"
  elif [[ $num == 4 ]]
  then
      echo "Thursday"
  elif [[ $num == 5 ]]
  then
      echo "Friday"
  elif [[ $num == 6 ]]
  then
      echo  "Saturday"
  elif [[ $num == 7 ]]
  then
      echo "Sunday"

  else
      echo "Invalid day number"
  fi
echo "****************************************************************"

echo "3Q. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...? "

echo "Ans : " "Enter a number"
read num
  if [[ $num == 1 ]]
  then
      echo "Unit"
  elif [[ $num == 10 ]]
  then
      echo "Ten"
  elif [[ $num == 100 ]]
  then
      echo "Hundred"
  elif [[ $num == 1000 ]]
  then
      echo "Thousand"
  else
      echo "Invalid user input number"
  fi
echo "****************************************************************"

echo "1Q.  Read a single digit number and write the number in word ?"
echo "Enter a number"
read num
  if [[ $num == 1 ]]
  then
      echo "one"
  elif [[ $num == 2 ]]
  then
      echo "Two"
  elif [[ $num == 3 ]]
  then
      echo "Three"
  elif [[ $num == 4 ]]
  then
      echo "Four"
  elif [[ $num == 5 ]]
  then
      echo "Five"
  elif [[ $num == 6 ]]
  then
      echo "Six"
  elif [[ $num == 7 ]]
  then
      echo "Seven"
  elif [[ $num == 8 ]]
  then
      echo "Eight"
  elif [[ $num == 9 ]]
  then
      echo "Nine"
  else
      echo "Invalid Single digit input number"
  fi
echo "****************************************************************"

echo "4Q.  Enter 3 Numbers do following arithmetic operation and find the one that is maximum and minimum
1. a + b * c    3. c + a / b
2. a % b + c   4. a * b + c  "

echo "Enter first number"
read a
echo "Enter second number"
read b
echo "Enter third number"
read c
echo "Compute a+b*c is" $((a+b*c))
echo "Compute a*b+c is" $((a*b+c))
echo "Compute c+a/b is" $((c+a/b))
echo "Compute a%b+c is" $((a%b+c))
echo "Show above values  : "
declare -A Arthimaticstore
Arthimaticstore[a+b*c]=$((a+b*c))
Arthimaticstore[a*b+c]=$((a*b+c))
Arthimaticstore[c+a/b]=$((c+a/b))
Arthimaticstore[a%b+c]=$((a%b+c))
for key in ${Arthimaticstore[@]};
do
echo $key ; 
done
echo "this is first "${key[0]}
echo "this is first "${key[1]}
echo "this is first "${key[2]}
echo "this is first "${key[3]}

if (( (${key[0]}<${key[1]}) && (${key[0]}<${key[2]}) && (${key[0]}<${key[3]}) ));
then
    echo "minimum value is ${key[0]} "
elif (( (${key[1]}<${key[0]}) && (${key[1]}<${key[2]}) && (${key[1]}<${key[3]}) ));
then
    echo "minimum value is "${key[1]}
elif (( (${key[2]}<${key[0]}) && (${key[2]}<${key[1]}) && (${key[2]}<${key[3]}) ));
then
    echo "minimum value is "${key[2]}
else 
   echo "minimum value is "${key[3]}
fi

echo "****************************************************************"
echo "************************** case *********************************"

echo "1Q. Read a single digit number and write the number in word using Case ?"

echo -n "Enter number : "
read n
 
len=$(echo $n | wc -c)
len=$(( $len - 1 ))
 
echo "Your number $n in words : "
for (( i=1; i<=$len; i++ ))
do
   # get one digit at a time
    digit=$(echo $n | cut -c $i)
   # use case control structure to find digit equivalent in words 
    case $digit in
        0) echo -n "zero " ;;
        1) echo -n "one " ;;
        2) echo -n "two " ;;
        3) echo -n "three " ;;
        4) echo -n "four " ;;
        5) echo -n "five " ;;
        6) echo -n "six " ;;
        7) echo -n "seven " ;;
        8) echo -n "eight " ;;
        9) echo -n "nine " ;;
    esac	
done

echo "*******************************************************************"

echo "2Q. Read a Number and Display the week day (Sunday, Monday,...)?"

echo "enter a number"
read n
case $n in
1) echo "Sunday" ;;
2) echo "Monday" ;;
3) echo "Tuesday" ;;
4) echo "Wednesday" ;;
5) echo "Thursday" ;;
6) echo "Friday" ;;
7) echo "Saturday" ;;
*) echo "enter value between 1 to 7" ;;
esac

echo "*******************************************************************"

echo "3Q. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...?"

echo "enter a number"
read n
case $n in
1) echo "Unit" ;;
10) echo "Ten" ;;
100) echo "Hundred" ;;
1000) echo "Thousand" ;;
10000) echo "Ten Thousand" ;;
*) echo "Invalid Input" ;;
esac

echo "*******************************************************************"


