#!/bin/bash

WHOAMI=$(whoami)
echo "Press 1 to check WHOAMI"
sleep 1

USER=$(uname)
echo "Press 2 to check USER"
sleep 1

DATE=$(date)
echo "Press 3 to check today's DATE"
sleep 1

UPTIME=$(uptime)
echo "Press 4 to check system's UPTIME"
sleep 1

PROCESS=$(ps)
echo "Press 5 to check PROCESS"
sleep 1

FREESPACE=$(free)
echo "Press 6 to check FREESPACE"
sleep 1

DISKFREE=$(df -h | grep udev)
echo "Press 7 to check DISKFREE"
sleep 1

IP_ADDRESS=$(ifconfig | sed -n '2p')
echo "Press 8 to check IP_ADDRESS"
sleep 1

INODE=$(ls -i)
echo "Press 9 to check INODE"
sleep 1

STATISTICS=$(vmstat -t)
echo "Press 10 to check STATISTICS"
sleep 1

SWAP_SPACE=$(smem | grep /usr/bin/gnome-shell)
echo "Press 11 to check SWAP_SPACE"
sleep 1

while read -r line; do

if [[ "$line" = "1" ]]; then
        echo "$WHOAMI user"

elif [[ "$line" = "2" ]]; then
        echo "The user is $USER"

elif [[ "$line" = "3" ]]; then
        echo "Today's DATE $DATE"

elif [[ "$line" = "4" ]]; then
        echo "System uptime details $UPTIME"

elif [[ "$line" = "5" ]]; then
        echo "$PROCESS"

elif [[ "$line" = "6" ]]; then
        echo "$FREESPACE"

elif [[ "$line" = "7" ]]; then
        echo "$DISKFREE"

elif [[ "$line" = "8" ]]; then
        echo "Server_Details $IP_ADDRESS"

elif [[ "$line" = "9" ]]; then
        echo "$INODE inode details"

elif [[ "$line" = "10" ]]; then
        echo "$STATISTICS"

elif [[ "$line" = "11" ]]; then
        echo "$SWAP_SPACE"

elif [[ $line = "q" ]]; then break

else
        echo "Invalid Input"
fi
done
