#!/bin/bash

# This script demonstrates how to set up and use cron jobs in Linux
# Cron is a time-based job scheduler in Unix-like operating systems
# It allows you to schedule commands or scripts to run at specific times

# Example: A simple backup script that could be scheduled via cron
echo "Starting backup process..."
# Your backup commands would go here
echo "Backup completed at $(date)"

# How to set up this script as a cron job:
# 1. Make the script executable:
#    chmod +x cron.sh
#
# 2. Open the crontab editor:
#    crontab -e
#
# 3. Add a line in the following format:
#    * * * * * /path/to/cron.sh
#    | | | | |
#    | | | | +----- Day of week (0 - 6) (Sunday = 0)
#    | | | +------- Month (1 - 12)
#    | | +--------- Day of month (1 - 31)
#    | +----------- Hour (0 - 23)
#    +------------- Minute (0 - 59)
#
# Example cron schedules:
# Run every day at 2:30 AM: 30 2 * * * /path/to/cron.sh
# Run every Monday at 3 PM: 0 15 * * 1 /path/to/cron.sh
# Run every hour: 0 * * * * /path/to/cron.sh
#
# For more detailed information about cron and scheduling patterns,
# please refer to the basics.pdf file in this directory. 