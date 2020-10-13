#!/bin/bash

cpucount=$(grep "rocessor" /proc/cpuinfo | wc -l)
echo "CPU count: $cpucount"
