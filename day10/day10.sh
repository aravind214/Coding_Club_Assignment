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
echo "Store above values in Dictionary : "
declare -A Arthimaticstore
Arthimaticstore[a+b*c]=$((a+b*c))
Arthimaticstore[a*b+c]=$((a*b+c))
Arthimaticstore[c+a/b]=$((c+a/b))
Arthimaticstore[a%b+c]=$((a%b+c))
for key in ${Arthimaticstore[@]};
do
  echo $key ; 
done 


  



