#!/bin/bash

option=0
while [ $option -ne 4 ]; do
        echo && echo "1 - Status da utilização das partições do sistema."
        echo "2 - Relação de usuários logados."
        echo "3 - Data/Hora"
        echo "4 - Sair" && echo
        echo "Informe sua opção:"
        read option
        clear

        [ $option -gt 4 ] && echo "Opção inválida, tente novamente!" && option=0 && continue
        [ $option -eq 1 ] && echo "Status da utilização das partições do sistema:" && echo && df -h && continue
        [ $option -eq 2 ] && echo "Relação de usuários logados:" && echo && who && continue
        [ $option -eq 3 ] && echo "Data/Hora:" && echo && date && continue
        [ $option -eq 4 ] && echo "Bay Bay" && exit
done

