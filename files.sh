#!/bin/bash

# This script demonstrates basic file operations in bash
# It takes a filename as a command-line argument and attempts to delete it

# Store the first command-line argument in filename variable
filename=$1
echo "$filename "

# Check if the file exists
if [ -f $filename ]; then
    # If file exists, delete it
    rm $filename
    echo " $filename: File deleted."
else
    # If file doesn't exist, display error message
    echo "File not found."
fi
