#!/bin/bash

for word in gino pino nino
do
    echo $word
done

times=5
for i in $(seq 1 $times)
do
   echo "$i "
done