#!/bin/bash

# Backs up the Lab04 directory

# Miriam 2/13/202

if [ $# != 1 ]
then 
    echo 'Usage: A single argument must be given that is the directory to backup'
    exit
fi
if [ ! -d ~/ABE65100/Lab04/04-introduction-to-linux-os-steve276/Lab04/$1 ]
then
    echo 'The given directory does not seem to exist (possible typo?)'
    exit
fi
date=`date +%F`

# Do we already have a backup folder for today's date?
if [ -d ~/ABE65100/Lab04/04-introduction-to-linux-os-steve276/Lab04/projectbackups/$1_$date ]
then
    echo 'This project has already been backed up today, overwrite?'
    read answer
    if [ $answer != 'y' ]
    then
        exit
    fi
else
    mkdir ~/ABE65100/Lab04/04-introduction-to-linux-os-steve276/Lab04/projectbackups/$1_$date
fi
cp -R ~/ABE65100/Lab04/04-introduction-to-linux-os-steve276/Lab04/linuxtutorialwork/$1 ~/ABE65100/Lab04/04-introduction-to-linux-os-steve276/Lab04/projectbackups/$1_$date
echo 'Backup of $1 completed'0
