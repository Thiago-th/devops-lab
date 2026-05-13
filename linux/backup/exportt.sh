#!/bin/bash

A=2
B=3

soma=$((A + B))
echo $soma

export PATH=$PATH:/home/estudoslinux/Desktop/teste
export calc=$((1 + 1))

echo $PATH
echo $calc

if (( A != B ))
then
echo "A diferente de B"
else
echo "A igual B"
fi

discar=$(($1 + $2))
echo $discar
