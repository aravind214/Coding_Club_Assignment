echo " Enter Input array elements : "
read -a arr
echo "Number of elements"  ${#arr[@]}

echo "Display array elements : "
for i in ${arr[@]}
do
   echo $i # or do whatever with individual element of the array
done 


