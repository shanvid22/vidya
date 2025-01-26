#!/bin/bash
if [ $# -ne 3 ]
then
echo " please pass three arguments otherwise script will not work "
exit 1
fi
if [ $1 -gt $2 ] && [ $1 -gt $3 ]
then
echo " $1 is greater among three numbers "
elif [ $2 -gt $1 ] && [ $2 -gt $3 ]
then
echo " $2 is greater among three numbers "
else
echo " $3 is greater among three numbers "
fi
