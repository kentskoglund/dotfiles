#!/bin/bash


rsync -ah /etc/modprobe.d/blacklist-pcspkr.conf Nextcloud/Linux/dotfiles/l1839/scripts/ &&
rsync -ah /home/kent/.config/aliasrc /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/ &&
rsync -ah /home/kent/.config/mimeapps.list /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/ &&
rsync -ah /home/kent/.config/picom.conf /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/ &&
rsync -ah /home/kent/.p10k.zsh /home/kent/Nextcloud/Linux/dotfiles/l1839/ &&
rsync -ah /home/kent/.profile /home/kent/Nextcloud/Linux/dotfiles/l1839/ &&
rsync -ah /home/kent/.vimrc /home/kent/Nextcloud/Linux/dotfiles/l1839/ &&
rsync -ah /home/kent/.xinitrc /home/kent/Nextcloud/Linux/dotfiles/l1839/ &&
rsync -ah /home/kent/.zshrc /home/kent/Nextcloud/Linux/dotfiles/l1839/ &&
rsync -ah /home/kent/.Xresources /home/kent/Nextcloud/Linux/dotfiles/l1839/ &&
rsync -ah --delete --exclude ".git" /home/kent/.i3/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.i3/ &&
rsync -ah --delete --exclude ".git" /home/kent/.local/bin/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.local/bin/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/i3status/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/i3status/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/i3blocks/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/i3blocks/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/alacritty/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/alacritty/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/conky/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/conky/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/dunst/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/dunst/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/nvim/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/nvim/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/terminator/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/terminator/ &&
rsync -ah --delete --exclude ".git" /home/kent/.vim/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.vim/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/zsh/ /home/kent/Nextcloud/Linux/dotfiles/l1839/.config/zsh/ &&
rsync -ah --delete --exclude ".git" /home/kent/scripts/ /home/kent/Nextcloud/Linux/dotfiles/l1839/scripts/
if [ $? -eq 0 ]
then
  echo -e "\e[32m*** Kopiering vellykket ***\e[39m"
  notify-send -h string:fgcolor:#44ff44 "***  Kopiering vellykket  ***"
  exit 0
else
  echo -e "\e[101m *** Kopiering feilet\e[39m ***"
  notify-send -h string:fgcolor:#ff4444 "***  Kopiering feilet  ***"
  exit 1
fi
