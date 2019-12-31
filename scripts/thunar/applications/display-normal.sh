#!/bin/bash

# set display to laptop display only
# set audio default out to built in stereo

xrandr --output eDP1 --mode 1920x1080 --output HDMI1 --off
# pacmd list-sinks 
pacmd set-default-sink "alsa_output.pci-0000_00_1b.0.analog-stereo"

