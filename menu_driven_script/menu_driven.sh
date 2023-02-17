#!/bin/bash

# creating a menu diven program to display n/w details like CPU, open port, free disk, ram etc

echo "SELECT YOUR METRICS FROM THE FOLLOWING"

WHOAMI=$(whoami)
echo "1. WHOAMI"

USER=$(uname)
echo "2. USER"

DATE=$(date)
echo "3. DATE"

UPTIME=$(uptime)
echo "4. UPTIME"

PROCESS=$(ps)
echo "5. PROCESS"

FREESPACE=$(free)
echo "6. FREESPACE"

DISKFREE=$(df -h | grep udev)
echo "7. DISKFREE"

IP_ADDRESS=$(ifconfig | sed -n '2p')
echo "8. IP_ADDRESS"

INODE=$(ls -i)
echo "9. INODE"

STATISTICS=$(vmstat -t)
echo "10. STATISTICS"

SWAP_SPACE=$(smem | grep /usr/bin/gnome-shell)
echo "11. SWAP_SPACE"

echo -n "Enter your choices from [1-12]: "

while read -r choice; do 

# case statement is used to compare one value with the multiple cases.
 
case $choice in 

# Pattern 1 
1) echo "You have selected option 1"
   echo "$WHOAMI";;

# Pattern 2
2) echo "You have selected option 2"
   echo "$USER";;

# Pattern 3
3) echo "You have selected option 3"
   echo "$DATE";;

# Pattern 4
4) echo "You have selected option 4"
   echo "$UPTIME";;

# Pattern 5
5) echo "You have selected option 5"
   echo "$PROCESS";;

# Pattern 6
6) echo "You have selected option 6"
   echo "$FREESPACE";;

# Pattern 7
7) echo "You have selected option 7"
   echo "$DISKFREE";;

# Pattern 8
8) echo "You have selected option 8"
   echo "$IP_ADDRESS";;

# Pattern 9
9) echo "You have selected option 9"
   echo "$INODE";;

# Pattern 10
10) echo "You have selected option 10"
   echo "$STATISTICS";;

# Pattern 11
11) echo "You have selected option 11"
    echo "$SWAP_SPACE";;

# Pattern 12
12) echo "Quit"
    exit;;

# Default Pattern 
*) echo "Invalid Option";;

esac
   echo -n "Enter your choices from [1-13]: "

done
