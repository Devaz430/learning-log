#!/bin/bash
 usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//') 
if [ $usage -ge 80 ]
then
echo "Warning: Disk Uage is at $usage% - cleanup needed!"
else
echo "Disk usage is fine at $usage%"
fi
