#!/bin/bash
# Format: ./copy.sh [-r] <level> <filepath>
if [ "$1" = "-r" ] ; then
    shift
    a=$(expr $1 - 1)
    sshpass -p "$(cat "./$a/pass.txt")" scp -P 2220 "./$1/$2" "bandit$1@bandit.labs.overthewire.org:/tmp/numberisnan"
else
    a=$(expr $1 - 1)
    sshpass -p "$(cat "./$a/pass.txt")" scp -P 2220 "bandit$1@bandit.labs.overthewire.org:$2" "./$1/"
fi