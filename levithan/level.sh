#!/bin/bash
# Format: ./level.sh <level>
a=$(expr $1 - 1)
name=leviathan
if [ ! -d ./$1 ] ; then
    mkdir ./$1
    touch ./$1/pass.txt
fi
echo "$name$1@$name.labs.overthewire.org"
sshpass -p "$(cat "./$a/pass.txt")" ssh "$name$1@$name.labs.overthewire.org" -p 2223