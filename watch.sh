#!/bin/sh
# sudo apt-get install inotify-tools

set -u

RED="\033[31m"
RESETCOLOR="\033[0m"

while true
do
  make || {
    echo -e "${RED}Build broken!${RESETCOLOR}"
  }

  inotifywait --event modify --recursive .
done
