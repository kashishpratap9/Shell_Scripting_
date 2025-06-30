#!/bin/bash
FU=$( df -H | egrep -v "Filesystem|tmpfs" | grep "sda2"| awk '{print $5}'| tr -d '%')
TO="kashishpratap4@gmail.com"
if [[ $FU -gt 20 ]]
then 
        echo "Warning, disk space is low - $FU %" | mail -s "Disk space alert !" $TO
else
        echo "All good"
fi

