if [[ ! -d ~/.oh-my-zsh ]]; then
    pushd ~
    git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh
    popd
fi

if [[ ! -d ~/.oh-my-zsh/plugins/zsh-syntax-highlighting ]]; then
    mkdir ~/.oh-my-zsh/plugins
    pushd ~/.oh-my-zsh/plugins
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
    popd
fi

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="blinks"
SOLARIZED_THEME="light"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
plugins=(git zsh-syntax-highlighting colored-man)
source $ZSH/oh-my-zsh.sh
export PS1=$'\n'$PS1

# Aliases. ####################
bindkey -e
alias l='ls -Ap'
alias ll='l -l'
alias     u='cd ..'
alias     p='python'
alias    nv='. env/bin/activate'
alias screen='screen -R'
alias -g  L='|& less'
alias -g  D='>| /tmp/diff.diff'
alias wget='wget --no-check-certificate'
alias telnet='rlwrap telnet'
alias reload='. ~/.zshrc'
alias v='vim'

export HISTSIZE=100000
export SAVEHIST=100000

export WORDCHARS=
export PYTHONPATH=
export PYTHONSTARTUP=$HOME/.pythonstartup.py
export CLICOLOR=1
export LESS=-Ri
export LSCOLORS=ExFxCxDxBxegedabagacad
export OCEAN=162.243.55.6

# Set! Up! ####################
setopt incappendhistory sharehistory
setopt autocd extendedglob nomatch auto_pushd nobeep
setopt noclobber hist_verify noflowcontrol menu_complete
unsetopt case_glob
compdef -d git

# Other people. ####################
source ~/.zshrc-here

# http://serverfault.com/questions/192499/prune-duplicate-entries-from-path-variable
if [[ -d /usr/local/bin ]]; then
    export PATH=/usr/local/bin:$PATH
fi

if [[ -d $HOME/.cabal/bin ]]; then
    export PATH=$HOME/.cabal/bin:$PATH
fi

typeset -U PATH
