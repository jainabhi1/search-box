find /home/abhishek -name '*.txt' | while read line; do
    echo $line >>hello2.txt
done
