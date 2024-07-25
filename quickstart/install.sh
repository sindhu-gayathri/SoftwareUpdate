#!/bin/bash

#/usr/bin/cp -rf /modules/0/kanto_0.1.0-M3_linux_x86_64.deb /home/gayathri/FOTA_Testing
#/usr/bin/chmod +x /home/gayathri/FOTA_Testing/kanto_0.1.0-M3_linux_x86_64.deb
wget https://github.com/eclipse-kanto/kanto/releases/download/v1.0.0/kanto_1.0.0_linux_x86_64.deb 
/usr/bin/cp -rf kanto_1.0.0_linux_x86_64.deb /home/gayathri/FOTA_Testing
cd /home/gayathri/FOTA_Testing/
apt-get update
#apt install -y ./kanto_0.1.0-M3_linux_x86_64.deb
apt install ./kanto_1.0.0_linux_x86_64.deb
