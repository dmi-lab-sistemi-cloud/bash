#!/bin/bash

read -p "Scegli tra (1) gino (2) pino (3) tino: " NOME
case $NOME in

  "1"|"gino")
    echo "Scelto Gino"
    ;;
  
  "2"|"pino")
    echo "Scelto Pino"
    ;;

  "3"|"tino")
    echo "Scelto Tino"
    ;;

  *)
    echo "Non riconosciuto"
    ;;
esac