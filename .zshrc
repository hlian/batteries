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
alias -g  B='$(git branch | fzf +s +m)'
alias wget='wget --no-check-certificate'
alias telnet='rlwrap telnet'
alias reload='. ~/.zshrc'
alias v='vim'
alias ci='cabal install --disable-documentation --disable-executable-profiling --disable-library-coverage --disable-benchmarks --disable-library-profiling -j'
alias e='open -a Emacs'

export HISTSIZE=100000
export SAVEHIST=100000

export WORDCHARS=
export PYTHONPATH=
export PYTHONSTARTUP=$HOME/.pythonstartup.py
export CLICOLOR=1
export LESS=-Ri
export LSCOLORS=ExFxCxDxBxegedabagacad
export OCEAN=162.243.55.6
export EDITOR=vim

# Set! Up! ####################
setopt incappendhistory sharehistory
setopt autocd extendedglob nomatch auto_pushd nobeep
setopt noclobber hist_verify noflowcontrol menu_complete
unsetopt case_glob
# https://github.com/robbyrussell/oh-my-zsh/issues/449
unsetopt nomatch
compdef -d git

# http://serverfault.com/questions/192499/prune-duplicate-entries-from-path-variable
if [[ -d /usr/local/bin ]]; then
    export PATH=/usr/local/bin:$PATH
fi

if [[ -d $HOME/.cabal/bin ]]; then
    export PATH=$HOME/.cabal/bin:$PATH
fi

if [[ ! -d ~/.fzf ]]; then
    git clone https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi
source ~/.fzf.zsh

typeset -U PATH

# Other people. ####################
source ~/.zshrc-here
