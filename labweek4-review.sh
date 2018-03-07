#!/bin/bash -x
# week4 labs
#let's view our partitions once more
parted -l
#let's make a local image
dd if=/dev/zero of=./64MB.img bs=1M count=64
hexdump ./64MB.img | less
#let's crearte a file system
mkfs -t ext4 ./64MB.img
ls -l /sbin/mkfs.*
#let's make a mount point
mkdir /mnt/tmp
sudo mount ./64MB.img /mnt/tmp
mount ; df -h
lsblk
#let's put info
cd /tmp/tmp; ls
echo "Hello" > ./hello.txt
sudo umount /mnt/tmp
#let's read through using hex
hexdump --canonical ./64MB.img | less
#let's check the RAM of our system
free
#let's make a swap file
dd if=/dev/zero of=./24MB.swap bs=1M count=16
sudo mkswap ./24MB.swap
sudo chmod 0600 24MB.swap; sudo chown root 24MB.swap
sudo swapon ./24MB.swap
sudo swapon -s
#let's create some inodes
mkdir pace_1 pace_2
echo "ball" > pace_1/P1
echo "hall" > pace_1/P2
echo "mall" > pace_1/P3
echo "tall" > pace_2/p4
ln pace_1/P3 pace_2/P5
#let's check our inodes comparing links
ls -iR pace_*

