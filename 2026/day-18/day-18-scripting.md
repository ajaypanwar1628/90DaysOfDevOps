# Day 18 - Shell Scripting: Functions & Intermediate Concepts

---

## 📜 Scripts Created

- functions.sh
- disk_check.sh
- strict_demo.sh
- local_demo.sh
- system_info.sh

---

## ⚙️ Functions Script

### Functions help in reusable and modular scripting.

![Functions Script Output](screenshots/Day18_Functions_sh.jpg)

---

## 💽 Disk Check Script

### Used to monitor disk usage using df command.

![Disk Check Output](screenshots/Day18_Disk_check_sh.jpg)

Commands used:

- df -h
- free -h

---

## 🧪 Strict Mode Demo

### Strict mode improves script reliability.

- set -e → Exit if command fails  
- set -u → Exit if undefined variable used  
- set -o pipefail → Pipeline fails if any command fails  

![Strict Mode Demo](screenshots/Day18_strict_demo_sh.jpg)

---

## 🧩 Local Variables Demo

### Local variables avoid accidental overwrites inside functions.

![Local Demo Output](screenshots/Day18_Local_demo_sh.jpg)

---

## 🖥️ System Info Script

### This script displays system details like memory, processes etc.

Commands used:

- df -h
- free -h
- ps aux

![System Info Output](screenshots/Day18_system_info_sh.jpg)

---

## 📚 What I Learned

- Functions make scripts reusable and cleaner
- Strict mode prevents hidden script failures
- Local variables improve script safety
- Monitoring commands help in DevOps troubleshooting

---