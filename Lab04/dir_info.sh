#!/bin/bash

# Report on a directory

# Miriam 2/13/2020

echo This is a report on the current directory...
#echo This is a report on directory $*

echo Number of files and directories in the current directory:
ls | wc -l
# How many files are in the directory?
#   >> dir_info.sh
# How many directories are in the directory?
#   >> dir_info.sh

# What is the biggest file?
echo The biggest file in the directory is:
ls -S | head -1 $* #>> dir_info.sh

# What is the most recently modified or created file?
echo The most recently modified or created file is:
ls -t | head -1

# A list of people who own files in the directory.
echo The people who own files in this directory are:
ls -l | tail -n +2 | sed 's/\s\s*/ /g' | cut -d ' ' -f 3 | sort | uniq

echo ...End of directory report 
