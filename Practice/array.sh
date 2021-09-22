fruits=("apples" "mango" "papaya" "orange" "grapes")
echo ${fruits[*]}
echo ${#fruits[*]}
echo ${fruits[4]}
echo "Before Adding New Fruit" 
echo ${fruits[*]}
fruits[5]="watermelon"
echo "After Adding New Fruit" 
echo ${fruits[*]}
