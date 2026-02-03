# Day 10 – File Permissions & File Operations Challenge

## Files Created
- devops.txt
- notes.txt
- script.sh
- project/ (directory)

---

## Reading Files
- Read notes.txt using `cat`
- Viewed script.sh in read-only mode using `vim -R`
- Viewed system users using `head` and `tail` on `/etc/passwd`

---

## Permission Changes

### script.sh
- Before: rw-r--r--
- After: rwxr-xr-x
- Executed successfully using `./script.sh`

### devops.txt
- Set to read-only
- Writing to file resulted in `Permission denied`

### notes.txt
- Permissions set to 640 (rw-r-----)

### project/
- Directory created with 755 permissions

---

## Commands Used
touch, cat, echo, vim  
ls -l, chmod, head, tail  

---

## What I Learned
- Linux permissions are based on owner, group, and others
- Execute permission is mandatory to run scripts
- Incorrect permissions can block file access and execution
- chmod numeric values provide precise permission control

---

## Real-World DevOps Use
- Securing scripts and configuration files
- Controlling access in shared environments
- Preventing accidental file modifications in production
