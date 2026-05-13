#!/bin/bash

check_dir() {
if [ -d /home/estudoslinux/Desktop/teste/backup ]
then
echo "Diretorio localizado!"
else
echo "Criando diretorio..."
mkdir /home/estudoslinux/Desktop/teste/backup
	saida=$?
	if (( saida == 0 ))
	then
	echo "Diretorio pronto!"
	else
	echo "Erro ao criar diretorio..."
	fi
fi
}

check_copy() {
cp /home/estudoslinux/Desktop/teste/*.sh /home/estudoslinux/Desktop/teste/backup 2> /dev/null
saida2=$?
if ((saida2 == 0 ))
then
echo "Backup finalizado!"
else
echo "Erro no backup!"
fi
}




main() {
	check_dir
	check_copy
}

main
