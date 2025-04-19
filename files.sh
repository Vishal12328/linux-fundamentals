#!/bin/bash

filename=$1
echo "$filename "
if [ -f $filename ]; then
    rm $filename
    echo " $filename: File deleted."
else
    echo "File not found."
fi
