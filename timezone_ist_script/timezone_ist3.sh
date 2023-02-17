#!/bin/bash

DIRECTORY=$(find /usr/share/zoneinfo | timedatectl list-timezones)

echo "$DIRECTORY" > /opt/shell_scripts/timezone_ist_script/input4.txt

TIMEDATE=$(sudo timedatectl set-timezone "$1")
export TIMEDATE

TIMEDATE_CTL=$(timedatectl)
echo "$TIMEDATE_CTL" > /opt/shell_scripts/timezone_ist_script/input5.txt

TZ1="$1"
export TZ1

PATH1=$(cd /usr/share/zoneinfo || exit)
export PATH1
PATH2=$(/usr/bin/tzselect)
export PATH2
TZ2='Asia/Kolkata'
export TZ2

