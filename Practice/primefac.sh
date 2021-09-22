echo "Enter a number"
read n
echo "factorial of n is " 
echo $n | factor 
st=echo $n | factor
 for fac in st
do 
  echo ${fac[@]}
done