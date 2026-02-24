# Day 20 – Log Analyzer & Report Generator

---

## Script Created
log_analyzer.sh

![Log_Analyzer script](screenshots/day20_log_analyzer_sh_script.jpg)

---

## What Script Does
- Validates input log file
- Counts ERROR and Failed entries
- Detects CRITICAL events with line numbers
- Finds Top 5 error messages
- Generates timestamped report
- Archives processed logs

![Log_Analyzer script output](screenshots/day20_log_analyzer_sh_output.jpg)

---

## Commands Used
- grep
- awk
- sort
- uniq
- wc
- mv
- date

---

### Files Generated

- log_report_2026-02-24.txt
- /archive/Zookeeper.log

![Log_Files](screenshots/day20_log_files.jpg)

### What I Learned

- Real-world log parsing using Bash
- Combining grep + awk + sort pipelines
- Building automation-ready scripts

---