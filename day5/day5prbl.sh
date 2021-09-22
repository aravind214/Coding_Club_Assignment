echo "1Q. Use Random Function (( RANDOM )) to get Single Digit"
rand=$(($RANDOM%10))
echo $rand
echo "***************************************************"
echo "2Q. Use Random to get Dice Number between 1 to 6"
rand=$(($RANDOM%6+1))
echo $rand
echo "***************************************************"
echo "3Q. Add two Random Dice Number and Print the Result"
 dice1=$(($RANDOM%6))
 echo $dice1
 dice2=$(($RANDOM%6))
 echo $dice2
 sum=$((dice1+dice2))
 echo "Sum : $sum"
echo "***************************************************"
echo "4Q. Write a program that reads 5 Random 2 Digit values , then find their
sum and the average"
randomNum1=$(($RANDOM%100))
echo $randomNum1
randomNum2=$(($RANDOM%100))
echo $randomNum2
randomNum3=$(($RANDOM%100))
echo $randomNum3
randomNum4=$(($RANDOM%100))
echo $randomNum4
randomNum5=$(($RANDOM%100))
echo $randomNum5
sum=$((randomNum1+randomNum2+randomNum3+randomNum4+randomNum5))
 echo "Sum : $sum"
 echo "Average : $(($sum/5))"
echo "***************************************************"
echo "5Q. Unit Conversion
a. 1ft = 12 in then 42 in = ? ft"
echo "Enter a number in (inch)"
read -p 'Please enter inches:' inches	

i2f=0.083333				

new_value=$(echo $inches*$i2f ) 	
echo "***********"
echo "$inches inches =" $new_value feet 

echo "***********"
echo "5Q. Unit Conversion
b. Rectangular Plot of 60 feet x 40 feet in meters"
echo "Enter  length of rectangle :"
read length
echo " Enter breadth of rectangle :"
read breadth
echo "Area of Rectangle :"$(($length * $breadth)) * 0.092903
