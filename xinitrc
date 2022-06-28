#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# /etc/lightdm/Xsession &

# xset +fp /usr/share/fonts
# xset +fp /home/nytou/.fonts
# xset fp rehash

xrdb merge $HOME/.config/x11/Xresources

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="-"
export CARGO_HOME="$HOME/.local/share/cargo"
export GOPATH="$HOME/.local/share/go"
export HISTFILE="$HOME/.local/share/history"

export QT_QPA_PLATFORMTHEME=qt6ct
# export SDL_JOYSTICK_HIDAPI=0
export _JAVA_AWT_WM_NONPARENTING=1
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="librewolf"
export FILEBROWSER="Thunar"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/nytou/.local/share/cargo/bin:/home/nytou/scripts:/home/nytou/.local/bin:/home/nytou/.dotnet/tools/"

exec hydra
