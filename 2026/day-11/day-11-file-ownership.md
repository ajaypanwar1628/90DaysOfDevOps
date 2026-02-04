# Day 11 – File Ownership Challenge (chown & chgrp)

## Objective
To understand and practice Linux file and directory ownership using chown and chgrp commands.

---

## Files & Directories Created
- devops-file.txt
- team-notes.txt
- project-config.yaml
- app-logs/
- heist-project/
- bank-heist/

---

## Ownership Changes Performed

### devops-file.txt
- Owner changed from ajaypanwar → tokyo → berlin

### team-notes.txt
- Group changed to heist-team

### project-config.yaml
- Owner: professor
- Group: heist-team

### app-logs/
- Owner: berlin
- Group: heist-team

### heist-project/ (recursive)
- Owner: professor
- Group: planners

### bank-heist files
- access-codes.txt → tokyo:vault-team
- blueprints.pdf → berlin:tech-team
- escape-plan.txt → nairobi:vault-team

---

## Commands Used
```bash
ls -l
sudo chown user file
sudo chgrp group file
sudo chown user:group file
sudo chown -R user:group directory
