
echo "Enter values for array"
read array


for i in "${array[@]}"
do
  echo "inputed elements are "$i
    if [[ ( "${array[$i]}" == 5 || "${array[$i]}"  == 7 ) ]]
    then
        v = 'echo $i | grep dd'
        if [ "$v" != "" ]
        then
            echo $v
            sed -i "s/$v/lalat/g"  $i
        fi
    fi
done