#!/bin/sh
#Run manually or as a timed restart with ten minute warning via CronJob
screen -S YourScreenHere -p 0 -X stuff "say Server Restart Scheduled in 10 minutes, please prepare$(printf \\r)"
sleep 570
screen -S YourScreenHere -p 0 -X stuff "say Server is about to Restart, 1 minute remains.$(printf \\r)"
screen -S YourScreenHere -p 0 -X stuff "save-all$(printf \\r)"
sleep 30
screen -S YourScreenHere -p 0 -X stuff "say Server is restarting in 30 seconds $(printf \\r)"
screen -S YourScreenHere -p 0 -X stuff "save-off$(printf \\r)"
sleep 20
screen -S YourScreenHere -p 0 -X stuff "say Server is restarting in 10 seconds $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "say .... in 9 seconds $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "say .... in 8 seconds $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "say .... in 7 seconds $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "say .... in 6 seconds $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "say .... in 5 seconds $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "say .... in 4 seconds $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "say .... in 3 seconds $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "say .... in 2 seconds $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "say .... in 1 second $(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "kick @a Server Restarting, please wait about 1 minutes before reconnecting.$(printf \\r)"
sleep 1
screen -S YourScreenHere -p 0 -X stuff "save-all$(printf \\r)"
sleep 3
screen -S YourScreenHere -p 0 -X stuff "kick @a Final kick before server restart $(printf \\r)"
screen -S YourScreenHere -p 0 -X stuff "save-on$(printf \\r)"
screen -S YourScreenHere -p 0 -X stuff "stop$(printf \\r)"
sleep 1
