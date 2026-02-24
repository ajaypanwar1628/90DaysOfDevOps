#!/bin/bash
set -euo pipefail

LOGFILE="/var/log/maintenance.log"

echo "$(date) Starting maintenance..." >> "$LOGFILE"

./log_rotate.sh testlogs >> "$LOGFILE" 2>&1
./backup.sh testsrc backups >> "$LOGFILE" 2>&1

echo "$(date) Maintenance completed." >> "$LOGFILE"

