#!/bin/bash

echo "PRIMEIRA VARIAVEL"
read var1

echo "SEGUNDA VARIAVEL"
read var2

set -- "$var1" "$var2"

if [ $1 -lt $2 ]
then
    echo "$2 >> $1"
elif [ $1 -eq $2 ]
then
    echo "Os números são iguais!"
else
    echo "$1 >> $2"
fi

somatorio=$(($1+$2))
echo "Somatório => $somatorio"

