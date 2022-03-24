#!/bin/bash

# Questo è un commento
MONDO="World"                   # dichiarazione di una variabile
echo "Hello $MONDO"             # $MONDO viene sostituita con il valore della variabile MONDO
echo "Today: `date +%d/%m/%Y`"  # il comando tra apici inversi viene sostituito con il suo risultato: `comando`
echo "Today: $(date +%d/%m/%Y)" # analogo al precedente per sostituire il comando con il suo risultato: $(comando) 
echo 'Hello `echo $MONDO`'      # tra apici singoli non vengono valutati i caratteri speciali come $ e `
echo "Hello"; echo "$MONDO"     # più comandi possono essere separati da ; 

# Output
# Hello World
# Today: 15/07/2021
# Today: 15/07/2021
# Hello `echo $MONDO`
# Hello
# World