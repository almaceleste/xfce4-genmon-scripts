#!/bin/bash

# xfce4-genmon script to monitor current cpu usage
# 2020 (ɔ) almaceleste

# cpu usage threshold warning (in %) - yellow
warn=70
# cpu usage threshold alarm (in %) - red
alarm=90

cpu=$(top -bn 2 -d 0.2 | grep '^%Cpu' | tail -n 1 | awk '{printf "%02d", $2+$4+$6}')

color='lightgrey'
if [ $cpu -gt $alarm ]
then
    color='red'
elif [ $cpu -gt $warn ]
then
    color='yellow'
fi
cpu="${cpu}%"

echo "<txt><span foreground="\'$color\'"> $cpu </span></txt>"
echo -e "<tool>cpu: $cpu</tool>"
