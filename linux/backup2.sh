#!/bin/bash

backup() {
cp /home/estudoslinux/Desktop/devops-lab/linux/*.sh /home/estudoslinux/Desktop/devops-lab/linux/backup
echo $?
}

backup
