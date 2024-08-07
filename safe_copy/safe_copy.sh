#!/bin/bash

if [ $# -ne 3 ]; then
	echo "Usage: $0 check_dir copy_dir dest_dir"
	exit 1
fi

# Directory paths from command line arguments.

CHECK_DIR="$1"
COPY_DIR="$2"
DEST_DIR="$3"

check_success() {
	if [ $? -ne 0 ]; then 
		echo "An error occurred: $1"
		exit 1
	fi
}

for FILE in "$COPY_DIR"/*; do
	echo
	if [ -f "$FILE" ]; then
	
		# attempt to get the file size in human-readable format
		FILE_SIZE=$(du -h "$FILE" | cut -f1)
		check_success "Failed to get size for $FILE"
		
		echo "[*] $FILE"
		echo "File size: $FILE_SIZE"
		
		CHECK_FILE="$CHECK_DIR/$(basename "$FILE")"
		DEST_FILE="$DEST_DIR/$(basename "$FILE")"
		
		# make copy if the FILE doesn't exists
		if [ ! -f "$CHECK_FILE" ]; then
			echo "[+] Copying $(basename "$FILE") to $DEST_DIR"
			cp "$FILE" "$DEST_FILE"
			check_success "Failed to copy $FILE"
				
		else 
			echo "skiping.. file exits."
		fi
		
		# validate the FILE size
		echo "Validating..."
		if [ -f "$DEST_FILE" ]; then
			echo "Checking against $DEST_FILE"
			CHECK_FILE_SIZE=$(du -h "$DEST_FILE" | cut -f1)
			check_success "Failed to get size for $DEST_FILE"
			echo "File size:  $CHECK_FILE_SIZE"
		else 
			echo "File doesn't exist"
	fi
	fi
done	


