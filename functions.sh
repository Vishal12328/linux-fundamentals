#!/bin/bash

# This script demonstrates how to create and use functions in bash
# Functions help organize code and make it reusable

# Basic function definition
function greet() {
    echo "Hello, $1!"
}

# Function with multiple parameters
function add_numbers() {
    local sum=$(( $1 + $2 ))
    echo "The sum of $1 and $2 is: $sum"
}

# Function with return value
function multiply() {
    local product=$(( $1 * $2 ))
    return $product
}

# Function that uses global variables
function update_counter() {
    ((counter++))
}

# Calling functions
greet "World"  # Calls greet function with "World" as argument
add_numbers 5 3  # Calls add_numbers with 5 and 3 as arguments

# Using function with return value
multiply 4 5
result=$?  # $? contains the return value of the last command
echo "The product is: $result"

# Using function with global variable
counter=0
update_counter
echo "Counter value: $counter"

# Function with default parameters
function say_hello() {
    local name=${1:-"User"}  # Uses "User" as default if no argument provided
    echo "Hello, $name!"
}

say_hello  # Uses default parameter
say_hello "Alice"  # Uses provided parameter 