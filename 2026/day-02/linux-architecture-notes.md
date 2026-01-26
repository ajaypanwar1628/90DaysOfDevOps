# Day 02 – Linux Architecture & systemd (Live Class Notes)

## What we discussed in today’s live session
- Linux is the base OS for most DevOps and cloud servers
- Understanding internals helps in real production troubleshooting
- Focus was on processes and systemd, not just commands

## Linux Architecture (High Level)
- Kernel: interacts with hardware and manages CPU, memory
- User Space: where applications and commands run
- systemd: init system that manages services and processes

## Processes in Linux
- Every running program is a process
- Each process has a unique PID
- Parent and child process relationship exists

## Process States
- Running
- Sleeping
- Stopped
- Zombie (process completed but not cleaned up)

## systemd Basics
- systemd manages services on Linux
- It starts services during boot
- It can restart failed services automatically

## Common systemd Commands Used
- systemctl status service
- systemctl start service
- systemctl stop service
- systemctl restart service
- journalctl -u service

## Practical Understanding
- Most real issues are related to service failure or high resource usage
- Knowing where to check logs saves a lot of time

## Key Learning
Linux knowledge is not about memorizing commands,
it is about understanding how the system behaves in production.
