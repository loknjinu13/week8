#!/bin/bash -x
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
#end script
