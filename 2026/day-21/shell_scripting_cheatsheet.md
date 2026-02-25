# Day 21 – Shell Scripting Cheat Sheet

This cheat sheet summarizes shell scripting concepts learned from Days 16–20.
Goal: Quick revision + real DevOps reference.

---

## Personal Shell Scripting Quick Reference

| Topic | Key Syntax | Example | Use Case |
|------|------------|---------|----------|
| Shebang | `#!/bin/bash` | `#!/bin/bash` | Define script interpreter |
| Variable | `VAR="value"` | `NAME="Ajay"` | Store reusable values |
| Echo | `echo` | `echo "Hello"` | Print output/logs |
| Read Input | `read -p` | `read -p "Name:" N` | Take user input |
| Arguments | `$1 $2 $# $@` | `./script.sh test` | Dynamic scripts |
| If Condition | `if [ cond ]; then` | `if [ -f file ]; then` | Decision making |
| String Test | `-z -n` | `[ -z "$VAR" ]` | Check empty variables |
| Integer Test | `-eq -gt` | `[ $A -eq 5 ]` | Numeric logic |
| File Check | `-f -d -e` | `[ -d /var/log ]` | Validate files safely |
| For Loop | `for i in list; do` | `for i in 1 2 3; do` | Repeat tasks |
| While Loop | `while read` | `while read line` | Process files |
| Function | `name(){}` | `greet(){ echo Hi; }` | Reusable logic |
| Local Var | `local VAR` | `local user="dev"` | Avoid variable conflicts |
| Strict Mode | `set -euo pipefail` | `set -euo pipefail` | Prevent script failure |
| Debug Mode | `set -x` | `set -x` | Trace execution |
| Grep | `grep -i pattern` | `grep -i error log.txt` | Log filtering |
| Awk | `awk '{print $1}'` | `awk -F: '{print $1}'` | Column parsing |
| Sed | `sed 's/a/b/g'` | `sed -i 's/foo/bar/g'` | Replace text |
| Cut | `cut -d -f` | `cut -d: -f1 file` | Extract fields |
| Sort | `sort -rn` | `sort -rn file` | Order output |
| Uniq | `uniq -c` | `sort file | uniq -c` | Count duplicates |
| Tr | `tr A-Z a-z` | `echo A | tr A-Z a-z` | Format text |
| WC | `wc -l` | `wc -l file` | Count lines |
| Head | `head -n` | `head -5 file` | View top lines |
| Tail | `tail -f` | `tail -f log.txt` | Live monitoring |
| Find | `find -mtime` | `find /var/log -mtime +7` | Cleanup automation |
| Systemctl Check | `systemctl is-active` | `systemctl is-active nginx` | Service health |
| Exit Code | `$?` | `echo $?` | Check success/failure |
| Trap | `trap 'cleanup' EXIT` | `trap 'echo done' EXIT` | Safe cleanup |


---

# Task 1: Basics

### Shebang
```bash
#!/bin/bash
```
- Tells system which interpreter to use.
- Important because scripts may fail if wrong shell executes them.

---

### Running Scripts

```bash
chmod +x script.sh
./script.sh
bash script.sh
```
- ```chmod +x``` → gives execute permission
- ```./script.sh``` → runs directly
- ```bash script.sh``` → runs without execute permission

---

### Comments

```bash
#This is a comment
echo "Hello" # inline comment
```
- Used for readability and documentation.

---

### Variables

```bash
NAME="Ajay"
echo "$NAME"
```
- Stores values to reuse in scripts.
- Double quotes expand variables, single quotes don’t.

---

### Read Input

```bash
read -p "Enter name: " NAME
```
- Takes user input — useful for interactive scripts.

---

### Command Line Arguments

```bash
$0 script name
$1 first argument
$# total args
$@ all args
$? last exit code
```
- Helps make scripts reusable and dynamic.

---



# Task 2: Operators and Conditionals

### String Comparison

```bash
[ "$A" = "$B" ]
[ -z "$VAR" ]
```
- Used for checking text values or empty variables.

---

### Integer Comparison

```bash
[ $A -eq 5 ]
```
- Used in logic like counters, retries, loops.

---

### File Tests

```bash
[ -f file ] # file exists
[ -d dir ]  # directory exists
```
- Important for safe automation — avoid breaking scripts.

---

### If Else Syntax

```bash
if [ -f file ]; then
 echo "exists"
fi
```
- Controls decision making inside scripts.
                                                                                                                                                                                        ---                                                                                                                                                                                                                                                                                                                                             
### Logical Operators

```bash
cmd1 && cmd2
cmd1 || echo "failed"
```
- Chain commands based on success/failure.

---

### Case Statement

```bash
case $VAR in start) echo "Start";; esac
```
- Cleaner alternative to multiple if conditions.

---


# Task 3: Loops

### For Loop
```bash
for i in 1 2 3; do echo $i; done
```
- Runs repeated actions — used in deployments & installs.

### While Loop
```bash
while read line; do echo $line; done < file
```
- Processes files line-by-line.

### Until Loop
```bash
until [ $i -gt 5 ]; do ((i++)); done
```
- Runs until condition becomes true.

### Break & Continue

```bash
for i in {1..10}; do [ "$i" -eq 5 ] && break; echo "$i"; done
for i in {1..10}; do [ "$i" -eq 5 ] && continue; echo "$i"; done

```
- Stops or skips loop iteration — useful in error handling.

