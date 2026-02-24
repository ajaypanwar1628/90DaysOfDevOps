#!/bin/bash
set -euo pipefail

SRC="${1:-}"
DEST="${2:-}"

if [ ! -d "$SRC" ]; then
  echo "Source directory not found!"
  exit 1
fi

mkdir -p "$DEST"

DATE=$(date +%Y-%m-%d)
ARCHIVE="$DEST/backup-$DATE.tar.gz"

echo "Creating backup..."
tar -czf "$ARCHIVE" "$SRC"

if [ -f "$ARCHIVE" ]; then
  echo "Backup created: $ARCHIVE"
  du -h "$ARCHIVE"
else
  echo "Backup failed!"
  exit 1
fi

echo "Cleaning old backups..."
find "$DEST" -name "backup-*.tar.gz" -mtime +14 -delete

