#!/bin/bash
results=($(mysql -udeveloper -padmin@123 -c -h 192.168.1.122 -Bse "show databases;"))
cnt=${#results[@]}                                                           
echo $cnt
for (( i=0 ; i<cnt ; i++ ))                                                    
do echo "Record No. $i: ${results[$i]}"                                      
done

