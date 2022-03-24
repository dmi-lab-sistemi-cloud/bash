#!/bin/bash

# Utilizzo di "&&"" (and) e "||"" (or) per costruire condizioni complesse
# vedi "man test" per ulteriori dettagli sulle possibili condizioni

# condizioni sui file
[[ -x ./cond.sh ]] && echo 'cond.sh è eseguibile' || echo 'cond.sh non è eseguibile'

# confronto tra stringhe
s1="gino"
s2="pino"
[[ "$s1" == "$s2" ]] && echo "stringhe uguali" || echo "stringhe diverse"

# confronto tra valori numerici
a=3
b=5
[[ "$a" < "$b" && $a -lt $b ]] && \
    echo "sono in ordine come stringhe e come numeri" || \
    echo "non sono in ordine in almeno uno dei due casi"