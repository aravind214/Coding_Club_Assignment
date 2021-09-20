# dice1=$(($RANDOM%6))
# echo $dice1
# dice2=$(($RANDOM%6))
# echo $dice2
# sum=$((dice1+dice2))
# echo "Sum : $sum"
echo "***************************************************"

# for (( i=1; i <= 5; i++ ))
# do
 # echo "Random number # $i:"$(($RANDOM%20+10))
# done
echo "***************************************************"

read -p 'Please enter inches:' inches	## User input (int or float)

i2f=0.083333				## 1 Inch = 0.083333 foot 

new_value=$(echo $inches*$i2f ) 	## echo the arithmetic expression to the bc calculator.
echo "***************************************************"
echo "$inches inches =" $new_value feet 

echo "***************************************************"
echo "Enter  length of rectangle :"
read length
echo " Enter breadth of rectangle :"
read breadth
echo "Area of Rectangle :"$(($length * $breadth))