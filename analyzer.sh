#!/bin/bash

#Retrieve required parameters
threshold_pcent=$1

# Get mounted filesystems that are higher the threshold
df -h | awk -v pcent="$threshold_pcent" '{ if($5+0 >= pcent) print $0 }'