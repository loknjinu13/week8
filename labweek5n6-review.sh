#!/bin/bash -x
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
#end of script
