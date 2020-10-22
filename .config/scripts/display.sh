#!/bin/bash

DP21=$(xrandr -q | grep "DP2-1 connected" | wc -l)
DP23=$(xrandr -q | grep "DP2-3 connected" | wc -l)

if [ "$DP21" -gt 0 -a "$DP23" -gt 0 ]
then
  xrandr --output DP2-3 --mode 1920x1080 --rate 60.00 --output DP2-1 --mode 1920x1080 --rate 60.00 --right-of DP2-3 --output eDP1 --off

else
  xrandr --output eDP1 --mode 1920x1080 --rate 60.00
fi

echo $DP21
echo $DP23
