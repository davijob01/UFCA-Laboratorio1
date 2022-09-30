#!/bin/bash

word=oi
arr=()

while [ "$word" != 'sair' ]; do
	echo && echo "Digite o que quiser:"
	read word && clear

	[ "$word" == 'sair' ] && echo "Bay Bay" && exit

	arr+=("$word")
	printf "%s\n" "${arr[@]}" | sort
done
