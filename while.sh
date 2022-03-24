#!/bin/bash

i=0

# output: 1 2 3 4
while [[ $i -lt 10 ]]
do
  echo -n "$i "
  ((i++))
  if [[ "$i" -eq '5' ]]; then
    break
  fi
done

echo ""