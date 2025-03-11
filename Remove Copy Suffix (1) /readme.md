# Remove Copy Suffix Script

This script is designed to clean up filenames that have been automatically modified during file copying. Specifically, it removes the `(1)` suffix added when a file with the same name already exists in the destination folder. This happens commonly when you copy a file into a directory that already contains a file with the same name.

## Features
- **Removes `(1)` from filenames**: The script looks for files that have `(1)` appended to their names (a common result of file duplication) and removes this suffix.
- **Handles multiple files**: It works across all files in the specified directory.
- **Simple and Easy to Use**: With just a few commands, you can clean up filenames in your directories and avoid file duplication confusion.

## Installation

No installation required. Just download or clone the script to your desired directory.

```bash
cd Remove Copy Suffix (1)
sudo chmod +x ./remove_copy_suffix.sh
./remove_copy_suffix.sh
