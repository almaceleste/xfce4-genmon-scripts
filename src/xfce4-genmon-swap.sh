#!/bin/bash

# xfce4-genmon script to monitor current swap usage
# 2020 (ɔ) almaceleste

# swap free space threshold warning (in GB) - yellow
warn=3
# swap free space threshold alarm (in GB) - red
alarm=1

free=$(free --giga | grep Swap | awk '{printf "%d", $4}')
used=$(free --human --giga | grep Swap | awk '{printf "%s", $3}')

color='lightgrey'
if [ $free -le $alarm ]
then
    color='red'
elif [ $free -le $warn ]
then
    color='yellow'
fi
free="${free}G"

echo "<txt><span foreground="\'$color\'"> $used </span></txt>"
echo -e "<tool>swap: \t$used used\n\t\t$free free</tool>"
