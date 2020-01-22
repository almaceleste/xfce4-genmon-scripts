#!/bin/bash

# xfce4-genmon script to monitor current nvidia gpu usage
# 2020 (ɔ) almaceleste

# gpu usage threshold warning (in %) - yellow
warn=70
# gpu usage threshold alarm (in %) - red
alarm=90

gpu=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader | awk '{printf "%02d", $1}')

color='lightgrey'
if [ $gpu -gt $alarm ]
then
    color='red'
elif [ $gpu -gt $warn ]
then
    color='yellow'
fi
gpu="${gpu}%"

echo "<txt><span foreground="\'$color\'"> $gpu </span></txt>"
echo -e "<tool>gpu: $gpu</tool>"
