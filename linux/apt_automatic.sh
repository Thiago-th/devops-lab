#!/bin/bash

check() {
if ps aux | grep nginx | grep -v grep > /dev/null
then
	echo "O nginx esta funcionando!"
else
	echo "Servico offline!"
fi
}

update() {
sudo apt update
}
upgrade() {
sudo apt upgrade
}


main() {
update
upgrade
check
}

main
