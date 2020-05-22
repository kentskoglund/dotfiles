#!/bin/bash

rsync -ah /home/kent/.config/aliasrc /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/ &&
rsync -ah /home/kent/.config/mimeapps.list /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/ &&
rsync -ah /home/kent/.config/picom.conf /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/ &&
rsync -ah /home/kent/.gitconfig /home/kent/Nextcloud/Linux/dotfiles/titan-man/ &&
rsync -ah /home/kent/.vimrc /home/kent/Nextcloud/Linux/dotfiles/titan-man/ &&
rsync -ah /home/kent/.zshrc /home/kent/Nextcloud/Linux/dotfiles/titan-man/ &&
rsync -ah /home/kent/.Xresources /home/kent/Nextcloud/Linux/dotfiles/titan-man/ &&
rsync -ah /home/kent/.xinitrc /home/kent/Nextcloud/Linux/dotfiles/titan-man/ &&
rsync -ah --delete --exclude ".git" /home/kent/.i3/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.i3/ &&
rsync -ah --delete --exclude ".git" /home/kent/.local/bin/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.local/bin/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/i3status/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/i3status/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/i3blocks/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/i3blocks/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/alacritty/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/alacritty/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/conky/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/conky/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/dunst/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/dunst/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/nvim/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/nvim/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/ranger/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/ranger/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/terminator/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/terminator/ &&
rsync -ah --delete --exclude ".git" /home/kent/.vim/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.vim/ &&
rsync -ah --delete --exclude ".git" /home/kent/.config/zsh/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/.config/zsh/
rsync -ah --delete --exclude ".git" /home/kent/git/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/git/
rsync -ah --delete --exclude ".git" /home/kent/scripts/ /home/kent/Nextcloud/Linux/dotfiles/titan-man/scripts/
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
