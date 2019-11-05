#!/bin/bash

lockBackground=/home/Downloads/lock.png
background=/home/Downloads/Background.jpg

mTimeBackground=$(stat -c %Z $background)
mTimeLock=$(stat -c %Z $lockBackground)


if [[ -f "$lockBackground" ]] && [[ $mTimeLock -ge $mTimeBackground ]]; then
  i3lock -i $lockBackground
else
  convert  -channel RGBA -blur 0x4 -spread 1 $background $lockBackground; i3lock -i $lockBackground
fi
