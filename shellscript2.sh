#!/bin/bash
echo " shell scripting is easy "
sed -n '4p' file1
sed -n '4p' file1 | wc -w
ls -lt
mkdir dir2
cd dir2
touch file5


