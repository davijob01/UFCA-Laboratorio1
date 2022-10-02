#!/bin/bash

echo "Digite a entrada:"
read var1

set -- "$var1"

! [ -f $1 ] && echo "Arquivo não existe!" && exit

echo "Tamanho: $(wc -c $1 | cut -d ' ' -f 1) bytes"

