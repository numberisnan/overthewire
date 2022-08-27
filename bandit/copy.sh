#!/bin/bash
# Format: ./copy.sh <level> <filepath>
a=$(expr $1 - 1)
sshpass -p "$(cat "./$a/pass.txt")" scp -P 2220 "bandit$1@bandit.labs.overthewire.org:$2" "./$1/"