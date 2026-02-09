# Day 15 – Networking Concepts: DNS, IP, Subnets & Ports

---

## Overview
Today I focused on core networking fundamentals required for DevOps troubleshooting.
This day combined **concept clarity + real hands-on validation** using Linux commands.

---

## Task 1: DNS – How Names Become IPs

### What happens when we type `google.com`?
When a domain name is entered, the system checks local cache first.
If not found, it queries the configured DNS resolver.
DNS resolves the domain to an IP address using records like A/AAAA.
The browser then connects to that IP over TCP/IP to fetch the content.

### DNS Record Types
- **A** – Maps domain name to IPv4 address  
- **AAAA** – Maps domain name to IPv6 address  
- **CNAME** – Alias of another domain name  
- **MX** – Mail server for the domain  
- **NS** – Authoritative name servers for the domain  


### DNS Hands-on (`dig`)
`dig google.com`

#### Observation:
- A record: 216.58.200.174
- TTL: 118 seconds

---

## Task 2: IP Addressing
#### What is IPv4?
- IPv4 is a 32-bit address written in dotted decimal format
- (e.g., 192.168.1.10), divided into network and host portions.

#### Public vs Private IP
- Public IP: Internet-routable (e.g., 8.8.8.8)
- Private IP: Internal network use (e.g., 172.20.4.33)

#### Private IP Ranges
10.0.0.0 – 10.255.255.255
172.16.0.0 – 172.31.255.255
192.168.0.0 – 192.168.255.255

Hands-on
`ip addr show`
`hostname -I`

#### Observation:
- Private IP detected: 172.20.4.33

---

## Task 3: CIDR & Subnetting
What does /24 mean?
/24 means 24 bits are used for the network part, leaving 8 bits for hosts.

#### Usable Hosts
/24 → 254 usable hosts
/16 → 65,534 usable hosts
/28 → 14 usable hosts


### Why Subnetting?
Subnetting helps:
Efficient IP utilization
Network isolation
Better security & traffic control

#### CIDR Table
CIDR	Subnet Mask	        Total IPs	Usable Hosts
/24	    255.255.255.0	     256	     254
/16	    255.255.0.0	         65,536	     65,534
/28	    255.255.255.240      16	         14

---

## Task 4: Ports – The Doors to Services
#### What is a Port?
- A port identifies a specific service running on a machine.
- Multiple services can run on one IP using different ports.

Common  Ports
Port	Service
22	    SSH
80	    HTTP
443	    HTTPS
53	    DNS
3306	MySQL
6379	Redis
27017	MongoDB

Hands-on

`ss -tulpn`

#### Observation:

Port 53 → DNS
Port 22 → SSH

---


### Hands-on Port Debugging (Real Scenario)
#### Initially SSH was not reachable:

`nc -zv localhost 22`
- Error: Connection refused


- After starting SSH service:

`ss -tulpn | grep :22`
`nc -zv localhost 22`


### Result:
- Port listening
Connection successful

---

### What I Learned
- Networking issues are mostly service, port, or DNS related
- ss, dig, and nc give fastest troubleshooting signals
- Always validate concepts with hands-on commands