#!/usr/bin/env bash

TEMPERATURE_FILE='/sys/class/thermal/thermal_zone0/temp'

curTemp=$(<$TEMPERATURE_FILE)

# Output as suggested in https://stackoverflow.com/a/30398256
echo "scale=2 ; $curTemp / 1000" | bc
