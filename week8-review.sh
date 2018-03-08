#!/bin/bash -x
# Week2lab review
title="Week2labreview"
RIGHT_NOW=$(date +"%x %r %z")
MY_NAME=$("whoami")
#let's create 2 directories
mkdir Pastor Hope Secure
#let's change directories
cd Pastor
#Let's create files
touch hi.txt lo.txt fo.txt
#let's input your name into a file
echo $MY_NAME >hi.txt
# Exporting a variable into a file
CR7=CristanoRonaldo; export CR7; echo $CR7 >lo.txt
Z10=Zidane; export z10; echo $z10 >>lo.txt
G11=GaryBale; export G11; echo $G11>>lo.txt
#copy lo.txt to fo.txt
cp lo.txt fo.txt
#check the differences in files
diff lo.txt hi.txt
#let's know the running processes
ps ax  > hi.txt
#let's view hi.txt
cat hi.txt 
#### 
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
####
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
####
#week 5 and 6 scripts
#let's check how our systems starts with dmesg
sudo dmesg | less
#let's check kernel logs
less /var/log/kern.log
#let's check message logs
 less /var/log/messages
#let's find our grub.cfg
locate grub.cfg
#get into our log files
cd var/log
ls
#let's get the syslog  processes
ps ax | grep syslog
#list system list
sudo systemctl list-units
#identify boot slowness
sudo systemd-analyze critical-chain
#end of script

