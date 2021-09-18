echo "Select an option in an Arthimatic Operations  : "
echo "1. + 2. - 3. * 4. /"
read operations
echo "Enter A Value : "
read A
echo "Enter B Value : "
read B
output=0

case $operations in
  1)
        echo "Adding Operation"
        output=$((A+B))
    ;;
  2)
        echo "Subtract Operation"
        output=$((A-B))
    ;;
  3)
        echo "Multiply Operation"
        output=$((A*B))
    ;;
  4)
        echo "div Operation"
        output=$((A/B))
    ;;
  *)
        echo "Invalid Operation"
    ;;
esac

echo $output
