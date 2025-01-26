#!/bin/bash

for i in "$@"
do
  fact=1
  while [ $i -gt 1 ]
  do
    fact=$(expr $fact \* $i)
    i=$(expr $i - 1)
  done
  echo "Factorial of $i is $fact"
done

