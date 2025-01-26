#!/bin/bash

echo "Below is the menu:"
echo -e "1) Search word\n2) Check name\n3) Find file\n4) Create link\n5) Edit file\n6) Exit\n"
echo "Enter the option you want from the above menu:"
read opt

case $opt in
    1) echo "Searching the given pattern"
       read string
       grep -r -i -l "$string" * > list
       if [ $? -eq 0 ]; then
           echo "$string is present in the below files:"
           cat list
       else
           echo "$string is not found"
       fi
       ;;
    2) echo "Check whether the given name is a file or directory"
       echo "Enter the name of the file or directory:"
       read name
       if [ -f "$name" ]; then
           echo "$name is a file"
       elif [ -d "$name" ]; then
           echo "$name is a directory"
       else
           echo "$name does not exist"
       fi
       ;;
    3) echo "Enter the file name to find the location of the file:"
       read file
       sudo find / -name "$file" > location
       if [ $? -eq 0 ]; then
           echo "$file is present in the below location:"
           cat location
       else
           echo "$file is not found"
       fi
       ;;
    4) echo "Enter the name of the symbolic link to create:"
       read linkname
       echo "Enter the name of the target file:"
       read filename
       if [ -L "$linkname" ]; then
           echo "Symbolic link '$linkname' already exists"
       else
           ln -s "$filename" "$linkname"
           echo "Symbolic link created: $linkname -> $filename"
       fi
       ;;
    5) echo "Enter the file name to edit:"
       read file
       vim "$file"
       ;;
    6) exit
       ;;
    *) echo "Invalid option. Please select a valid menu option."
       ;;
esac

