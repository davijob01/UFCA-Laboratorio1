#!/bin/bash

echo "Informe o nome do usuário a ser consultado:"
read usu

if [[ -n $(cat /etc/passwd | grep -E "root|home" | cut -d ":" -f 1 | grep -w -io $usu) ]]
then
        echo "Usuário $usu encontrado!"
else
        echo "$usu não é um usuário cadastrado."
fi
