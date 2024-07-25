#!/bin/bash

wget https://github.com/eclipse-kanto/kanto/releases/download/v1.0.0/kanto_1.0.0_linux_x86_64.deb 
apt-get update
yes | sudo DEBIAN_FRONTEND=noninteractive apt install ./*.deb

