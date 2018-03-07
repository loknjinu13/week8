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
#end script
