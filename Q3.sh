#!/bin/bash

echo "Digite um diretório:"
read dir

# <comando 1> && <comando 2> 

test ! -d $dir && echo "Caminho invalido!" && exit

for arquivo in $(ls $dir); do
        if [ -d "$arquivo" ]
        then
                echo "$arquivo (dir)"
        else
                echo "$arquivo"
        fi
done

