#!/bin/bash

word=oi
arr=()

while [ "$word" != 's' ]; do
	echo && echo "Digite s para sair ou qualquer palavra para continuar:"
	read word && clear

	[ "$word" == 's' ] && clear && exit

	arr+=("$word")
	printf "%s\n" "${arr[@]}" | sort
done
