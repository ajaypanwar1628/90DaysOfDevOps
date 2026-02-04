# Day 12 – Revision & Consolidation (Days 01–11)

## Objective
Day 12 was a breather day focused on revising and consolidating everything learned
from Days 01 to 11.  
The goal was to strengthen fundamentals and ensure better retention before moving ahead.

---

## 1. Mindset & Learning Plan Review
I revisited my Day 01 learning plan and confirmed that my direction is correct.

- Focus on strong Linux fundamentals
- Hands-on practice with real commands
- Learning by troubleshooting instead of memorization

✅ No major changes required, just more consistency and revision.

---

## 2. Processes & Services Revision
I re-ran basic service and process-related commands to refresh my understanding.

### Commands Practiced

ps aux | head
systemctl status ssh
journalctl -u ssh -n 10
Observation
ps helps quickly identify running processes

systemctl status shows service health instantly

journalctl is the first place to check when services misbehave

---

### 3. File & Permission Skills Practice
Revised common file operations used daily in DevOps.

Commands Practiced
mkdir test-dir
echo "Revision test" >> test.txt
ls -l test.txt
chmod 644 test.txt
Observation
Permission changes should always be verified using ls -l

Understanding read/write/execute is critical for production safety

---

### 4. Ownership & User/Group Sanity Check
Recreated a small ownership scenario from Day 09 & 11.

id tokyo
ls -l test.txt
sudo chown tokyo:developers test.txt
Observation
Ownership issues are a common cause of permission errors

Always verify user and group before applying chown

---

### 5. Cheat Sheet – Top 5 Commands I’ll Use First
ls -l – permissions & ownership check

systemctl status <service> – service health

journalctl -u <service> – log analysis

ps aux – process troubleshooting

chmod / chown – fixing access issues

---

## Mini Self-Check
### 1) Top 3 Time-Saving Commands
ls -l → instant permission visibility

systemctl status → fast service check

journalctl → real cause of failures

---

### 2) Service Health Check Flow
systemctl status <service>
journalctl -u <service> -n 20
ps aux | grep <service>

---

### 3) Safe Ownership & Permission Change Example
sudo chown user:group filename
chmod 640 filename

---

### 4) Focus for Next 3 Days
Shell scripting basics
Networking fundamentals
Deeper service troubleshooting

---

## Key Takeaways
Revision is as important as learning
Linux basics repeat everywhere in DevOps

#### Strong fundamentals = faster troubleshooting