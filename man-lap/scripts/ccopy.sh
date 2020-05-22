#!/bin/bash

cp -fv /home/kent/.i3/config /home/kent/Nextcloud/Linux/myconfig/man-lap/i3wm/i3/ &&
	cp -fv /home/kent/.config/i3status/config /home/kent/Nextcloud/Linux/myconfig/man-lap/i3wm/i3status/ &&
	cp -fv /home/kent/.config/i3blocks/config /home/kent/Nextcloud/Linux/myconfig/man-lap/i3wm/i3blocks/ &&
	cp -fv /home/kent/.config/alacritty/alacritty.yml /home/kent/Nextcloud/Linux/myconfig/man-lap/alacritty/ &&
	cp -fv /home/kent/.config/nvim/init.vim /home/kent/Nextcloud/Linux/myconfig/man-lap/nvim/init.vim &&
	cp -fv /home/kent/.config/terminator/config /home/kent/Nextcloud/Linux/myconfig/man-lap/terminator/ &&
	cp -fv /home/kent/.vimrc /home/kent/Nextcloud/Linux/myconfig/man-lap/vim/ &&
	echo -e "======= \e[32mOppdatering ferdig\e[39m =======" ||
	echo "***\e[91m Copy failed ***"
