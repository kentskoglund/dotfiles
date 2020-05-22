#!/bin/sh

# This script helps me update my dot files regularly
# It exists in my anacrontab as:
#
# @daily  10      setup.backup            su -c /home/shubham1172/setup/scripts/backup.sh - shubham1172 >> /home/shubham1172/.anacronlogs 2>&1

cd ${HOME}/Nextcloud/Linux/dotfiles/
SCRIPT_PATH="/home/kent/.local/bin/ccopy.sh"

timestamp() {
  date +"%d-%m-%Y at %T"
}

# Kopier my stuff
"$SCRIPT_PATH"

# Vent litt så Nexcloud ikke er opptatt
sleep 300

# git push dotfiles
if [[ `git status --porcelain` ]]; then
	git pull origin master
	git add .
	git commit -m "automatic update: $(timestamp)"
	git push origin master
fi

paplay "/home/kent/Nextcloud/Android_share/Themes/Sounds/notifications/LowBattery.ogg"

if [ $? -eq 0 ]
then
  echo -e "\e[32m*** Git push vellykket ***\e[39m"
  notify-send -h string:fgcolor:#44ff44 "***  Git push vellykket  ***"
  exit 0
else
  echo -e "\e[101m *** Git push feilet\e[39m ***"
  notify-send -h string:fgcolor:#ff4444 "***  Git push feilet  ***"
  exit 1
fi


