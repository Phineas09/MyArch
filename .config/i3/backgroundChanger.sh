#!/bin/bash

currentHour=$(date +%H)
target="/home/Downloads/Background.jpg"


function getDayTime() {

  if ((6<=$currentHour && $currentHour<=10)); then
    echo "Case 1"
    dayTime="morning"
  elif ((10< $currentHour && $currentHour<=14)); then
    echo "Case 2"
    dayTime="noon"
  elif ((14< $currentHour && $currentHour<=16)); then
    echo "Case 3"
    dayTime="afterNoon"
  elif ((16< $currentHour && $currentHour<=21)); then
    echo "Case 4"
    dayTime="evening"
  elif ((21< $currentHour && $currentHour<=5)); then
    echo "Case 5"
    dayTime="night"
  else
    echo "Error"
  fi
}

getDayTime

dayTime="/home/Downloads/Backgrounds/${dayTime}Background.jpg"

rm -rf $target

cp $dayTime $target

