#!/bin/sh -x
# Week2lab review
echo "The title"
title="Week2labreview"
sleep 1
echo "The date of today"
RIGHT_NOW=$(date +"%x %r %z")
echo "creating the $MY_NAME variable"
MY_NAME=$("whoami")
echo "We will create 3 directories"
mkdir ~/Pastor ~/Hope ~/Secure
cd ~/Pastor
echo "\nChanging to the Pastor folder:\n"
sleep 1
echo "Lets create files"
touch ~/Pastor/hi.txt ~/Pastor/lo.txt ~/Pastor/fo.txt
echo "lets input our PC name into a file"
echo ${MY_NAME} >~/Pastor/hi.txt
echo "Exporting a variable into a file"
CR7=CristanoRonaldo; export CR7; echo $CR7 >~/Pastor/lo.txt
Z10=Zidane; export Z10; echo $Z10 >>~/Pastor/lo.txt
G11=GaryBale; export G11; echo $G11>>~/Pastor/lo.txt
echo "lets copy lo.txt to fo.txt"
cp ~/Pastor/lo.txt ~/Pastor/fo.txt
sleep 1
echo "check the differences in files lo.txt and hi.txt"
diff ~/Pastor/lo.txt ~/Pastor/hi.txt
sleep 1
echo "lets know the running processes in the computer"
ps ax  >>~/Pastor/hi.txt
echo "lets view hi.txt"
cat ~/Pastor/hi.txt 
sleep 1
#### 
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
####
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
####
#week 5 and 6 scripts
echo "\nlets check how our systems starts with dmesg:"
sudo dmesg | less
echo "\nlets check kernel logs, press q to move on:"
less /var/log/kern.log
echo "lets check message logs"
less /var/log/messages
echo "\nlets find our grub.cfg:"
locate grub.cfg
echo "get into our log files"
cd /var/log
ls
echo "lets get the syslog  processes"
ps ax | grep syslog
sleep 1
echo "list system list"
sudo systemctl list-units
sleep 1
echo "lets identify boot slowness"
sudo systemd-analyze critical-chain
echo "This is the end of my script. I am assmilating. hippi!!!"

