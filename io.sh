#!/bin/bash

echo "Benvenuto!"                       # stampa di una stringa nello standard output

read -p "inserisci: " str               # lettura di una stringa dallo standard input (es. input da tastiera)
echo "letto: $str"

echo "riga_1" > file.txt                # redirigo lo standard output nel file
echo "riga_2" >> file.txt               # redirigo lo standard output in append al file

echo "gino" 1> out.txt                  # redirigo lo standard output nel file
rm file_inesistente.txt 2> err.txt      # redirigo lo standard error nel file
rm file_inesistente.txt &> out_err.txt  # redirigo sia lo standard error che lo standard output su file

wc -l < file.txt                        # invio il contenuto del file nello standard input del comando (output: 2)

read -p "inserisci: " str < file.txt    # leggo solo la prima riga
echo "letta $str"                       # output: letta riga_1

cat file.txt | grep "_2" | wc -l        # uso la pipe per concatenare più comandi (output: 1)

## Clean
echo "[*] stampo contenuto file.txt prima di eliminarlo"
cat file.txt
rm file.txt
echo ""

echo "[*] stampo contenuto out.txt prima di eliminarlo"
cat out.txt
rm out.txt
echo ""

echo "[*] stampo contenuto err.txt prima di eliminarlo"
cat err.txt
rm err.txt
echo ""

echo "[*] stampo contenuto out_err.txt prima di eliminarlo"
cat out_err.txt
rm out_err.txt
echo ""