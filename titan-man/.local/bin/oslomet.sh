#!/bin/zsh

sleep 1.0
i3-msg 'workspace "7 "'
sleep 1.0
outlook-kent.sh &
sleep 1.0
i3-msg 'workspace "8 "'
sleep 1.0
zoom &
sleep 1.0
teams &
sleep 1.0
i3-msg 'workspace "1 "'
sleep 1.0
#terminator &
#sleep 1.0
google-chrome-stable --profile-directory="Profile 1" &
