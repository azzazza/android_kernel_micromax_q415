#!/bin/sh
#

export ARCH=arm
export SUBARCH=arm
#export CROSS_COMPILE=/home/azzazza/bin/utility/arm-cortex_a7_2/bin/arm-cortex_a7-linux-gnueabihf-
export CROSS_COMPILE=/home/azzazza/bin/lineage14/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
make dep
make clean
make mrproper
