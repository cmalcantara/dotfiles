# Created by CMA for 5.2

# vim stuff

export VISUAL=nvim				# makes nvim default editor	
export EDITOR="$VISUAL"

bindkey -v						# uses vi mode in zsh commmand line
bindkey -M viins 'jk' vi-cmd-mode			# 'jk' to esc in vi mode command line

# to show normal when vim is in normal mode in the command line
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}  $EPS1"
    zle reset-prompt
}

#######################################################################################

# basic autocompletion
# i forgot what these options are

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
setopt autocd						# automatically cd when mentioning directory
setopt hist_ignore_all_dups				# removes duplicates in history
setopt correct						# turn on spelling correction for commands


#######################################################################################
#aliases
 #quick edits
alias vz='nvim ~/.zshrc'
alias v3='nvim ~/.i3/config'
alias vx='nvim ~/.Xresources'
alias vc='nvim ~/.config/nvim/init.vim'
alias sor='source ~/.zshrc'				# reload .zshrc

#fast movement
#cd into ranger last directory
#https://superuser.com/questions/1043806/how-to-exit-the-ranger-file-explorer-back-to-command-prompt-but-keep-the-current
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
#alias c='~/code/book_code/programming_in_c'

 #fast shortcuts
#alias reds='redshift -l 13.0000:122.0000'
alias reds='redshift -b 1:0.8'				# turns on redshift with reduced brightness
alias tracked='git ls-tree -r master --name-only'	# shows tracked git files
alias bt='bluetoothctl'					# turns on bluetooth
alias wifi='sudo wifi-menu'				# wifi
alias pg='ping -c 3 google.com'				# fast ping checking
alias p='sudo pacman '					# pacman shortcut

alias dual='xrandr --fb 7680x4720 --output eDP-1 --mode 3840x2160 --scale 0.9999x0.9999 --pos 0x2560--primary --output HDMI-1 --scale 2.5x2.5  --mode 1280x1024 --rate 60 --pos 0x0'

#########################################################################################
#Export stuff
#For Node Version Manager
#https://github.com/nvm-sh/nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#For Bazel
#https://docs.bazel.build/versions/master/install-ubuntu.html
export PATH="$PATH:$HOME/bin"

#Bazel Command Line Completion
#https://docs.bazel.build/versions/master/completion.html#zsh
#this way the completion script does not have to parse Bazel's options
# repeatedly.  The directory in cache-path must be created manually.
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

