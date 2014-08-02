#!/bin/bash

#Don't you hate it when your developing something locally and an application has taken your favorite localhost port?
#First checks out what is listening on the port gives as the first parameter, then checks what process that actually is.

function portcheck() {
  echo "LSOF OUTPUT FOR PORT "$1":"
  sudo lsof -n -i4TCP:$1
  PID=$(sudo lsof -n -i4TCP:$1 |grep -v 'PID' |awk '{print $2}')

  echo "PS AUX RESULT FOR PID "$PID":"
  sudo ps aux | grep $PID | grep -v 'grep'
}

