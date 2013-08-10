#!/bin/bash

#QUICK AND DIRTY. FOR CENTOS LINUX.

echo -e "\n"

echo "It is now " $(date +%Y-%m-%d' '%H:%M)

df -H

output=$(df -H | awk '{ print $5 " " $1 }')

df -H | awk '{ print $5 " " $1 }' | while read output;
do
  echo $output
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1 )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $usep -ge 85 ]; then
    echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)" |
     mail -s "Alert: Almost out of disk space $usep%" teamviima@gmail.com
  fi
done

