filename="1.txt"

for char in {a..z}
do
    echo "${char} - `grep -io "${char}" ${filename} | wc -l`,"
done