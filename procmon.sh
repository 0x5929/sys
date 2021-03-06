#!/bin/bash

IFS=$'\n'


old=$(ps -eo command)

touch procmon.out


echo "Procmon start time: $(TZ=":America/Los_Angeles" date)"

while :
do
        new=$(ps -eo command)
        
        # diffing the old and the new processes, we only want the diff results denoted by ">" or "<" notation, and we are not interested in any kernel processes denoted by "[kworker...]"
        di=$(diff <(echo "$old") <(echo "$new") | egrep '[><][^\[\]]')
        if [ -z "$di" ]
        then
                sleep 1
                old=$new
                continue
        else

                echo "$di" "$(TZ=":America/Los_Angeles" date +%r)" | tee -a procmon.out
                sleep 1
                old=$new
        fi

done
