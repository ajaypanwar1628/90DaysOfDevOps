#!/bin/bash
set -euo pipefail

LOG_DIR="${1:-}"

if [ -z "$LOG_DIR" ]; then
  echo "Usage: $0 <log_directory>"
  exit 1
fi

if [ ! -d "$LOG_DIR" ]; then
  echo "Directory does not exist!"
  exit 1
fi

echo "Starting log rotation in $LOG_DIR"

COMPRESSED=$(find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \; -print | wc -l)
DELETED=$(find "$LOG_DIR" -name "*.gz" -mtime +30 -delete -print | wc -l)

echo "Compressed files: $COMPRESSED"
echo "Deleted old archives: $DELETED"

