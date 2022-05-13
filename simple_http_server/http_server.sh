#!/bin/bash

function server () {
  while true
  do
    read -r message
    echo "You said: $message"
  done
}

coproc SERVER_PROCESS { server; }

netcat -lvp 2345 <&"${SERVER_PROCESS[0]}" >&"${SERVER_PROCESS[1]}"
