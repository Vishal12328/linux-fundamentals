#!/bin/bash

# This script demonstrates different types of variables in bash:
# 1. Environment variables (predefined by the system)
# 2. User-defined variables
# 3. Command substitution variables

# Environment variables are predefined by the system and contain system information
echo "Current user: $USER"        # Shows the current logged-in user
echo "Home directory: $HOME"      # Shows the user's home directory path
echo "Shell type: $SHELL"         # Shows the current shell being used
echo "Current working directory: $PWD"  # Shows the present working directory

# User variables are created and assigned by the user
echo "Enter your name:"
read user_name                    # Reads input from the user and stores it in user_name
echo "Hello, $user_name!"        # Uses the stored value in a greeting

# Command substitution allows storing the output of a command in a variable
current_date=$(date)             # Stores the current date and time in current_date
echo "Today is: $current_date"   # Displays the stored date and time

