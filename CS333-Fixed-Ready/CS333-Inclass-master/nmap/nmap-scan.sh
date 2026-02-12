#!/bin/bash

# Simple nmap scanning script
# Usage: ./nmap-scan.sh <target>

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target>"
    exit 1
fi

nmap -sP $1
