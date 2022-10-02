#!/bin/bash

echo "Digite a entrada:"
read var1

set -- "$var1"

echo "Sequência de pares entre 0 e $var1: "
seq -s " " 0 2 $1

