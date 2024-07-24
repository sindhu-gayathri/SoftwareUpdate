#!/bin/bash
cp -rf /modules/0/kanto_0.1.0-M3_linux_x86_64.deb .
chmod 444 kanto_0.1.0-M3_linux_x86_64.deb
apt install ./kanto_1.0.0_linux_x86_64.deb
