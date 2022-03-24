#!/bin/bash

read -p "Inserisci un numero: " VAR

if [[ $VAR -gt 10 ]]
then
  echo "Il numero è maggiore di 10."
elif [[ $VAR -eq 10 ]]
then
  echo "Il numero è uguale a 10."
else
  echo "Il numero è minore di 10."
fi