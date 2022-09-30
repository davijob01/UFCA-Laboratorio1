#!/bin/bash

if [ $# -ne 1 ]
then
        echo "Entrada inválida por excesso de parâmetros!" && exit
fi

! [ -f $1 ] && echo "Arquivo não existe!" && exit

echo "Tamanho: $(wc -c $1 | cut -d ' ' -f 1) bytes"

