#!/bin/bash

# ==============================
# System Health Check Script
# ==============================

echo "======================================="
echo "        SYSTEM HEALTH REPORT"
echo "======================================="

# 🕒 Uptime
echo -e "\n[UPTIME]"
uptime -p

# 🌐 IP Address
echo -e "\n[IP ADDRESS]"
hostname -I

# 💾 Memory Usage
echo -e "\n[MEMORY USAGE]"
free -h

# 🗄️ Disk Usage
echo -e "\n[DISK USAGE]"
df -h --total | grep total

# ❌ Failed Services
echo -e "\n[FAILED SERVICES]"
FAILED=$(systemctl --failed --no-legend | wc -l)

if [ "$FAILED" -eq 0 ]; then
    echo "No failed services ✅"
else
    systemctl --failed
fi

# ⚠️ Recent Errors (last 10 system logs)
echo -e "\n[RECENT SYSTEM ERRORS]"
journalctl -p 3 -xb | tail -n 10

echo -e "\n======================================="
echo "Health check completed"
echo "======================================="

