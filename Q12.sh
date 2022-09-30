#!/bin/bash

echo && echo "USUÁRIO => DIRETÓRIO HOME" && echo
cat /etc/passwd | grep -E "root|home" | cut -d ":" -f 1,6 | sort | sed 's/:/ => /'

