#!/bin/bash

for i in "$@"
do
  fact=1
  while [ $i -gt 1 ]
  do
    fact=$(expr $fact \* $i)
    i=$(expr $i - 1)
  done
  echo "Factorial of $1 is $fact"
   echo "Factorial of $2 is $fact"
done

