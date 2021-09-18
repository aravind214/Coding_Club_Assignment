randomNum=$((RANDOM%3+1))

case $randomNum in
 1)
    echo "one"
  ;;
 2)
    echo "Two"
  ;;
 3)
    echo "Three"
  ;;
 *)
    echo "Something went wrong"
  ;;
esac
