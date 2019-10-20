#!/bin/bash

lockBackground=/home/Downloads/lock.png
background=/home/Downloads/Background.jpg

if [[ -f "$lockBackground" ]]; then
  i3lock -i $lockBackground
else
  convert  -channel RGBA -blur 0x4 -spread 1 $background $lockBackground; i3lock -i $lockBackground
fi
