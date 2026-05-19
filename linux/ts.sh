#!/bin/bash
site="www.google.com"
netstat -ntaplu
tem_rede() {
ping -c 1 "$site" > /dev/null 2>&1
rede=$?
if (( rede == 0 ))
then
	echo "Tem rede"
else
	echo "Problemas"
fi
}

tem_dns() {
dig "$site" +short | grep -q .
dns=$?
if (( dns == 0 ))
then
	echo "Tem dns"
else
	echo "Problemas no dns"
fi
}

site_on() {
status=$(curl -L -s -o /dev/null -w "%{http_code}" "http://$site")
if [ "$status" = "200" ]
then
	echo "Site on"
else
	echo "Problemas no site"
fi
}

main() {
tem_rede
tem_dns
site_on
}

main
