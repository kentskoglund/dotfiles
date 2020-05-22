#!/bin/bash
alacritty -d 250 80 -e cmatrix &
sleep 0.4
i3-msg fullscreen
#i3lock -n; i3-msg kill
i3lock -n; killall cmatrix
