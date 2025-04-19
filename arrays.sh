#!/bin/bash

# This script demonstrates how to work with arrays in bash
# Arrays allow you to store multiple values in a single variable

# Declaring an array
fruits=("Apple" "Banana" "Orange" "Mango")

# Accessing array elements
echo "First fruit: ${fruits[0]}"
echo "Second fruit: ${fruits[1]}"

# Getting all elements
echo "All fruits: ${fruits[@]}"

# Getting array length
echo "Number of fruits: ${#fruits[@]}"

# Adding elements to array
fruits+=("Grape" "Pineapple")
echo "Updated fruits list: ${fruits[@]}"

# Removing elements from array
unset fruits[1]  # Removes Banana
echo "After removing second element: ${fruits[@]}"

# Associative arrays (requires bash 4.0 or higher)
declare -A person
person["name"]="John"
person["age"]=30
person["city"]="New York"

# Accessing associative array elements
echo "Name: ${person["name"]}"
echo "Age: ${person["age"]}"
echo "City: ${person["city"]}"

# Looping through array
echo "Looping through fruits:"
for fruit in "${fruits[@]}"; do
    echo "- $fruit"
done

# Looping through associative array
echo "Looping through person details:"
for key in "${!person[@]}"; do
    echo "$key: ${person[$key]}"
done 