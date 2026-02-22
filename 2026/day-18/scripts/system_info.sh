#!/bin/bash
set -euo pipefail

print_header() {
  echo "=============================="
  echo "$1"
  echo "=============================="
}

system_info() {
  print_header "System Info"
  hostnamectl
}

uptime_info() {
  print_header "Uptime"
  uptime
}

disk_usage() {
  print_header "Top Disk Usage"
  df -h | head -5
}

memory_usage() {
  print_header "Memory Usage"
  free -h
}

cpu_process() {
  print_header "Top CPU Processes"
  ps aux --sort=-%cpu | head -5
}

main() {
  system_info
  uptime_info
  disk_usage
  memory_usage
  cpu_process
}

main

