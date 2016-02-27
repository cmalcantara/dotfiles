# Created by newuser for 5.2

#vim stuff
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}  $EPS1"
    zle reset-prompt
}

#basic autocompletion
autoload -U compinit promptinit
compinit
promptinit

zle -N zle-line-init
zle -N zle-keymap-select

#prompt options
autoload -U colors && colors
export PROMPT="%{$fg[red]%}[%{$reset_color%}%{$fg_bold[white]%}%~|CMA%{$reset_color%}%{$fg[red]%}]%{$reset_color%}: "
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

#settings
setopt autocd
setopt hist_ignore_all_dups
setopt correctall

#aliases
alias reds='exec redshift -l 13.0000:122.0000'
alias sor='source ~/.zshrc'
alias vz='vim ~/.zshrc'
alias tracked='git ls-tree -r master --name-only'
alias xmod='xmodmap ~/.Xmodmap'
alias bt='bluetoothctl'
alias wifi='sudo wifi-menu'

