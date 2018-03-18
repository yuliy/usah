#! /bin/bash

#exec 0<$1
exec 0</etc/passwd

counter=1
while read line; do
    echo "$((counter++)): $line"
done
