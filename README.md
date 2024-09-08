# guarapo

Small project in charge of monitoring disk usage based on threshold

## Dependencies

This script asumes you already have a webhook of an alert system
configured so you can send the output to that webhook. 
It can be something like Pagerduty, nagios, etc

Also the execution is up to you: You can use it in a schedule system like cron or manually or in other bash script

## Examples

### Usage with crontab

1. Ensure the script has executable permissions

`chmod +x /path/to/script/analyzer.sh`

2. Edit the root crontab :

`sudo crontab -e`

3. Add the next entry to execute every 2 hours and save: 

`0 */2 * * * cd /path/to/script/analyzer.sh && sudo ./analyzer.sh 70 | <webhook-command-here>`
