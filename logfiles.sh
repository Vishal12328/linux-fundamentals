#!/bin/bash
set -x

DATE="$(date +%Y-%m-%d)"
TIME="$(date +%H:%M:%S)"
LOGDIR="$HOME/bash_basics/daily_logs"
mkdir -p "$LOGDIR"

INFO="$1"
LOGFILE="$LOGDIR/$DATE.log"

echo "$TIME -- $INFO" >> "$LOGFILE"
