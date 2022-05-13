#!/bin/bash

function server () {
  while [ true ]
  do
    message = read


  done
}

coproc SERVER_PROCESS { server; }

netcat -lv 2345 <&${SERVER_PROCESS[0]} >&${SERVER_PROCESS[1]}
