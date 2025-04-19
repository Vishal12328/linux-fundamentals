#!/bin/bash
#environment variables
echo "Current user: $USER"
echo "Home directory: $HOME"
echo "Shell type: $SHELL"
echo "Current working directory: $PWD"

#user variables
echo "Enter your name:"
read user_name
echo "Hello, $user_name!"

#substitution of variables
current_date=$(date)
echo "Today is: $current_date"

