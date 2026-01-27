# Day 03 – Linux Commands Cheat Sheet

This cheat sheet contains commonly used Linux commands
for daily troubleshooting and operations.

---

## Process Management
- ps aux – list all running processes
- top – live CPU and memory usage
- htop – interactive process viewer
- uptime – system load average
- kill PID – stop a process
- kill -9 PID – force stop a process

---

## File & Directory Management
- pwd – show current directory
- ls -l – list files with details
- mkdir dir – create directory
- mkdir -p a/b/c – create nested directories
- touch file – create empty file
- cp file1 file2 – copy file
- mv old new – rename or move file
- rm file – delete file
- rm -rf dir – delete directory forcefully

---

## Disk & Memory
- df -h – disk usage
- du -sh * – directory size
- free -m – memory usage

---

## Logs & File Viewing
- cat file – view file content
- less file – scroll large files
- head file – first 10 lines
- tail file – last 10 lines
- tail -f logfile – live log monitoring

---

## Search & Filtering
- grep word file – search word in file
- grep -i word file – case insensitive search
- grep -r word /path – recursive search
- wc -l file – count lines
- wc -w file – count words

---

## Networking Troubleshooting
- ping google.com – check connectivity
- ip addr – show IP details
- curl http://url – test HTTP endpoint

---

## Permissions & Ownership
- ls -l – check permissions
- chmod 755 file – change permission
- chown user:group file – change ownership

---

## Notes
These commands are used daily while debugging
Linux servers in production environments.
