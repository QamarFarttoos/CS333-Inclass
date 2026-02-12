#!/bin/bash

# Professional completed ping sweep script
# Usage: ./pingsweep-completed.sh <subnet>
# Example: ./pingsweep-completed.sh 192.168.1

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <subnet>"
    echo "Example: $0 192.168.1"
    exit 1
fi

subnet=$1

echo "Starting ping sweep on $subnet.0/24"

for ip in {1..254}
do
    ping -c 1 -W 1 $subnet.$ip > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "Host $subnet.$ip is UP"
    fi
done

echo "Ping sweep complete."
