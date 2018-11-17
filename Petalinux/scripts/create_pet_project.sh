# In this script we are going to create a petalinux project with a lot of options

#!/bin/bash

#First Stage Bootloader path
FSBL_PATH_PET=images/linux/zynq_fsbl.elf 



# Create project 
read -p 'Project name: ' PROJECT_NAME
petalinux-create -t project -n $PROJECT_NAME -s bsp/xilinx-zc706-v2017.2-final.bsp

# Go to project
cd $PROJECT_NAME
 
# Configure project (SD configuration manually)
read -p 'Design Wrapper path: ' DESIGN_WRAPPER_PATH
petalinux-config --get-hw-description=$DESIGN_WRAPPER_PATH

# Build project
petalinux-build

# Generate BOOT.BIN file
BIT_PATH_PET= components/plnx-workspace/device-tree-generation/design*
RECIPES_PATH=project-spec/meta-user
DTB_USER=project-spec/meta-user/recipes-bsp/device-tree/files
petalinux-package --boot --fsbl $FSBL_PATH_PET --fpga $BIT_PATH_PET --uboot --force

# Package everything to a prebuilt folder for convenience
#petalinux-package --prebuilt --fpga $BIT_PATH_PET --force

# Configure rootfs (Fylesystem packages manually)
petalinux-config -c rootfs

# Create modules and apps
petalinux-create -t modules -n dmaproxy --enable

# Read device driver of DMA (copy default dmaproxy file) 
gedit $RECIPES_PATH/recipes-modules/dmaproxy/files/dma* &
gedit $RECIPES_PATH/recipes-modules/dmaproxy/files/Make* &

read -p 'APP name: ' APP_NAME
petalinux-create -t apps -n $APP_NAME --enable
gedit $RECIPES_PATH/recipes-apps/$APP_NAME/files/$APP_NAME* &

read -p 'Do you want to create another app? (j/n)' ANSWER
# if [ "$answer" = "j" ]
while [ "$ANSWER" != "n"]
do
	read -p 'APP name: ' APP_NAME
	petalinux-create -t apps -n $APP_NAME --enable
	gedit $RECIPES_PATH/recipes-apps/$APP_NAME/files/$APP_NAME* &
	read -p 'Do you want to create another app? (j/n)' ANSWER
done

gedit $DTB_USER/system* &

# Configure rootfs
petalinux-config -c rootfs
  
