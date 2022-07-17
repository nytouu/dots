HISTFILE=~/.cache/zshhistfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
export KEYTIMEOUT=1
# export SVDIR=~/service
alias ls='exa --icons'
alias lst='exa --tree --icons'
alias lsa='exa -a --icons'
alias lsh='exa -l --icons'
alias tt='gio trash'
alias lstt='gio trash --list'
alias rstt='gio trash --restore'
alias emptty='gio trash --empty'
alias yt="ytmdl --skip-meta --disable-metaadd"
alias nv="nvim"
alias poweroff="doas poweroff"
alias reboot="doas reboot"
alias lg="lazygit"
alias cdnv="cd $HOME/.config/nvim"
alias sc="sc-im"
alias lv="lvim"
alias lf="lfrun"
alias rel="xrdb merge $HOME/.config/x11/Xresources && kill -USR1 $(pidof st)"

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

autoload -U colors && colors

setopt PROMPT_SUBST
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats '%b'
function getprompt ()
{
    if [[ ${vcs_info_msg_0_} == "" ]]; then
        gitmsg='%b'
    else
        gitmsg="%F{yellow} %F{green}$vcs_info_msg_0_ %b"
    fi

    echo "%(?.%B%F{green}➜ %f.%B%F{red}➜ %f) %F{cyan}%c $gitmsg%f"
}

# PROMPT="%F{135}%n%f %F{13}%~%f %F{197}>> %f"
# PROMPT="$arrow %f%b%F{cyan}%c$gitmsg %f"
PROMPT="\$(getprompt)%f"

export FZF_DEFAULT_OPTS=" \
--color=bg+:#ccd0da,bg:#eff1f5,spinner:#dc8a78,hl:#d20f39 \
--color=fg:#4c4f69,header:#d20f39,info:#8839ef,pointer:#dc8a78 \
--color=marker:#dc8a78,fg+:#4c4f69,prompt:#8839ef,hl+:#d20f39"

stty stop undef

# function zle-keymap-select {
#   if [[ ${KEYMAP} == vicmd ]] ||
#      [[ $1 = 'block' ]]; then
#     echo -ne '\e[1 q'
#   elif [[ ${KEYMAP} == main ]] ||
#        [[ ${KEYMAP} == viins ]] ||
#        [[ ${KEYMAP} = '' ]] ||
#        [[ $1 = 'beam' ]]; then
#     echo -ne '\e[5 q'
#   fi
# }
# zle -N zle-keymap-select

zstyle ':completion:*' menu select
_comp_options+=(globdots)

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nytou/.zshrc'

autoload -Uz compinit
compinit

# eval "$(starship init zsh)"
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7a3ce6,bg=dark"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh
