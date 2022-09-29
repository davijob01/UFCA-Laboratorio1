#!/bin/bash

re='^[0-9]+$'

if ! [[ $1 =~ $re ]]
then
        echo "Entrada invalida!"
        exit
fi

[ $# -ne 1 ] && echo "Argumentos exedentes!" && exit

echo "Sequência de pares: "
seq -s " " 0 2 $1

