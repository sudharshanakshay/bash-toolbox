# safe_copy.sh
## Description
`safe_copy.sh` is a Bash script designed to safely copy files from a source directory to a destination directory. 
Before copying, it checks for the existence of the file in another specified directory to ensure there are no duplicates. 
This script also includes robust error handling to manage potential issues during the process, such as disk disconnections or file access problems.

## Usage

To run the script, use:

```bash
./safe_copy.sh path/to/check/directory path/to/copy/from/directory path/to/destination/directory
```

## Featues
* Existance Check: Ensures that the file does not already exists in the destination directory before copying.
* Size Verification: Retrives and displays the size of the file in human readle format for verification.
* Error Handling: Provides comprehensive error handling to manage and report issue during the file operations.

## Example

```bash
./safe_copy.sh /path/to/check /path/to/source /path/to/destination
```
In this example,the script will:
1. Check if each file in /path/to/source exists in /path/to/check.
2. If the file does not exist in /path/to/destination, it will be copied there.
3. If any errors occur during the process, they will be reported, and the script will exit gracefully.

## Sample Output
When you run the script, you will see output similar to this:

```bash
[*] /copy_dir/file1.txt
File size: 1K
[+] Copying file1.txt to /dest_dir
Validating...
Checking against /dest_dir/file1.txt
File size: 1K

[*] /copy_dir/file2.txt
File size: 2K
skiping.. file exists.

```

## Error Handling 
The script includes error handling to manage potential issues:

```bash
An error occurred: Failed to get size for /path/to/source/example.txt
An error occurred: Failed to copy /path/to/source/example.txt
An error occurred: Failed to get size for /path/to/check/example.txt
```
## Contributions:
Contributions are welcome! If you have any improvements, feel free to open a pull request.
