# A simple script: We are going to mount ext3 file of the petalinux project to /mnt and after that we copy it to rootfs partition of SD card


#!/bin/bash

#read -p 'Select ext: ' PATH_EXT
#read -p 'Path of SD rootfs partition: ' PATH_ROOTFS
#read -p 'Path of SD BOOT partition: ' PATH_BOOT 

PATH_ROOTFS=/media/fatima/r*
PATH_BOOT=/media/fatima/B*

sudo cp system.dtb image.ub $PATH_BOOT

sudo mount rootfs.ext4 /mnt -o loop

cd $PATH_ROOTFS
sudo rm -rf bin boot dev etc home lib media mnt proc run sbin sys tmp usr var
sudo cp -r /mnt/* $PATH_ROOTFS
sudo ls $PATH_ROOTFS
