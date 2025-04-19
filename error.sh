#!/bin/bash
set -x
set -e

trap 'echo "The file you wanted to create is already created"; exit 1' ERR

echo "Enter the file you want to create"
read file

if [ -f "$file" ]; then
  exit 1
fi

touch "$file"
echo "File has been created"

