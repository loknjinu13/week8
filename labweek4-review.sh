#!/bin/bash -x
# week4 labs
echo "lets view our partitions once more"
parted -l
echo "lets make a local image"
dd if=/dev/zero of=./64MB.img bs=1M count=64
hexdump ./64MB.img | less
echo "lets create a file system"
mkfs -t ext4 ./64MB.img
ls -l /sbin/mkfs.*
sleep 1
echo "lets make a mount point"
mkdir /mnt/tmp
sudo mount ./64MB.img /mnt/tmp
mount; df -h
sleep 1
sudo lsblk
echo "\nlets put info"
echo "Hello" > ./hello.txt
sudo umount /mnt/tmp
echo "lets read through using hex"
hexdump ./64MB.img | less
echo "lets check the RAM of our system"
free
sleep 1
echo "lets make a swap file"
dd if=/dev/zero of=./24MB.swap bs=1M count=16
sudo mkswap ./24MB.swap
sudo chmod 0600 ./24MB.swap; sudo chown root ./24MB.swap
sudo swapon ./24MB.swap
sudo swapon -s
sleep 1
echo "lets create some inodes"
mkdir ~/pace_1 ~/pace_2
echo "ball" > ~/pace_1/P1
echo "hall" > ~/pace_1/P2
echo "mall" > ~/pace_1/P3
echo "tall" > ~/pace_2/p4
ln ~/pace_1/P3 ~/pace_2/P5
echo "lets check our inodes comparing links"
ls -iR ~/pace_*
sleep 1
#end of script
