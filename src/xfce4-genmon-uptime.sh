#!/bin/bash

# xfce4-genmon script to display system uptime
# 2022 (ɔ) almaceleste

# periods below in seconds. 86400=24 hours
# first period during which uptime is displayed down to minutes
first=86400
# second period during which uptime is displayed down to hours
second=864000

uptime=$(cat /proc/uptime | awk '{printf $1}' | cut --delimiter='.' --fields=1)
days=$(expr $uptime / 86400)
hours=$(expr $uptime % 86400 / 3600)
minutes=$(expr $uptime % 86400 % 3600 / 60)

output=$(printf "%dd %02dh %02dm" $days $hours $minutes)
if [ $uptime -lt 86400 ]
then
    output=$(printf "%02dh %02dm" $hours $minutes)
elif [ $uptime -gt $second ]
then
    output=$(printf "%dd" $days)
elif [ $uptime -gt $first ]
then
    pattern="%dd %02dh"
    output=$(printf "%dd %02dh" $days $hours)
fi

echo "<txt><span> $output </span></txt>"
echo -e "<tool>uptime: $(uptime --pretty)</tool>"
