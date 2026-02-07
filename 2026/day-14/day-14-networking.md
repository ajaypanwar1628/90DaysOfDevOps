# Day 14 – Networking Fundamentals & Hands-on Checks

---

## Objective
The goal of Day 14 was to understand core networking concepts and practice
essential troubleshooting commands used in real DevOps incidents.

---

## OSI vs TCP/IP (Quick Understanding)

- **OSI Model (7 Layers):**
  Physical → Data Link → Network → Transport → Session → Presentation → Application

- **TCP/IP Model (4 Layers):**
  Link → Internet → Transport → Application

- **Protocol Mapping:**
  - IP → Network / Internet layer
  - TCP/UDP → Transport layer
  - DNS, HTTP/HTTPS → Application layer

**Example:**  
`curl https://google.com`  
= Application (HTTP) → Transport (TCP) → Internet (IP)

---

## Hands-on Networking Checks

---

### Identity Check
- hostname -I

#### Observation: 
- Displays the IP address assigned to the system.

---

### Reachability Test
- ping -c 4 google.com

#### Observation:
- Target is reachable with low latency and no packet loss.

---

### Path Analysis
- traceroute google.com

#### Observation: 
- Shows the route packets take and highlights any slow hops.

---

### Listening Ports
- ss -tulpn

#### Observation: 
- SSH service is listening on port 22.

---

### DNS Resolution
- dig google.com

#### Observation: 
- Domain resolves correctly to public IP addresses.

---

### HTTP Status Check
- curl -I https://google.com

#### Observation: 
- Received HTTP 200/301 response confirming web service is reachable.

---
### Connections Snapshot
- netstat -an | head

#### Observation: 
- Displays LISTEN and ESTABLISHED connections.

---

## Reflection
Fastest signal command: ping and curl -I
If DNS fails: Inspect Application layer (DNS resolution)
If HTTP 500 occurs: Check application logs and service status
Follow-up checks: ss -tulpn, journalctl -u <service>

---

## What I Learned
How OSI and TCP/IP layers map to real commands
How to quickly validate network, DNS, and HTTP issues
A structured approach to network troubleshooting

---