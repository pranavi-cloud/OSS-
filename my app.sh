#!/bin/bash
# OSS Capstone Audit: Git
# Updated by: pranavi (24BCY10131)

# Student Details
STUDENT_NAME="pranavi"
REG_NO="24BCY10131"

# 1. Identity Check
KERNEL=$(uname -r)
DISTRO=$(cat /etc/os-release | grep "PRETTY_NAME" | cut -d'=' -f2 | tr -d '"')
UPTIME=$(uptime -p)

# 2. System Health Check (Required for the Audit)
LOAD=$(uptime | awk -F'load average:' '{ print $2 }' | cut -d, -f1 | xargs)
DISK_USAGE=$(df -h / | grep '^/dev/' | head -1 | awk '{print $5}')

echo "========================================"
echo "    CAPSTONE AUDIT - SYSTEM STATUS      "
echo "========================================"
echo "Auditor Name : $STUDENT_NAME"
echo "Reg Number   : $REG_NO"
echo "Operating Sys: $DISTRO"
echo "Kernel Ver   : $KERNEL"
echo "System Uptime: $UPTIME"
echo "----------------------------------------"
echo "System Load  : $LOAD"
echo "Disk Usage   : $DISK_USAGE"
echo "----------------------------------------"
echo "RESULT: Identity verified for $STUDENT_NAME"
echo "========================================"