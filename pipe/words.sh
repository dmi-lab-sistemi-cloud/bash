#!/bin/bash

word_list=(gino pino nino tino)

for word in ${word_list[*]} #gino pino nino tino
do
	echo $word
done
