#!/bin/sh

# /etc/lightdm/Xsession &

/usr/bin/pipewire &
# /usr/bin/pipewire-pulse &
# /usr/bin/pipewire-media-session &

xset +fp /usr/share/fonts &
xset +fp /home/nytou/.fonts &
xset fp rehash &

xrdb $HOME/.config/x11/Xresources &

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
# export CARGO_HOME="$HOME/.cargo"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"

export QT_STYLE_OVERRIDE=kvantum-dark
export SDL_JOYSTICK_HIDAPI=0
export _JAVA_AWT_WM_NONPARENTING=1
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export FILEBROWSER="pcmanfm"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/nytou/.cargo/bin:/home/nytou/scripts:/home/nytou/.local/bin"


exec hydra
