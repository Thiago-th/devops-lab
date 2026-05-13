#!/bin/bash

if [ -d /home/estudoslinux/Desktop/teste/backup ]
then
	echo "Alvo encontrado!"
	cp /home/estudoslinux/Desktop/teste/*.sh /home/estudoslinux/Desktop/teste/backup
else
	echo "Criando diretorio para backup!"
	mkdir /home/estudoslinux/Desktop/teste/backup
	cp /home/estudoslinux/Desktop/teste/*.sh /home/estudoslinux/Desktop/teste/backup
fi

v=$?
c=0
if (( v == c ))
then
	echo "Backup concluido!"
else
        echo "Falha no backup!"
fi
