#! /bin/bash
#Run via CronJob
#Requires screen, comment those out if you don't want to send a message to your server anyways.
sleep 2
screen -S YourScreenHere -p 0 -X stuff "say Performing OLD backup/log cleanup. Lag may occur$(printf \\r)"
sleep 1
find /your/backup/location/here -type f -mtime +15 -name '*.zip' -execdir rm -- {} +;
sleep 1
find /srv/your/server/path/here -type f -mtime +60 -name '*.log.gz' -execdir rm -- {} +;
sleep 2
screen -S YourScreenHere -p 0 -X stuff "say Completed cleanup process$(printf \\r)"
