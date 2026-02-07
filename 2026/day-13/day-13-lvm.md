# Day 13 – Linux Volume Management (LVM)

## Objective
The goal of Day 13 was to understand Linux Logical Volume Management (LVM)
and practice creating, mounting, and extending storage volumes dynamically.

---

## Environment
- OS: Linux (Ubuntu / WSL / EC2)
- Storage: Loop device (virtual disk)
- User: root

---

## Step 1: Virtual Disk Creation
### A 1GB virtual disk was created for LVM practice using a loop device.

#### Commands:
- dd if=/dev/zero of=/tmp/disk1.img bs=1M count=1024
- losetup -fP /tmp/disk1.img
- losetup -a

---

## Step 2: Initial Storage Check
### Checked existing disks and LVM state.

#### Commands:
- lsblk
- pvs
- vgs
- lvs
- df -h

#### Observation:
- No existing LVM volumes were present initially.

---

## Step 3: Physical Volume (PV)
### the loop device into a Physical Volume.

#### Commands:
- pvcreate /dev/loop0
- pvs

---

##  4: Volume Group (VG)
### Created a Volume Group named devops-vg.

#### Commands:
- vgcreate devops-vg /dev/loop0
- vgs

---

##  5: Logical Volume (LV)
### Created a Logical Volume named app-data.

#### Commands:

- lvcreate -L 500M -n app-data devops-vg
- lvs

---

## Step 6: Format & Mount
### Formatted the LV and mounted it.

#### Commands:
- mkfs.ext4 /dev/devops-vg/app-data
- mkdir -p /mnt/app-data
- mount /dev/devops-vg/app-data /mnt/app-data
- df -h /mnt/app-data

---

##  7: Extend Logical Volume
### Extended the logical volume and resized filesystem without unmounting.

#### Commands:
- lvextend -L +200M /dev/devops-vg/app-data
- resize2fs /dev/devops-vg/app-data
- df -h /mnt/app-data

---

## What I Learned
- LVM allows dynamic resizing of storage without downtime
- Physical Volume → Volume Group → Logical Volume flow
- Filesystems can be resized online using resize2fs
- LVM is critical for production storage management

---