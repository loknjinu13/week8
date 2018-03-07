#!/bin/bash -x
# Review labWeek3
# let's go into the devices directory
cd /dev; ls -l
# let's create a  folder using the dd commandline
cd ~;pwd; dd if=/dev/zero of=.peace bs=1M count=3
#make file hexadecimal
hexdump .peace
#let's move data into peace
CR7=CristanoRonaldo; export CR7
echo $CR7>.peace
hexdump .peace
#let's check our harddrives
lsblk
#lets check individual partitions using the 'sudo' command
sudo fdisk -l /dev/sda
#end script


