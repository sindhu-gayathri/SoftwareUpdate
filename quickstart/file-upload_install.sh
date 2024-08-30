#!/bin/bash

wget https://raw.githubusercontent.com/SindhuGayathri/SoftwareUpdate/main/quickstart/file-upload_config.json
cp -rf file-upload_config.json /etc/file-upload/config.json
systemctl restart file-upload

sleep 10 

pip3 install servefile 
servefile -u /var/log/aws-connector/
