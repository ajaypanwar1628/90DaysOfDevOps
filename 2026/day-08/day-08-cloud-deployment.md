# Day 08 – AWS EC2, Bastion Host, Docker & Nginx Hands-On Practice



## Overview

Today’s practice focused on real-world Linux and AWS scenarios involving secure access, containerization, and web service deployment.  

I worked on multiple EC2 instances across regions and implemented a jump server (bastion host) architecture, Docker-based Nginx container, and Nginx service troubleshooting.



---



## Environment Details

- **Cloud Provider:** AWS

- **EC2 Instances:**

&nbsp; - `tws1` – Mumbai (ap-south-1)

&nbsp; - `tws2` – Oregon (us-west-2)

- **OS:** Ubuntu Linux

- **Instance Type:** t2.micro



---



## Task 1: Bastion Host (Jump Server) Setup



### What I Did

- Created **two EC2 instances in different AWS regions**

- Configured `tws1` as a **Bastion / Jump Server**

- Generated SSH key pair manually using `ssh-keygen`

- Copied **public key** to `tws2` under:

&nbsp; ```bash

&nbsp; ~/.ssh/authorized_keys



#### Accessed tws2 only via tws1, not directly from local



### Key Commands Used

ssh-keygen

ssh -i tws.pem ubuntu@tws1-public-ip

ssh ubuntu@tws2-private-ip





### Observation



* This setup improves security by restricting direct SSH access
* Bastion host acts as a controlled entry point


---


## Task 2: Docker Installation & Nginx Container (tws2)

### What I Did



* Updated packages and installed Docker
* Started Docker service
* Pulled official nginx image
* Created and ran an Nginx container
* Verified container and Docker version





### Commands Used

sudo apt-get update

sudo apt-get install docker.io -y

sudo systemctl start docker

docker -v

docker pull nginx

docker run -d nginx

docker ps



---



## Observation



* Docker makes application deployment fast and consistent
* Containers start much quicker compared to traditional services


---


## Task 3: Nginx Installation on Host (tws1)


#### What I Did



* Installed Nginx directly on EC2 host
* Started and verified service status
* Checked logs using journalctl and /var/log/nginx
* Initially website was not accessible
* Identified missing Security Group rule
* Allowed port 80 in inbound rules
* Successfully accessed Nginx from browser



## Commands Used

sudo apt-get install nginx -y

sudo systemctl start nginx

sudo systemctl status nginx

sudo tail -n 20 /var/log/nginx/access.log

sudo tail -n 20 /var/log/nginx/error.log

journalctl -u nginx -n 20





## Observation



* Even if service is running, network rules can block access
* Security Groups are a common real-world issue during deployments
* Logs & File Handling
* Created log files using redirection


---


### Copied logs from EC2 to local system using scp



`scp -i tws.pem ubuntu@ec2-ip:/home/ubuntu/nginx-accesslogs.txt .`

`scp -i tws.pem ubuntu@ec2-ip:/home/ubuntu/nginx-errorlogs.txt .



---



## What I Learned Today



* Real-world use of Bastion Hosts
* Secure SSH key-based authentication
* Difference between host-based Nginx vs containerized Nginx
* Importance of Security Groups in AWS
* Log analysis for service troubleshooting
* End-to-end debugging mindset



---



## What I Observed



* Most issues are not service-related, but configuration-related
* Logs + service status + network rules = complete troubleshooting flow



---



## Conclusion



* This practice strengthened my understanding of AWS, Linux, Docker, and Nginx from a production perspective.
* Hands-on debugging helped me think like a DevOps / Cloud Engineer, not just execute commands.



---

