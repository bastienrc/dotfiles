#!/bin/bash

killall mono &
slock &

sleep 3

echo -n mem > /sys/power/state
