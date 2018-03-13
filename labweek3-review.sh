#!/bin/bash -x
# Review labWeek3
echo "lets go into the devices directory"
cd /dev; ls -l
sleep 1
# let's create a  folder using the dd commandline
cd ~;pwd; dd if=/dev/zero of=.peace bs=1M count=3
echo "make file hexadecimal"
hexdump .peace
sleep 1
echo "lets move data into peace"
CR7=CristanoRonaldo; export CR7
echo $CR7>.peace
hexdump .peace
sleep 1
echo "\nlets check our harddrives:"
sudo lsblk
echo "\nlets check individual partitions using the 'sudo' command:"
sudo fdisk -l /dev/sda
sleep 1
#end script


