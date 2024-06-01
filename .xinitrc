#!/bin/sh

while true; do 
    xsetroot -name " nullboy@archlinux [ $(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')%] [ $(cat /sys/class/power_supply/BAT0/capacity)%] [$( date +" %F" )] [$( date +" %R" )]"
    sleep 1m
done &

feh --bg-fill /home/nullboy/Downloads/wallpapers/neon.png &

picom -b

exec dwm
