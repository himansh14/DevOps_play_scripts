#!/bin/bash

echo "Please enter your choice of ip_address"
ip="1.2.3.4"
while read -r ip;do
if [[ "$ip" =~ ^(([1-9]?[0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-5]))\.){3}([1-9]?[0-9]|1[0-9][0-9]|2([0-4][0-9]|5[0-5]))$ ]]; then
  echo "success"
else
  echo "fail"
fi
done

