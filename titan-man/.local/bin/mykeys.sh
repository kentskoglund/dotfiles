#!/bin/sh

i3-msg -t get_config | sed -ne '/^[ \t]*bindsym/{
	s/bindsym *//;
	s/--release *//;
	s/\([^ \t]\) /\1 ⇒ /p
}'

