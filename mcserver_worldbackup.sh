#!/bin/bash
#Backup MC Server
#Run via CronJob or Manually :shrug:
screen -S YourScreenHere -p 0 -X stuff "say &2Running World Backup$(printf \\r)"
screen -S YourScreenHere -p 0 -X stuff "save-all$(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "save-off$(printf \\r)"
zip -r -9 /hdd/backups/$(date +\%Y)/$(date +\%m)/hourly/SurvivalBackup-$(date +\%m-\%d-\%Y_\%H-\%M).zip /srv/mc/ -x "*.jpg*" -x "*.zip*" -x "*.hash*"
sleep 3
screen -S YourScreenHere -p 0 -X stuff "say &2Backup Completed$(printf \\r)"
screen -S YourScreenHere -p 0 -X stuff "save-on$(printf \\r)"
