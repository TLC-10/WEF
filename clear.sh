#!/bin/bash

# Colors
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
grayColour="\e[0;37m\033[1m"

# Main Function
if [ "$(id -u)" == "0" ]; then
  for name in $(ls /opt/wef/main/captures); do
    rm -rf /opt/wef/main/captures/$name 2>/dev/null
    em /opt/wef/main/logs/* 2>/dev/null
  done

  sleep 0.4
  echo -e "\n${blueColour}[${endColour}${greenColour}+${endColour}${blueColour}] Information and logs cleared\n${endColour}"
else
  echo -e "${blueColour}[${endColour}${redColour}X${endColour}${blueColour}] Please, execute the script as root${endColour}"
fi
