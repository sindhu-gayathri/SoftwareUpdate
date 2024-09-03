#!/bin/bash

FILENAME=""
FILE_ID=1RAHIvAzz14eyto7JcRfEDlcwSMFn2O8m
DESTINATION="phantom-rootfsraw-prod-update_01.03.000.swu"
wget "https://drive.usercontent.google.com/download?id=$FILE_ID&export=download&authuser=1&confirm=t" -O $DESTINATION
result=$?

FILENAME=$(ls *.swu)
if [ $result == 0 ]; then
    swupdate -m -M -i $FILENAME
    result=$?
fi

function get_current_root_device
{
        for i in `cat /proc/cmdline`; do
                if [ ${i:0:5} = "root=" ]; then
                        CURRENT_ROOT="${i:5}"
                fi
        done
}

function get_update_part
{
        CURRENT_PART="${CURRENT_ROOT: -1}"
        if [ $CURRENT_PART = "1" ]; then
                UPDATE_PART="2";
        else
                UPDATE_PART="1";
        fi
}

function get_update_device
{
        UPDATE_ROOT=${CURRENT_ROOT%?}${UPDATE_PART}
}

# get the current root device
get_current_root_device           
                                 
# get the device to be updated
get_update_part  
get_update_device                
     

mkdir -p /mnt/src
mkdir -p /mnt/dst

mount $CURRENT_ROOT /mnt/src
mount $UPDATE_ROOT /mnt/dst 

cp -rf /mnt/src/var/lib/container-management/ /mnt/dst/var/lib/

sleep 5

umount /mnt/src
umount /mnt/dst


if [ $result == 0 ]; then
    reboot
else 
    echo "SOFTWARE UPDATE ERROR"	
fi
