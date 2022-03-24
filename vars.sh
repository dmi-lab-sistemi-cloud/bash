#!/bin/bash
# es. eseguire con ./vars.sh gino pino tino

echo $#                     # 3
echo $0                     # vars.sh
echo $1                     # gino
echo $*                     # gino pino tino
echo $@                     # gino pino tino
rm file_inesistente.txt     # errore (rm: file_inesistente.txt: No such file or director)
echo $?                     # exit code del comando precedente (1)
sleep 10 &                  # sleep in background (bg)
echo $!                     # id processo dell'ultimo comando lanciato in background (bg)
