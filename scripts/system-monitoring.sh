#!/bin/bash

echo "=============================="
echo " Linux Server Health Record "
echo "=============================="

echo " "
echo "Hostname:"
hostname

echo " "
echo "Uptime:"
uptime

echo " "
echo "Disk Usage:"
df -h /

echo " "
echo "Memory Usage:"
free -h

echo " "
echo "Load Average:"
uptime | awk -F'load average:' '{print $2}'

echo " "
echo "Top 5 CPU Processes:"
ps aux --sort=%cpu | head -6

echo " "
echo "Listening Ports:"
ss -tuln
