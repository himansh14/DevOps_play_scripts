#!/bin/bash

PATH1=$(cd /usr/share/zoneinfo || exit)
export PATH1

PATH2=$(/usr/bin/tzselect)
export PATH2

TZ='Asia/Kolkata'
export TZ


