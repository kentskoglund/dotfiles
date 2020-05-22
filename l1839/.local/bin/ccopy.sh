#!/bin/bash


KOPI="/home/kent/Nextcloud/Linux/dotfiles/l1839"

rsync -ah /etc/modprobe.d/blacklist-pcspkr.conf $KOPI/scripts/ &&
rsync -ah $HOME/.config/aliasrc $KOPI/.config/ &&
rsync -ah $HOME/.config/mimeapps.list $KOPI/.config/ &&
rsync -ah $HOME/.config/picom.conf $KOPI/.config/ &&
rsync -ah $HOME/.p10k.zsh $KOPI/ &&
rsync -ah $HOME/.profile $KOPI/ &&
rsync -ah $HOME/.vimrc $KOPI/ &&
rsync -ah $HOME/.xinitrc $KOPI/ &&
rsync -ah $HOME/.zshrc $KOPI/ &&
rsync -ah $HOME/.Xresources $KOPI/ &&
rsync -ah --delete --exclude ".git" $HOME/.i3/ $KOPI/.i3/ &&
rsync -ah --delete --exclude ".git" $HOME/.local/bin/ $KOPI/.local/bin/ &&
rsync -ah --delete --exclude ".git" $HOME/.config/i3status/ $KOPI/.config/i3status/ &&
rsync -ah --delete --exclude ".git" $HOME/.config/i3blocks/ $KOPI/.config/i3blocks/ &&
rsync -ah --delete --exclude ".git" $HOME/.config/alacritty/ $KOPI/.config/alacritty/ &&
rsync -ah --delete --exclude ".git" $HOME/.config/conky/ $KOPI/.config/conky/ &&
rsync -ah --delete --exclude ".git" $HOME/.config/dunst/ $KOPI/.config/dunst/ &&
rsync -ah --delete --exclude ".git" $HOME/.config/nvim/ $KOPI/.config/nvim/ &&
rsync -ah --delete --exclude ".git" $HOME/.config/terminator/ $KOPI/.config/terminator/ &&
rsync -ah --delete --exclude ".git" $HOME/.vim/ $KOPI/.vim/ &&
rsync -ah --delete --exclude ".git" $HOME/.config/zsh/ $KOPI/.config/zsh/ &&
rsync -ah --delete --exclude ".git" $HOME/scripts/ $KOPI/scripts/
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
