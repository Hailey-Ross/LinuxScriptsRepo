#!/bin/sh
#Requires screen (duh)
#Run this to create a screen for your minecraft server, place the mc-launch from this repository in the same folder
cd /Path/To/Your/Server
screen -S "YourScreenHere" bash -c "sh mc-launch.sh"
