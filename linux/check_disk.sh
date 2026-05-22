#!/bin/bash

uso=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ $uso -gt 80 ]
then
	echo "Disco acima de 80%!!"
else
	echo "Disco em $uso%"
fi
