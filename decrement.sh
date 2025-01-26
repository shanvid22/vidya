#!/bin/bash
num=$1
while[ $num -gt 0 ]
do
echo "$num"
num =`expr $num -1`
done
