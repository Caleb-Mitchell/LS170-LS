#!/bin/bash

function server () {
  while true
  do
    read -r method path version
    if [[ $method = "GET" ]]
    then
      echo "HTTP/1.1 200 OK"
    else
      echo "HTTP/1.1 400 Bad Request"
    fi
    # echo "You said: $message"
  done
}

coproc SERVER_PROCESS { server; }

netcat -lvp 2345 <&"${SERVER_PROCESS[0]}" >&"${SERVER_PROCESS[1]}"
