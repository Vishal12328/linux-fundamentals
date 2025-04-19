#!/bin/bash

# Enable debugging mode - prints each command before execution
set -x

# This script creates a simple logging system that:
# 1. Creates a daily log file
# 2. Appends timestamped messages to the log file

# Get current date in YYYY-MM-DD format
DATE="$(date +%Y-%m-%d)"
# Get current time in HH:MM:SS format
TIME="$(date +%H:%M:%S)"

# Define the directory where logs will be stored
LOGDIR="$HOME/bash_basics/daily_logs"
# Create the log directory if it doesn't exist
mkdir -p "$LOGDIR"

# First argument is the log message
INFO="$1"
# Create log filename using current date
LOGFILE="$LOGDIR/$DATE.log"

# Append the timestamped message to the log file
echo "$TIME -- $INFO" >> "$LOGFILE"
