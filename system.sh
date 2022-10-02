clear

echo -e "==========================

   Sistema de navegação
      entre questões

==========================

  \e[4mAperte qualquer tecla\e[0m
       \e[4mpra começar\e[0m"

read -n 1 -r -s

x=1
y=2

while [ $x -le $y ]
do

clear

echo "==========================

    Escolha a questão

==========================

a - Maior nũmero

b - Verificar usuário

c - Listar arquivos

d - Número pares menores que

e - Verificar arquivo

f - Menu de opções

g - Dia da semana pra data

h - Renomear arquivo

i - Palavras ordenadas

j - Ordenar palavras

k - Calculadora simples

l - Exibir usuários

m - Qual shell mais utilizado

--------------------------

x - Sair
"

read -n 1 -r -s selection

clear

case $selection in 

	a)
	    sh Q1.sh;;
        b)
            sh Q2.sh;;
        c)
            sh Q3.sh;;
        d)
            sh Q4.sh;;
        e)
            sh Q5.sh;;
        f)
            sh Q6.sh;;
        g)
            sh Q7.sh;;
        h)
            sh Q8.sh;;
        i)
            sh Q9.sh;;
        j)
       	    sh Q10.sh;;
      	k)
       	    sh Q11.sh;;
       	l)
       	    sh Q12.sh;;
      	m)
            sh Q13.sh;;
        x)
	    exit 0
	
esac

read -n 1 -r -s -p "
Aperte qualquer tecla para continuar"

done


