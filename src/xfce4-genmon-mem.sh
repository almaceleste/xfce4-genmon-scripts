#!/bin/bash

# xfce4-genmon script to monitor current memory usage
# 2020 (ɔ) almaceleste

# mem usage threshold warning (in GB) - yellow
warn=13
# mem usage threshold alarm (in GB) - red
alarm=15

used=$(free --giga | grep Mem | awk '{printf "%d", $3}')
free=$(free --human --giga | grep Mem | awk '{printf "%s", $4}')
shared=$(free --human --giga | grep Mem | awk '{printf "%s", $5}')
avail=$(free --human --giga | grep Mem | awk '{printf "%s", $7}')

color='lightgrey'
if [ $used -gt $alarm ]
then
    color='red'
elif [ $used -gt $warn ]
then
    color='yellow'
fi
used="${used}G"

echo "<txt><span foreground="\'$color\'"> $used </span></txt>"
echo -e "<tool>mem: \t$used used\n\t\t$free free\n\t\t$shared shared\n\t\t$avail avail</tool>"
