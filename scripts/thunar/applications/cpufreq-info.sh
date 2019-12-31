#!/bin/bash

sudo cpupower frequency-info | grep current | grep assert | awk '{print $4}'
