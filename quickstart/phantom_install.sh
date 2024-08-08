#!/bin/bash

FILENAME=""
FILE_ID=
DESTINATION="phantom-rootfsraw-prod-update_01.03.000.swu"
wget "https://drive.usercontent.google.com/download?id=$FILE_ID&export=download&authuser=1&confirm=t" -O $DESTINATION
result=$?

FILENAME=$(ls *.swu)
if [ $result == 0 ]; then
    swupdate -m -M -i $FILENAME
    result=$?
fi

if [ $result == 0 ]; then
    reboot
else 
    echo "SOFTWARE UPDATE ERROR"	
fi
