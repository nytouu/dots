#!/bin/sh

$HOME/.screenlayout/tv\ extend.sh

xset m 0 0 
xset s off
xset -dpms
xset s noblank
setxkbmap fr
nitrogen --restore

/usr/bin/pipewire &

hydrablocks &
picom &
mpd &
mpcscroll &
dunst &
lxpolkit &
# xwinwrap -g 1920x1080+0+0 -b -ov -fs -nf -ni -fdt -d -- mpv -wid WID /home/nytou/pics/gifs/bg.gif --loop --keepaspect=no &
discord &
sxhkd &
otd &
unclutter -idle 15 &
sleep 3 && pkill -RTMIN+10 hydrablocks
