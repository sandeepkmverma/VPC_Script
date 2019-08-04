#!/bin/bash
a=5 # example

for ((i = 0; i < a; i++)); do
  for ((j = i; j < a; j++)); do
    echo "$i $j"
  done
done
