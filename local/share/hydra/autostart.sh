#!/bin/sh

lxsession &
mpd &
dunst &
mpcscroll &
hydrablocks &
picom --experimental-backends &
xwallpaper --zoom /home/nytou/pics/wallpapers/sakura.jpg &
# xwinwrap -g 1920x1080+0+0 -b -ov -fs -nf -ni -fdt -d -- mpv -wid WID /home/nytou/pics/gifs/bg.gif --loop --keepaspect=no &
discord &
sleep 3 && pkill -RTMIN+10 hydrablocks &
