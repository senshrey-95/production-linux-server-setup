#!/bin/bash

while true
do
  echo "$(date): Hello from my Production Linux Server" >> /var/log/hello.log
  sleep 30
done
