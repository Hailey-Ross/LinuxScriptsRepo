# Minecraft Server Scripts

This section of the repository contains a collection of Bash scripts intended for use with **Minecraft Servers** on **Linux** systems. These scripts help with starting, stopping, and backing up your Minecraft server instances manually or via Cron Jobs.

## 🛠️ Requirements

- A **Linux** server (such as Ubuntu Server)
- **screen** package installed

The scripts rely on screen to run the Minecraft server in a detachable session, allowing you to close your terminal without stopping the server.

## 💻 Installing screen on Ubuntu Server

To install screen, run the following commands:

`sudo apt-get update && sudo apt-get upgrade`  
`sudo apt install screen`  

Once installed, the scripts will be able to create and manage screen sessions for your Minecraft servers.

## 📝 Notes

- Make sure the scripts have execute permissions. You can set this with: `chmod +x scriptname.sh`  
- Adjust the scripts as needed to match your server folder names, memory settings, and other preferences.  

## 📅 Cron Jobs

You can automate backups and restarts using **cron jobs** on your server.  

To edit your crontab, run:  

`crontab -e`  

Add entries like the examples below:  

- Daily Backup at 3:00 AM:  
`0 3 * * * /path/to/backup.sh`

- Daily Restart at 4:00 AM:  
`0 4 * * * /path/to/restart.sh`

Replace /path/to/backup.sh and /path/to/restart.sh with the full path to your actual script files.  

#### 🛑 Cron Tips:

- Always use absolute paths in cron jobs.  
- Ensure your scripts have execute permissions (chmod +x scriptname.sh).  
- You can log the output by redirecting it to a file, for example:  
`0 3 * * * /path/to/backup.sh >> /path/to/backup.log 2>&1`  
  
