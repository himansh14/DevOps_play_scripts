#!/bin/bash

DIRECTORY=$(find /usr/share/zoneinfo | timedatectl list-timezones)
export DIRECTORY
echo "$DIRECTORY" > /opt/shell_scripts/timezone_ist_script/input1.txt

TIMEDATE=$(sudo timedatectl set-timezone "$1")
export TIMEDATE
echo "$TIMEDATE" > /opt/shell_scripts/timezone_ist_script/input2.txt

TIMEDATE_CTL=$(timedatectl)
export TIMEDATE_CTL
echo "$TIMEDATE_CTL" 
#> /opt/shell_scripts/timezone_ist_script/input3.txt

TZ1="$1"
export TZ1

