#!/bin/bash
# Format: ./copy.sh [-r] <level> <filepath>
name=leviathan
if [ "$1" = "-r" ] ; then
    shift
    a=$(expr $1 - 1)
    sshpass -p "$(cat "./$a/pass.txt")" scp -P 2223 "./$1/$2" "$name$1@$name.labs.overthewire.org:/tmp/numberisnan"
else
    a=$(expr $1 - 1)
    sshpass -p "$(cat "./$a/pass.txt")" scp -P 2223 "$name$1@$name.labs.overthewire.org:$2" "./$1/"
fi