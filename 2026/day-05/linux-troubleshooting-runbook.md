# Day 05 – Linux Troubleshooting Runbook (SSH Service)

## Target Service
ssh (OpenSSH Daemon)

This runbook documents a basic Linux troubleshooting drill performed on an AWS EC2 Ubuntu instance.
The focus is on checking system health and verifying SSH service stability.

---

## Environment Check

Command:
uname -a  
cat /etc/os-release

Observation:
Verified kernel version and Ubuntu OS details of the instance.

Screenshot:
![Environment](screenshots/Day%2005%20env.png)

---

## Filesystem Sanity Check

Command:
mkdir /tmp/linux-ajay-check  
cp /etc/hosts /tmp/linux-ajay-check/hosts-copy && ls -l /tmp/linux-ajay-check

Observation:
Filesystem is writable and basic file operations are working correctly.

Screenshot:
![Filesystem](screenshots/Day%2005%20filesystem.png)

---

## CPU & Memory Snapshot

Command:
ps aux | grep sshd

Observation:
SSH daemon process is running and consuming minimal CPU and memory.

Screenshot:
![SSH CPU Memory](screenshots/Day%2005%20sshstatus_cpu-memory.png)

Command:
top

Observation:
System load is stable with no abnormal CPU usage observed.

Screenshot:
![Top](screenshots/Day%2005%20topsshd.png)

---

## Disk Usage Check

Command:
sudo du -sh /var/log

Observation:
Log directory size is under control and no disk pressure observed.

---

## SSH Logs Review

Command:
journalctl -u ssh -n 50 --no-pager

Observation:
Reviewed recent SSH logs and found no critical errors.

Screenshot:
![SSH Logs](screenshots/Day%2005%20ssh-logs.png)

---

## Quick Findings
- SSH service is running normally
- CPU, memory, and disk usage are within safe limits
- No error patterns found in SSH logs

---

## If This Worsens (Next Steps)
- Restart SSH service and monitor logs
- Check authentication failures and brute-force attempts
- Verify network security group and firewall rules
