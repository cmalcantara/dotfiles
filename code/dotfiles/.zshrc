# Created by CMA for 5.2

#vim stuff
export VISUAL=nvim
export EDITOR="$VISUAL"

bindkey "^?" backward-delete-char
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
setopt correct

#for viewing md files in terminal
rmd(){
	pandoc $1 | lynx -stdin
}


#aliases
 #quick edits
alias vz='nvim ~/.zshrc'
alias v3='nvim ~/.i3/config'
alias vx='nvim ~/.Xresources'
alias vc='nvim ~/.config/nvim/init.vim'
alias td='nvim ~/work/gtd.txt'
alias sor='source ~/.zshrc'
alias jour='nvim ~/work/Journal.txt'
alias ttr='nvim ~/work/Things_To_Remember.txt'
alias ref='nvim ~/work/References.txt'
alias sch='nvim ~/work/Schedule.txt'


 #fast shortcuts
#alias reds='redshift -l 13.0000:122.0000'
alias vim='nvim'
alias reds='redshift -b 0.8:0.8'
alias tracked='git ls-tree -r master --name-only'
alias xmod='xmodmap ~/.Xmodmap'
alias bt='bluetoothctl'
alias wifi='sudo wifi-menu'
alias vim='nocorrect vim'
alias pg='ping -c 3 google.com'
alias def='/usr/bin/sdcv'
alias w='cd ~/work/'
alias j='cd ~/justdoit/'
alias p='sudo pacman '
alias r='ranger'
