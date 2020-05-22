#!/bin/sh

# The famous "get a menu of emojis to copy" script.

# Must have xclip installed to even show menu.
echo "step 1"
xclip -h 2>/dev/null || exit 1
echo "step 2"
chosen=$(cut -d ';' -f1 ${XDG_DATA_HOME:-$HOME/.local/share}/misc/emoji | dmenu -i -l 20 | sed "s/ .*//")
echo "step 3"
[ "$chosen" != "" ] || exit

# If you run this command with an argument, it will automatically insert the character.
echo "step 4"
if [ -n "$1" ]; then
	xdotool key Shift+Insert
else
	echo "$chosen" | tr -d '\n' | xclip -selection clipboard
	notify-send "'$chosen' copied to clipboard." &
fi
