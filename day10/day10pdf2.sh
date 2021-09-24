echo "enter a numbe until you want to flip the coin"
read n
head=0
tail=0

for((i=1;i<=$n;i++))
do
random=$((RANDOM%10))
echo $random
if(( $random == 1))
then
head=$(($head+1))
else
tail=$(($tail+1))
fi
done

if(($head>$tail))
then
echo "head wins $head times from tail $tail times"
else
echo "tail wins $tail times from head $head times"
fi