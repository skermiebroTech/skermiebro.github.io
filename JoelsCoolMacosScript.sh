#!/bin/bash

# Connect to WiFi network
networksetup -setairportnetwork en0 G1-Retail Ebayunit28

# Wait for a few seconds to ensure the connection is established
sleep 5

# Run sudo profiles renew -type enrollment
sudo profiles renew -type enrollment

# Check battery cycles
battery_cycles=$(system_profiler SPPowerDataType | grep "Cycle Count" | awk '{print $3}')

echo "Battery Cycles: $battery_cycles"
