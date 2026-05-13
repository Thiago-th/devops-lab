#!/bin/bash

backup() {
cp /home/estudoslinux/Desktop/teste/*.sh /home/estudoslinux/Desktop/teste/backup
echo $?
}

backup
