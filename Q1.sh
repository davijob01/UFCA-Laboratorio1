#!/bin/bash

re="^[0-9]+$"

if [ $# -ne 2 ]
then
    echo "ERRO! APENAS DOIS PARAMETROS."
      exit
fi

if ! [[ $1 =~ $re && $2 =~ $re ]]
then
    echo "ERRO! ENTRADA INVALIDA!"
    exit
fi

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

