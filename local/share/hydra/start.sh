#!/bin/sh

# /etc/lightdm/Xsession &

xset +fp /usr/share/fonts
xset +fp /home/nytou/.fonts
xset fp rehash

xrdb $HOME/.config/x11/Xresources

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="-"
export CARGO_HOME="$HOME/.local/share/cargo"
export GOPATH="$HOME/.local/share/go"
export HISTFILE="$HOME/.local/share/history"

export QT_QPA_PLATFORMTHEME=qt5ct
# export SDL_JOYSTICK_HIDAPI=0
export _JAVA_AWT_WM_NONPARENTING=1
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export FILEBROWSER="pcmanfm"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/nytou/.cargo/bin:/home/nytou/scripts:/home/nytou/.local/bin"

# /usr/bin/pipewire &

exec hydra
