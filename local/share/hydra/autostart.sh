#!/bin/sh

lxsession &
mpd &
dunst &
killall zscroll ; mpcscroll &
killall hydrablocks ; hydrablocks &
picom --experimental-backends &
xclickroot -r rootclick &
nitrogen --restore
# xwinwrap -g 1920x1080+0+0 -b -ov -fs -nf -ni -fdt -d -- mpv -wid WID /home/nytou/pics/gifs/bg.gif --loop --keepaspect=no &
discord &
setxkbmap fr
xset m 0 0 
sleep 3 && pkill -RTMIN+10 hydrablocks ; xset s 0 0
