#!/bin/bash

ip=1.2.3.4

while read -r ip; do 

if [[ "$ip" =~ ^[1-2][0-9]*[0-9]*+\.[1-2][0-9]*[0-9]*+\.[1-2][0-9]*[0-9]*+\.[1-2][0-9]*[0-9]*+$ ]]; then
  echo "success"

else
  echo "fail"

fi
done
