#!/bin/bash

# set display to mirror hdmi and laptop display
# set audio default out to hdmi

/home/bar/Scripts/applications/brightness-up.sh
/home/bar/Scripts/applications/cpufreq-up.sh

xrandr --output eDP1 --mode 1920x1080 --output HDMI1 --mode 1920x1080 --same-as eDP1 
# pacmd list-sinks 
pacmd set-default-sink "alsa_output.pci-0000_00_03.0.hdmi-stereo"
