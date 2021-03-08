#!/bin/bash

DP21=$(xrandr -q | grep "DP2-1 connected" | wc -l)
DP23=$(xrandr -q | grep "DP2-3 connected" | wc -l)

if [ "$DP21" -gt 0 -a "$DP23" -gt 0 ]
then
  xrandr --output eDP1 --mode 1920x1080 --pos 3840x0 --rotate normal --output DP1 --off --output DP2 --off --output DP2-1 --mode 1920x1080 --pos 1920x155 --rotate normal --output DP2-2 --off --output DP2-3 --primary --mode 1920x1080 --pos 0x155 --rotate normal --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
else
  xrandr --output eDP1 --mode 1920x1080 --rate 60.00
fi

echo $DP21
echo $DP23
