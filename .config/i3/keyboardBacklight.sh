#!/bin/bash

declare -i lightValue

path="/sys/class/leds/asus::kbd_backlight/brightness"

lightValue=$(cat $path)

function modifyValue() {
  if [[ $lightValue -le 0 ]]; then
    echo 0 > $path
    return
  fi
  if [[ $lightValue -le 3 ]]; then
    echo $lightValue > $path
  fi

}

let lightValue+=$1

#function setValue() {
#  if [[ $1 == "ana" ]]; then
#    let lightValue-=1
#    echo "case1"
#  else
#    let lightValue+=1
#    echo "case 2"
#  fi
#}

#setValue $1
modifyValue





