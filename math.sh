#!/bin/bash
b=5
c=2

# le espressioni aritmetiche vengono valutate se delimitate da una coppia di doppie parentesi tonde
((a=($b+3)/$c))
echo $a         # 4

# risultato analogo al precedente
a=$(( ($b+3)/$c ))
echo $a         # 4

# nelle espressioni aritmetiche è possibile omettere il simbolo $ per accedere alle variabili
a=$(( (b+3)/c ))
echo $a         # 4

# bash esegue solo operazioni tra interi
d=$(( (20+5)/2 ))
echo $d         # 12     

# per operazioni in virgola mobile, bisogna usare dei comandi appositi, come bc, calc, python...
d=$(bc <<< "scale=2; (20+5)/2")
echo $d         # 12.50