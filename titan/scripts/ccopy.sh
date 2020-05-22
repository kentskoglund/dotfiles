#!/bin/sh

cp -f /home/kent/.zshrc /home/kent/Nextcloud/Linux/myconfig/titan/ &&
cp -f /home/kent/.vimrc /home/kent/Nextcloud/Linux/myconfig/titan/ &&
cp -f /home/kent/.config/aliasrc /home/kent/Nextcloud/Linux/myconfig/titan/.config/ &&
rsync -zah --delete  /home/kent/.config/alacritty/ /home/kent/Nextcloud/Linux/myconfig/titan/.config/alacritty/ &&
rsync -zah --delete  /home/kent/.config/nvim/ /home/kent/Nextcloud/Linux/myconfig/titan/.config/nvim/ &&
rsync -zah --delete  /home/kent/.config/terminator/ /home/kent/Nextcloud/Linux/myconfig/titan/.config/terminator/ &&
rsync -zah --delete  /home/kent/.vim/ /home/kent/Nextcloud/Linux/myconfig/titan/.vim/ &&
rsync -zah --delete  /home/kent/.config/zsh/ /home/kent/Nextcloud/Linux/myconfig/titan/.config/zsh/ &&
rsync -zah --delete  /home/kent/.local/share/remmina/ /home/kent/Nextcloud/Linux/myconfig/titan/.local/share/remmina/ &&
rsync -zah --delete  /home/kent/scripts/ /home/kent/Nextcloud/Linux/myconfig/titan/scripts/ &&
	echo -e "======= \e[32mOppdatering ferdig\e[39m =======" ||
	echo "***\e[91m Copy failed ***"

