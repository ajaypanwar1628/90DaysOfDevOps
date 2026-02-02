# Day 09 – Linux User & Group Management Challenge

## Users & Groups Created
**Users:** tokyo, berlin, professor, nairobi  
**Groups:** developers, admins, project-team

---

## Group Assignments
- tokyo → developers, project-team
- berlin → developers, admins
- professor → admins
- nairobi → project-team

Verified using:
groups <username>

---

## Directories Created

| Directory | Group | Permissions |
|---------|------|------------|
| /opt/dev-project | developers | 775 |
| /opt/team-workspace | project-team | 775 |

---

## Commands Used

### User Management
useradd -m <user>  
passwd <user>  
cat /etc/passwd  
ls /home  

### Group Management
groupadd <group>  
usermod -aG <group> <user>  
groups <user>  

### Permissions & Testing
mkdir /opt/<dir>  
chgrp <group> <dir>  
chmod 775 <dir>  
sudo -u <user> touch <file>

---

## What I Learned
- Linux user and group management is critical for access control
- Shared directories require correct group ownership and permissions
- `usermod -aG` is essential to avoid overwriting group memberships
- Group-based permissions simplify team collaboration in production

---

## Real-World DevOps Use
- Managing access for teams on servers
- Securing shared application directories
- Implementing least-privilege access models
