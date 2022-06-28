#!/bin/sh

# xdotool key 'Super_L+shift+w'

xset s off
xset -dpms
xset s noblank
nitrogen --restore

if [ ! $(pgrep pipewire) ]; then
    /usr/bin/pipewire &
    # /usr/bin/pipewire-pulse &
    # /usr/bin/pipewire-media-session &
fi

if [ ! $(pgrep hydrablocks) ]; then
    hydrablocks &
fi

if [ ! $(pgrep zscroll) ]; then
    mpcscroll &
fi

if [ ! $(pgrep sxhkd) ]; then
    sxhkd &
fi

xcalib -s 0 $HOME/docs/BenQ.icm
$HOME/.screenlayout/double.sh

picom --experimental-backend &
mpd &
dunst &
lxpolkit &
# xwinwrap -g 1920x1080+0+0 -b -ov -fs -nf -ni -fdt -d -- mpv -wid WID /home/nytou/pics/gifs/bg.gif --loop --keepaspect=no &
discord &
unclutter -idle 15 &
sleep 3 && pkill -RTMIN+10 hydrablocks
