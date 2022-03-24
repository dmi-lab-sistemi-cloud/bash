#!/bin/bash

# Personalizzazione messaggio del prompt
PS3="Seleziona un pianeta (usando il numero): "

# il ciclo select continua ad essere eseguito fino a che non si chiama break
# di solito infatti va in combinazione con switch con un case di uscita
# REPLY e PS3 sono variabili proprie e usate da select
select pianeta in terra marte venere quit
do
  echo "Inserito $REPLY che corrisponde a: $pianeta"

  case $pianeta in
    terra)
      echo "Benvenuto sul pianeta Terra"
      ;;
    marte)
      echo "Benvenuto sul pianeta Marte"
      ;;
    venere)
      echo "Benvenuto sul pianeta Venere"
      ;;
    quit)
      break
      ;;
    *) 
      echo "Scelta non valida: $REPLY"
      ;;
  esac
done

# Esempio output
# 1) terra
# 2) marte
# 3) venere
# 4) quit
# Seleziona un pianeta (usando il numero): 1
# Inserito 1 che corrisponde a: terra
# Benvenuto sul pianeta Terra
# Seleziona un pianeta (usando il numero): 4
# Inserito 4 che corrisponde a: quit