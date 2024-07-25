#!/bin/bash

/usr/bin/cp -rf /modules/0/kanto_0.1.0-M3_linux_x86_64.deb /home/gayathri/FOTA_Testing
#/usr/bin/chmod +x /home/gayathri/FOTA_Testing/kanto_0.1.0-M3_linux_x86_64.deb
cd /home/gayathri/FOTA_Testing/
apt-get update
apt install ./kanto_0.1.0-M3_linux_x86_64.deb
