#!/bin/sh

XDG_CONFIG_HOME="$HOME/.config"
XDG_DATA_HOME="$HOME/.local/share"

echo "Installing nytou dots"

trap "" INT

mkdir -p "$XDG_CONFIG_HOME"

backupdir="backup-$(date +%s)"
mkdir "$HOME/$backupdir"

mkdir /tmp/dots

backup() {
    echo "Backing up .config"
    mv -r "$XDG_CONFIG_HOME" "$backupdir"
    mkdir -p "$XDG_CONFIG_HOME"
}

clone () {
    echo "Cloning dots"
    git clone https://github.com/nytouu/dots.git /tmp/dots

    echo "Cloning hydra"
    mkdir -p "$HOME/git/hydra"
    git clone https://github.com/nytouu/hydra.git "$HOME/git/hydra"

    echo "Cloning hydrablocks"
    mkdir -p "$HOME/git/hydrablocks"
    git clone https://github.com/nytouu/hydrablocks.git "$HOME/git/hydrablocks"

    echo "Cloning st"
    mkdir -p "$HOME/git/st"
    git clone https://github.com/nytouu/st.git "$HOME/git/st"

    echo "Cloning dmenu"
    mkdir -p "$HOME/git/dmenu"
    git clone https://github.com/nytouu/dmenu.git "$HOME/git/dmenu"

    echo "Cloning daynight"
    mkdir -p "$HOME/git/daynight"
    git clone https://github.com/nytouu/dmenu.git "$HOME/git/daynight"

    echo "Cloning fonts"
    mkdir -p "$HOME/git/SFMonoLig"
    mkdir -p "$HOME/git/nonicons"
    git clone https://github.com/shaunsingh/SFMono-Nerd-Font-Ligaturized.git "$HOME/git/SFMonoLig"
    git clone https://github.com/yamatsum/nonicons.git "$HOME/git/nonicons"

    echo "Cloning SDDM Theme"
    doas git clone https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/
}

configure() {
    echo "Configuring..."

    echo "Moving fonts"
    mkdir -p "$HOME/.fonts"
    cp -r "$HOME/git/SFMonoLig" "$HOME/.fonts"
    cp -r "$HOME/git/nonicons" "$HOME/.fonts"
    fc-cache -f

    echo "Moving config files"
    cp /tmp/dots/xinitrc "$HOME/.xinitrc"
    cp /tmp/dots/zshrc "$HOME/.zshrc"
    cp -r /tmp/dots/config "$XDG_CONFIG_HOME"
    cp -r /tmp/dots/local "$XDG_DATA_HOME"
    cp -r /tmp/dots/scripts "$HOME/scripts"
    cp -r /tmp/dots/usr/share/pipewire "$XDG_CONFIG_HOME/pipewire"

    doas cp /tmp/dots/usr/share/xsessions/hydra.desktop /usr/share/xsessions/hydra.desktop
    doas cp /tmp/dots/etc/sddm.conf /etc/sddm.conf
    doas cp /tmp/dots/etc/doas.conf /etc/doas.conf

    echo "Success (normally) :) "
}

backup
clone
configure
