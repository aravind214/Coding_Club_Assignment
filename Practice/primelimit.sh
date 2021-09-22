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
 	