---

### Loop Over Files
```bash
for f in *.log; do echo $f; done
```
- Used in log automation and batch operations.

---

# Task 4: Functions

### Define Function

```bash
greet(){ echo "Hello $1"; }
```
- Reusable code blocks — cleaner scripts.

---

### Return vs Echo

#### return → Exit Status (0 = success, non-zero = fail)
```bash
myfunc() { return 0; }
myfunc; echo $?
```
- echo $? shows the status code returned by function.

#### echo → Print Output Value
```bash
myfunc() { echo "Hello DevOps"; }
myfunc
```
- Prints actual text/output to terminal.

---

### Local Variables
```bash
local VAR="value"
```
- Avoids conflicts between functions.

---

# Task 5: Text Processing Commands

### grep
```bash
grep -i error log.txt
```
Search text patterns in files.
Used for log analysis & monitoring.

#### Flags:
- -i ignore case
- -c count matches
- -n show line numbers

---

### awk
```bash
awk '{print $1}' file
```
- Powerful text processor for columns.
- Used for parsing logs, CSV, metrics.

---

### sed
```bash
sed 's/foo/bar/g' file
```
- Stream editor — replace or modify text automatically.

---

### cut
```bash
cut -d: -f1 /etc/passwd
```
- Extracts specific fields from lines.

---

### sort / uniq
```bash
sort file | uniq -c
```
- Find duplicates — useful for log summaries.

---

### tr
```bash
echo "HELLO" | tr A-Z a-z
```
- Translate characters (uppercase/lowercase).

---

### wc
```bash                                                                                                                                                                               
wc -l file
```
Counts lines — quick file stats.

---

### head / tail
```bash
tail -f logfile
```
- Real-time log monitoring.

---

# Task 6: Useful One-Liners

```bash
find /var/log -mtime +7 -delete
```
- Delete old files — used in maintenance jobs.

---

```bash
sed -i 's/old/new/g' *.conf
```
- Bulk config updates.

---

```bash
systemctl is-active nginx
```
- Check service health.

---

```bash
df -h | awk '$5>80'
```
- Detect high disk usage.

---

```bash
tail -f log | grep ERROR
```
- Live error monitoring.

---

# Task 7: Error Handling and Debugging

### Exit Codes
```bash
echo $?
exit 1
```
- Indicates success or failure.

### Strict Mode
```bash
set -euo pipefail
-e stop on error
-u fail on undefined variable
```
- pipefail detect pipe failures

---

### Debug Mode
```bash
set -x
```
- Shows command execution step-by-step.

---

### Trap
```bash
trap 'cleanup' EXIT
```
- Runs cleanup before script exits.

---

# Task 8: Quick Reference Table

## Quick Reference Table – Shell Scripting Cheat Sheet

| Topic | Key Syntax | Example | Use Case |
|------|------------|---------|----------|
| Shebang | `#!/bin/bash` | `#!/bin/bash` | Define script interpreter |
| Variable | `VAR="value"` | `NAME="Ajay"` | Store reusable values |
| Echo | `echo` | `echo "Hello"` | Print output/logs |
| Read Input | `read -p` | `read -p "Name:" N` | Take user input |
| Arguments | `$1 $2 $# $@` | `./script.sh test` | Dynamic scripts |
| If Condition | `if [ cond ]; then` | `if [ -f file ]; then` | Decision making |
| String Test | `-z -n` | `[ -z "$VAR" ]` | Check empty variables |
| Integer Test | `-eq -gt` | `[ $A -eq 5 ]` | Numeric logic |
| File Check | `-f -d -e` | `[ -d /var/log ]` | Validate files safely |
| For Loop | `for i in list; do` | `for i in 1 2 3; do` | Repeat tasks |
| While Loop | `while read` | `while read line` | Process files |
| Function | `name(){}` | `greet(){ echo Hi; }` | Reusable logic |
| Local Var | `local VAR` | `local user="dev"` | Avoid variable conflicts |
| Strict Mode | `set -euo pipefail` | `set -euo pipefail` | Prevent script failure |
| Debug Mode | `set -x` | `set -x` | Trace execution |
| Grep | `grep -i pattern` | `grep -i error log.txt` | Log filtering |
| Awk | `awk '{print $1}'` | `awk -F: '{print $1}'` | Column parsing |
| Sed | `sed 's/a/b/g'` | `sed -i 's/foo/bar/g'` | Replace text |
| Cut | `cut -d -f` | `cut -d: -f1 file` | Extract fields |
| Sort | `sort -rn` | `sort -rn file` | Order output |
| Uniq | `uniq -c` | `sort file | uniq -c` | Count duplicates |
| Tr | `tr A-Z a-z` | `echo A | tr A-Z a-z` | Format text |
| WC | `wc -l` | `wc -l file` | Count lines |
| Head | `head -n` | `head -5 file` | View top lines |
| Tail | `tail -f` | `tail -f log.txt` | Live monitoring |
| Find | `find -mtime` | `find /var/log -mtime +7` | Cleanup automation |
| Systemctl Check | `systemctl is-active` | `systemctl is-active nginx` | Service health |
| Exit Code | `$?` | `echo $?` | Check success/failure |
| Trap | `trap 'cleanup' EXIT` | `trap 'echo done' EXIT` | Safe cleanup |



---
