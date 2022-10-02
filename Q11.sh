#!/bin/bash

[ $# -ne 3 ] && echo "Entrada inválida" && exit

re='^[0-9]+$'

if ! [[ $1 =~ $re && $3 =~ $re ]]
then
	echo "Digite apenas número!" && exit
fi

if [[ $2 != "+" && $2 != "-" && $2 != "*" && $2 != "/" ]] 
then
	echo "Operador inválido: $2" && exit
fi

[ "$2" == "+" ] && echo "Resultado de $1 + $3: $(($1+$3))" && exit
[ "$2" == "-" ] && echo "Resultado de $1 - $3: $(($1-$3))" && exit
[ "$2" == "*" ] && echo "Resultado de $1 * $3: $(($1*$3))" && exit
[ "$2" == "/" ] && echo "Resultado de $1 / $3: $(($1/$3))" && exit


