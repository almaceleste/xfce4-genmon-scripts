#!/bin/bash

# xfce4-genmon script to monitor hdd (partition) free space
# 2020 (ɔ) almaceleste

# available space threshold warning (in GB) - yellow
warn=70
# available space threshold alarm (in GB) - red
alarm=20
# mount path
path="/home"

free=$(df -BG | grep $path | awk '{printf "%d", $4}')
used=$(df -BG | grep $path | awk '{printf " %s ", $3}')
color='lightgrey'
if [ $alarm -gt $free ]
then
    color='red'
elif [ $warn -gt $free ]
then
    color='yellow'
fi
free="${free}G"
echo "<txt><span foreground="\'$color\'"> $free </span></txt>"
echo -e "<tool>hdd:\t$path\nused:\t$used\nfree:\t$free</tool>"
