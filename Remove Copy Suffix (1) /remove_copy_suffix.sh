#!/bin/bash

read -p "Enter the directory path: " directory

if [[ ! -d "$directory" ]]; then
echo "Directory does not exists."
exit 1
fi

for file in "$directory"/*; do
if [[ "$file" == *"(1)"* ]]; then
new_name=$(echo "$file" | sed 's/ (1)//g' )
mv "$file" "$new_name"
echo "Renamed: $file -> $new_name"
echo ""
fi
done
