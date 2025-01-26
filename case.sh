#!/bin/bash

echo "below is the menu"
echo -e "1)searchword\n2)checkname\n3)find file\n4)create link\n5)edit file\n6)exit\n"
echo "enter option you want from above menu"
read opt

case $opt in 
	1) echo "searching the given patterni"
		read string
		grep  -r -i -l $string * > list
		if [ $? -eq 0 ]
		then 
			echo "$string is present in below files"
			cat list
		else
			echo "$string is not found"
		fi
		;;
	2) echo "check weather the given name is file or directory"
		   echo "enter the name of file or directory"
		   read name 
		   if [ -f $name ]; then
			   echo "$name is a file"
		   else
			   echo "$name is a directoryi"
		   fi
			;;
		   
	3) echo "enter the file name to find the location of the file"
		   read file
		   sudo find / -name $file * > location
		   if [ $? -eq 0 ];then
			   echo "$file is present in below location"
			   cat location
		  else
			  echo "Sfile is not found"
		   fi
		   ;;
	4) echo "Enter the file name, to which you need to create soft link"
		  read linkname
		  read filename
		 if [ -L $linkname ]; then
			 echo "$linkname already exists"
		 else
			 ln -s "$filename" "$linkname"
		 fi
		 ;;
	 5) echo "enter the file name"
		 read file
		 vim $file
		 ;;
	 6) exit
		 ;;
 esac
