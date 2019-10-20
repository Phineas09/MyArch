#!/bin/bash

declare -i cValue

cValue=$(cat /sys/class/backlight/intel_backlight/brightness)

if [[ ! $cValue -eq 250 ]]; then
  cValue=$cValue-250
  exec echo "$cValue" > /sys/class/backlight/intel_backlight/brightness
fi

