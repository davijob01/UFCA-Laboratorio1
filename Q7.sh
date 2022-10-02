#!/bin/bash

echo "DIGITE A PRIMEIRA DATA:"
read data1
echo "DIGITE A SEGUNDA DATA:"
read data2
echo "DIGITE PRIMEIRO DIA DA SEMANA:"
read days
echo "DIGITE SEGUNDO DIA DA SEMANA:"
read days2

re='^[0-9]{4}/[0-9]{2}/[0-9]{2}$'


! [[ $data1 =~ $re ]] && echo "Entrada inválida para a data inicial!" && exit
! [[ $data2 =~ $re ]] && echo "Entrada inválida para a data final!" && exit

re2='^[0-6]*$'


! [[ $days =~ $re2 ]] && echo "Dias inválidos!" && exit
! [[ $days2 =~ $re2 ]] && echo "Dias inválidos!" && exit

data1=$(date -d "$data1" +%s)
data2=$(date -d "$data2" +%s)


[ $data1 -gt $data2 ] && echo "Datas invertidas! Tente novamente." && exit

for ((i=$data1; i<=$data2; i+=86400));
do
        data=$(date -d @$i +%d/%m/%Y)
        dias=$(date -d @$i +%w)

        ([[ $dias =~ $days ]] || [[ $dias =~ $days2 ]]) && printf "$data ; "
done
echo
