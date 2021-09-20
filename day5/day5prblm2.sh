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
echo""
echo "************************************************************"
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
echo""
echo "************************************************************"
echo -n "Enter a year:"
read year_checker
if [ `expr $year_checker % 4` -eq 0 ]
then
	echo "$year_checker is a leap year"
else
	echo "$year_checker is not a leap year"
fi
echo "************************************************************"
echo "Enter a number"
read num
if[ $num -eq 1 ]
then
   echo "one"
elif[ $num -eq 2 ]
then
   echo "Two"
elif[ $num -eq 3 ]
then
   echo "Three"
elif[ $num == 4 ]
then
   echo "Four"
elif[ $num -eq 5 ]
then
   echo "Five"
elif[ $num -eq 6 ]
then
   echo "Six"
elif[ $num -eq 7 ]
then
   echo "Seven"
elif[ $num -eq 8 ]
then
   echo "Eight"
elif[ $num -eq 9 ]
then
   echo "Nine"
fi
