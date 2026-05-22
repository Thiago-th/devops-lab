#!/bin/bash

if [ -d /home/estudoslinux/Desktop/devops-lab/linux/backup ]
then
	echo "Alvo encontrado!"
	cp /home/estudoslinux/Desktop/devops-lab/linux/*.sh /home/estudoslinux/Desktop/devops-lab/linux/backup
else
	echo "Criando diretorio para backup!"
	mkdir /home/estudoslinux/Desktop/devops-lab/linux/backup
	cp /home/estudoslinux/Desktop/devops-lab/linux/*.sh /home/estudoslinux/Desktop/devops-lab/linux/backup
fi

v=$?
c=0
if (( v == c ))
then
	echo "Backup concluido!"
else
        echo "Falha no backup!"
fi
