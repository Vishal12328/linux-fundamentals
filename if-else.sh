#!/bin/bash

# This script demonstrates the use of if-elif-else statements in bash
# It classifies a person based on their age into three categories:
# 1. Minor (under 18)
# 2. Adult (18 to 59)
# 3. Senior citizen (60 and above)

# Prompt user to enter their age
echo "Enter your age:"
read age

# Check if age is less than 18
if [ $age -lt 18 ]; then
   echo "You are a minor."
# Check if age is between 18 and 59
elif [ $age -ge 18 ] && [ $age -lt 60 ]; then
   echo "You are an adult."
# If age is 60 or above
else
   echo "You are a senior citizen."
fi

