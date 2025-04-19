#!/bin/bash

# Enable debugging mode - prints each command before execution
set -x

# Enable error handling - script stops if any command fails
set -e

# Set up error trap - this will execute if any command returns a non-zero status
trap 'echo "The file you wanted to create is already created"; exit 1' ERR

# Prompt user for input
echo "Enter the file you want to create"
read file

# Check if file already exists
if [ -f "$file" ]; then
  # Exit with status 1 if file exists (triggers the error trap)
  exit 1
fi

# Create the file and confirm its creation
touch "$file"
echo "File has been created"

