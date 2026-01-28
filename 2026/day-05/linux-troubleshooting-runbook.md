# Day 05 – Linux Troubleshooting Runbook (SSH Service)

## Target Service
ssh (OpenSSH Daemon)

This runbook captures a basic Linux troubleshooting drill performed on an
AWS EC2 Ubuntu instance. The goal is to verify system health and ensure
the SSH service is running normally.

---

## Environment Check

Commands:
uname -a  
cat /etc/os-release

Observation:
Verified kernel version, architecture, and Ubuntu OS details.

Screenshot:
![Environment](screenshots/Day%2005%20env.png)

---

## Filesystem Sanity Check

Commands:
mkdir /tmp/linux-ajay-check  
cp /etc/hosts /tmp/linux-ajay-check/hosts-copy  
ls -l /tmp/linux-ajay-check

Observation:
Filesystem is writable and basic file operations are working correctly.

Screenshot:
![Filesystem](screenshots/Day%2005%20filesystem.png)

---

## CPU & Memory Snapshot

Command:
ps aux | grep sshd

Observation:
Verified SSH daemon process is running and checked its CPU usage.

Command:
free -h

Observation:
Memory usage is within normal limits and no memory pressure observed.

Command:
top

Observation:
System load is stable and SSH process is not consuming abnormal CPU or memory.

Screenshot:
![CPU Memory](screenshots/Day%2005%20sshstatus_cpu-memory.png)

---

## Disk Usage Check

Command:
sudo du -sh /var/log

Observation:
Log directory size is under control and not causing disk pressure.

![size of log file](screenshots/Day%2005%20diskusage.png)


---

## SSH Logs Review

Command:
journalctl -u ssh -n 50 --no-pager

Observation:
Reviewed recent SSH logs and found no critical or repeated errors.

Screenshot:
![SSH Logs](screenshots/Day%2005%20ssh-logs.png)

---

## Quick Findings
- SSH service is running normally
- CPU and memory usage are stable
- Disk usage is within safe limits
- No critical issues found in SSH logs

---

## If This Worsens (Next Steps)
- Restart SSH service and monitor logs
- Investigate authentication failures or suspicious access attempts
- Verify security group and firewall rules
