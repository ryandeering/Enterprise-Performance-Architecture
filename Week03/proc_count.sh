#!/bin/bash

# store the number of process
# into variable cnt
cnt=$(ps -ef | wc -l)
logfile="output.txt"

#
# bash integer equality operator
#
if ["$cnt" -gt "$1"];
then
  echo `date` "number of processes exceeded" >> $logfile
fi

