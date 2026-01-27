# Day 04 – Linux Practice (Processes & Services)

Today I practiced basic Linux commands on an AWS EC2 Ubuntu instance.
Focus was on processes, services and logs.

---

## Process Practice

### Checking running processes
Command:
ps aux | head

Observation:
Checked currently running processes with CPU and memory usage.

---

### Live process monitoring
Command:
top

Observation:
Observed system load, running tasks and resource usage in real time.

---

## Service Practice (systemd)

### Checking SSH service
Command:
systemctl status ssh

Observation:
SSH service is active and running on the EC2 instance.

---

### Listing active services
Command:
systemctl list-units --type=service --state=running | head

Observation:
Multiple system services are managed and running via systemd.

---

## Log Practice

### Checking SSH service logs
Command:
journalctl -u ssh --no-pager | tail -n 20

Observation:
Reviewed recent SSH connection related logs.

---

### Checking system logs
Command:
sudo tail -n 30 /var/log/syslog

Observation:
System logs show background service activities and system events.

---

## Summary
Practiced basic Linux troubleshooting commands on AWS Ubuntu.
This helped revise core Linux fundamentals used in real environments.
