#!/bin/bash -x
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
