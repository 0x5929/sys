#!/bin/bash

IFS=$'\n'


old=$(ps -eo command)

touch procmon.out


echo "Procmon start time: $(date)"

while :
do
        new=$(ps -eo command)

        diff <(echo "$old") <(echo "$new") | egrep '[><]' | tee -a procmon.out

        sleep 1
        old=$new
done
