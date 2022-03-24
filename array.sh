#!/bin/bash

names=(gino pino tino)
echo ${names[0]}
echo ${names[1]}
echo ${names[2]}

declare -a names2
names[0]=gino
names[1]=pino
names[2]=tino
echo ${names[@]}