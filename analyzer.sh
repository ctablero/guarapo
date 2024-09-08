#!/bin/bash

# Retrieve required parameters
threshold_pcent=$1

# Get mounted filesystems that are higher the threshold
results="$(df -h | awk -v pcent="$threshold_pcent" '{ if($5+0 >= pcent) print $0 }')"

if [ -n "$results" ]
then
  printf "%s\n" "$results"

# Here you will use $results variable and send to the alert channel of preference. 
# It can be Nagios, Pagerduty, notification-send etc

else
  printf "%s\n" "None high disk usage detected."  
fi

# End message
printf "%s\n" "Analysis completed."