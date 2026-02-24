#!/bin/bash

# ===============================
# Day 20 – Log Analyzer Script
# ===============================

set -euo pipefail

# -------- Task 1: Input Validation --------

if [ $# -eq 0 ]; then
    echo "Usage: $0 <logfile>"
    exit 1
fi

LOGFILE="$1"

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File does not exist!"
    exit 1
fi

DATE=$(date +%Y-%m-%d)
REPORT="log_report_${DATE}.txt"

echo "Analyzing log file: $LOGFILE"

# -------- Task 2: Error Count --------

ERROR_COUNT=$(grep -Eci "ERROR|Failed" "$LOGFILE" || true)
echo "Total Errors: $ERROR_COUNT"

# -------- Task 3: Critical Events --------

CRITICAL_EVENTS=$(grep -n "CRITICAL" "$LOGFILE" || true)

# -------- Task 4: Top Error Messages --------

TOP_ERRORS=$(grep "ERROR" "$LOGFILE" 2>/dev/null \
    | awk '{$1=$2=$3=""; print}' \
    | sort | uniq -c | sort -rn | head -5 || true)

# -------- Task 5: Generate Report --------

{
echo "========== LOG ANALYSIS REPORT =========="
echo "Date: $DATE"
echo "Log File: $LOGFILE"
echo "Total Lines: $(wc -l < "$LOGFILE")"
echo "Total Errors: $ERROR_COUNT"

echo ""
echo "----- Top 5 Error Messages -----"
echo "$TOP_ERRORS"

echo ""
echo "----- Critical Events -----"
echo "$CRITICAL_EVENTS"

} > "$REPORT"

echo "Report Generated: $REPORT"

# -------- Task 6: Archive Logs (Optional) --------

mkdir -p archive
mv "$LOGFILE" archive/

echo "Log moved to archive/"

