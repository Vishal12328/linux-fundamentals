#!/bin/bash

# This script demonstrates two types of loops in bash: for loop and while loop

# For loop example: Iterates through a list of numbers
for num in 1 2 3 4 5; do
    echo "Number: $num"
done

# While loop example: Counts down from 5 to 1
count=5
while [ $count -gt 0 ]; do
    echo "Countdown: $count"
    count=$((count - 1))
done
