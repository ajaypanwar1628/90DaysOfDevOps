# Day 07 – Linux File System Hierarchy & Scenario-Based Practice

## Purpose
The purpose of Day 07 was to understand the Linux File System Hierarchy and
practice real-world troubleshooting scenarios like a DevOps engineer.
This included identifying where configuration files, logs, binaries live,
and solving service, CPU, log, and permission-related issues step by step.

---

## Environment
- OS: Ubuntu Linux (AWS EC2)
- User: ubuntu
- Service used for practice: cron
- Working Directory: 90DaysOfDevOps/2026/day-07

---

## Part 1: Linux File System Hierarchy

### `/` (root)
- The top-level directory of Linux. Every file and directory starts from here.
- Example folders seen: `bin`, `etc`, `home`, `var`
- I would use this when understanding overall system structure.

---

### `/home`
- Contains home directories for normal users.
- Example folder: `/home/ubuntu`
- I would use this when managing user files and scripts.

---

### `/root`
- Home directory for the root user.
- Used mainly for administrative tasks.
- I would use this when logged in as root for system-level operations.

---

### `/etc`
- Contains system-wide configuration files.
- Example file: `/etc/hostname`
- I would use this when changing service or system configuration.

---

### `/var/log`
- Stores system and application log files.
- Example logs: `syslog`, `auth.log`
- I would use this when troubleshooting services and errors.

---

### `/tmp`
- Stores temporary files.
- Files here can be deleted automatically.
- I would use this for temporary scripts or downloads.

---

### `/bin`
- Essential system binaries like `ls`, `cp`, `mv`
- Needed for basic command execution.
- I would use this during system recovery or minimal environments.

---

### `/usr/bin`
- User-level binaries.
- Example commands: `vim`, `top`, `journalctl`
- I would use this for daily Linux operations.

---

### `/opt`
- Optional or third-party applications.
- Used by custom software installations.
- I would use this when installing external applications.


📸 Screenshot:
![/ root directory](screenshots/Day%2007%20root%20directory.jpg)



---

## Hands-on Commands


du -sh /var/log/* 2>/dev/null | sort -h | tail -5

`cat /etc/hostname` 

`ls -la -a` 

📸 Screenshot:
![/ directory & files](screenshots/Day%2007%20directory%20commands.jpg)

---





# Part 2: Scenario-Based Practice
---
# Scenario 1: Service Not Starting (cron)

#Step 1: Check service status
systemctl status cron


#Why: To see whether the service is active, inactive, or failed.

📸 Screenshot:
![cron status](screenshots/Day%2007%20TWS2%20cron%20status%20active.jpg)

#Step 2: Stop the service manually
systemctl stop cron


#Why: To simulate a failure scenario.

📸 Screenshot:
![cron stopped](screenshots/Day%2007%20manually%20stopped%20&%20check%20status%20of%20cron.jpg)

#Step 3: Check logs for cron
journalctl -u cron -n 30


#Why: To identify why the service stopped or restarted.

📸 Screenshot:
![cron logs](screenshots/Day%2007%20Journalctl%20logs%20n30%20for%20cron.jpg)

#Step 4: Find where logs are coming from
'journalctl -u cron'


#Why: To confirm that cron logs are managed by systemd (journald).

📸 Screenshot:
![finding cron logs](screenshots/Day%2007%20Finding%20Logs%20for%20cron.jpg)

#What I Learned

- Always check service status first.
- Logs explain why a service failed.
- systemd services store logs in journald.



##Scenario 2: High CPU Usage

#Step 1: Live CPU monitoring
top


#Why: To identify processes consuming high CPU in real time.

#Step 2: Sort processes by CPU usage
ps aux --sort=-%cpu | head -10


#Why: To quickly identify top CPU-consuming processes.

📸 Screenshot:
![CPU usage](screenshots/Day%2007%20CPU%20Usage%20with%20top%20&%20ps%20aux%20command.jpg)

#What I Learned

- "top" is useful for live monitoring. ps aux helps in quick analysis during incidents. 


##Scenario 3: File Permission Issue 

#Step 1: Create a script 
touch backup.sh ls -l backup.sh

#Observation: Script was not executable.


#Step 2: Fix permissions
chmod +x backup.sh
ls -l backup.sh


📸 Screenshot:
![permissions fix](screenshots/Day%2007%20file%20before%20&%20after%20permissions.jpg)

#What I Learned

- Scripts require execute permission (x).
- ls -l -a clearly shows permission issues.



##Why This Matters for DevOps

- Logs help debug production issues. 
- Service status checks are the first step in troubleshooting. 
- Permission issues are common deployment problems.
 


## Summary of Learnings

- Linux file system structure
- Service troubleshooting using systemctl
- Log analysis using journalctl
- CPU troubleshooting
- File permission fixes


#Screenshots
- All screenshots are stored in the screenshots/ folder with proper naming.



#Status
- Day 07 completed successfully ✔️





