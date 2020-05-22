#!/bin/sh

qrencode -o - "`xclip -o`" -s 10 | display &
#notify-send "QR: `xclip -o`"

if [ $? -eq 0 ]
then
	echo echo 0
	notify-send "QR: `xclip -o`"
  exit 0
else
	echo 1
  notify-send -h string:fgcolor:#ff4444 "***  Clipboard tomt  ***"
  exit 1
fi
