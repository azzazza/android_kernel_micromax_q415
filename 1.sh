#!/bin/sh
#

export ARCH=arm
export SUBARCH=arm
#export CROSS_COMPILE=/home/azzazza/bin/utility/arm-cortex_a7_2/bin/arm-cortex_a7-linux-gnueabihf-
export CROSS_COMPILE=/home/azzazza/bin/lineage14/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
#export CROSS_COMPILE=/home/azzazza/bin/lineage14/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make dep
make clean
make mrproper
RUN=`date +%H%M%S` && date && date >> make.$RUN.log && /usr/bin/time -f "Total time: %E"
make msm8909_defconfig
#make rolex_defconfig
#make Q415_defconfig
#make menuconfig
ccache make -j5 2>&1 | tee -a make.$RUN.log && date >> make.$RUN.log && date

