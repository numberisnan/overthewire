#!/bin/bash
# Format: ./level.sh <level>
a=$(expr $1 - 1)
if [ ! -d ./$1 ] ; then
    mkdir ./$1
fi
sshpass -p "$(cat "./$a/pass.txt")" ssh "bandit$1@bandit.labs.overthewire.org" -p 2220