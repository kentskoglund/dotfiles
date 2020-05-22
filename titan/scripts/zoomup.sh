#!/bin/sh
echo "Zoom updater"
wget https://zoom.us/client/latest/zoom_amd64.deb
dpkg -i zoom_amd64.deb
rm -f zoom_amd64.deb 2>/dev/null
