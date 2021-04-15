# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
export KEYTIMEOUT=1
alias ls='ls --color'
alias tt='gio trash'
alias lst='gio trash --list'
alias rstt='gio trash --restore'
alias emptty='gio trash --empty'
alias ytmdl="ytmdl --skip-meta --disable-metaadd"
alias nv="nvim"
alias lf="lf-ueberzug"
alias poweroff="doas poweroff"
alias reboot="doas reboot"
alias lg="lazygit"
alias cdnv="cd $HOME/.config/nvim"
alias rmgit="rm -rI ./.git/"

PROMPT="%F{135}%n%f %F{13}%~%f %F{197}>> %f"

autoload -U colors && colors
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
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#7a3ce6,bg=dark"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
