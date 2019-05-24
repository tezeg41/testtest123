#!/bin/bash
echo -n Cpu-
cat /proc/cpuinfo | grep name | head -n  1
echo
cat /proc/meminfo | grep MemTotal
cat /proc/meminfo | grep MemFree
echo
df -h
echo
echo -n anzahl laufender Prozesse:
./processes.sh
echo
cat /proc/version
