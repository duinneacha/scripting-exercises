#!/bin/bash

# Aidan Dennehy R00145278
# Script to create some sample files

echo "Creating test files . ."
rm -r testfolder
rm -r copyfolder
mkdir copyfolder
mkdir testfolder
dmesg > testfolder/file1.txt
ls > testfolder/file2.txt
mkdir testfolder/anotherfolder
dmesg > testfolder/anotherfolder/filex.txt
dmesg >> testfolder/anotherfolder/filex.txt
ls >> testfolder/anotherfolder/filex.txt
mkdir testfolder/folder2
env > testfolder/folder2/filey.txt
ls > testfolder/folder2/filet.txt
echo "test files created!"


