#!/bin/bash

[ $# -ne 3 ] && echo "Parâmetros inseridos incorretamente!" && exit

data1=$1
data2=$2
days=$3

re='^[0-9]{4}/[0-9]{2}/[0-9]{2}$'


! [[ $data1 =~ $re ]] && echo "Entrada inválida para a data inicial!" && exit
! [[ $data2 =~ $re ]] && echo "Entrada inválida para a data final!" && exit

re2='^[0-6](,[0-6])*$'


! [[ $days =~ $re2 ]] && echo "Dias inválidos!" && exit


data1=$(date -d "$data1" +%s)
data2=$(date -d "$data2" +%s)


[ $data1 -gt $data2 ] && echo "Datas invertidas! Tente novamente." && exit

for ((i=$data1; i<=$data2; i+=86400));
do
        data=$(date -d @$i +%d/%m/%Y)
        dias=$(date -d @$i +%w)

        [[ $days =~ $dias ]] && printf "$data ; "
done
[ $# -ne 3 ] && echo "Parâmetros inseridos incorretamente!" && exit

data1=$1
data2=$2
days=$3

re='^[0-9]{4}/[0-9]{2}/[0-9]{2}$'

! [[ $data1 =~ $re ]] && echo "Entrada inválida para a data inicial!" && exit
! [[ $data2 =~ $re ]] && echo "Entrada inválida para a data final!" && exit

re2='^[0-6](,[0-6])*$'

! [[ $days =~ $re2 ]] && echo "Dias inválidos!" && exit

data1=$(date -d "$data1" +%s)
data2=$(date -d "$data2" +%s)

[ $data1 -gt $data2 ] && echo "Datas invertidas! Tente novamente." && exit

for ((i=$data1; i<=$data2; i+=86400));
do
        data=$(date -d @$i +%d/%m/%Y)
        dias=$(date -d @$i +%w)

        [[ $days =~ $dias ]] && printf "$data ; "
done

