#!/bin/bash

#DATE=$(date) 

Start_Time=$(date +%s)

sleep 10

End_Time=$(date +%s)

Total_Time=$((End_Time-$Start_Time))

echo "Script executed in: $Total_Time in seconds"