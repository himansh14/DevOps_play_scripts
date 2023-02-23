#!/bin/bash

# To collect CPU, Memory and Disk usage report from slave (devops minion) and send alert to master (devops play) server
# Format : Hostname, Date&Time, CPU%, MEM%, DiskUsage% 

i=$(cat /opt/shell_scripts/cpumetrics/hostlist)

SLAVE_HOST_NAME=$(ssh "$i" hostname)
SLAVE_DATE_TIME=$(ssh "$i" date)
SLAVE_CPU_USAGE=$(ssh "$i" top -b -n 1 d1 | grep "Cpu(s)" | awk '{print $2}' | awk -F. '{print $1}')
SLAVE_MEMORY_USAGE=$(ssh "$i" free | sed '2q')

ABS_PATH=$"/opt/shell_scripts/cpumetrics/out.txt"

echo "SLAVE_HOST_NAME, SLAVE_DATE_TIME, SLAVE_CPU_USAGE (%), SLAVE_MEMORY_USAGE (%)" > "${ABS_PATH}"
echo "$SLAVE_HOST_NAME, $SLAVE_DATE_TIME, $SLAVE_CPU_USAGE" >> "${ABS_PATH}"
echo "$SLAVE_MEMORY_USAGE" >> "${ABS_PATH}"

WARNING=80
ex=/
for ex in $ex;
do

MASTER_HOST_NAME=$(hostname)
MASTER_DATE_TIME=$(date)
MASTER_CPU_USAGE=$(top -b -n 1 d1 | grep "Cpu(s)" | awk '{print $2}' | awk -F. '{print $1}')
MASTER_MEMORY_USAGE=$(free | sed '2q')

if [[ "$SLAVE_CPU_USAGE" -ge "$WARNING" && "$SLAVE_MEMORY_USAGE" -ge "$WARNING" ]]; then

ssh himanshuw@192.168.100.102 'echo CPU and MEMORY consumption might get full in no time' >> "${ABS_PATH}"

else
ssh himanshuw@192.168.100.102 'echo CPU and MEMORY are in optimize condition' >> "${ABS_PATH}"

fi
done

