# Set! Up! ####################
autoload -Uz compinit
autoload colors
compinit; colors
setopt appendhistory autocd extendedglob nomatch auto_pushd nobeep
setopt noclobber hist_verify noflowcontrol

# Aliases. ####################
bindkey -e
alias     u='cd ..'
alias    ls='ls --color=tty -Ap'
alias     p='python'
alias    nv='. env/bin/activate'
alias screen='screen -R'
alias -g  L='|& less'
alias -g  D='>| /tmp/diff.diff'
alias    up='sudo aptitude update && sudo aptitude full-upgrade && sudo aptitude autoclean'
alias -g mount-desktop='mount -t vboxsf Desktop /home/me/remote/desktop'
alias bochs='bochs -q'

# Completion. ####################
zstyle :compinstall filename '/home/me/.zshrc'
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path '/tmp/zsh-cache'

# SSH made fun. ####################
sog-init() {
    ssh-agent -a /tmp/.shocket > /tmp/sog;
}

sog() {
    source /tmp/sog && ssh-add;
}

# Color prompt! ####################
export TERM=xterm-256color

case $TERM in (xterm*|rxvt|screen|rxvt-unicode|rxvt-cygwin-native)
    export PS1="%{$reset_color$bold_color$fg[green]%}%~ %{$reset_color%}"
    precmd() { print -Pn "\e]0; %~\a" } ;;
esac

# History. ####################
export HISTFILE=~/.histfile
export HISTSIZE=100000
export SAVEHIST=100000

# Variables and shakers. ####################
export WORDCHARS=
export PYTHONPATH=
export PATH=$PATH:/usr/local/bin
