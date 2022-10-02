#!/bin/bash

for file in $(ls)
do
	if [[ -d $file || $file = $(basename $BASH_SOURCE) ]]
	then
		continue
	fi

	Fword=$(head -n1 $file | cut -d ' ' -f 1)

	if [ -z $Fword ]
	then
		echo "$file vazio... vamos ignorar!" && continue

	fi
	if [[ -f $Fword || -d $Fword ]]
	then
		Fword="${Fword}_$(($(ls | grep $Fword | wc -l)+1))"
	fi

	echo "Tudo certo! Movendo $file para $Fword..."
	mv $file $Fword
done
