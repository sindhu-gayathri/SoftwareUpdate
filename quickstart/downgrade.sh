#!/bin/bash
wget https://github.com/eclipse-kanto/kanto/releases/download/v0.1.0-M3/kanto_0.1.0-M3_linux_x86_64.deb
apt-get update
yes | sudo DEBIAN_FRONTEND=noninteractive apt install ./*.deb
