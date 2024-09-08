#!/bin/bash

# Retrieve required parameters
threshold_pcent=$1

# Get mounted filesystems that are higher the threshold
results="$(df -h | awk -v pcent="$threshold_pcent" '{ if($5+0 >= pcent) print $0 }')"

# Manage of the output
if [ -n "$results" ]
then
  printf "%s\n" "$results"

else
  printf "%s\n" "None high disk usage detected."
  exit 1
fi
