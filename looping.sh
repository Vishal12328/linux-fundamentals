#!/bin/bash

for num in 1 2 3 4 5; do
    echo "Number: $num"
done

count=5
while [ $count -gt 0 ]; do
    echo "Countdown: $count"
    count=$((count - 1))
done
