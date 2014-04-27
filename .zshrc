if [[ ! -d ~/.oh-my-zsh ]]; then
    pushd ~
    git clone https://github.com/robbyrussell/oh-my-zsh
    popd
fi

if [[ ! -d ~/.oh-my-zsh/plugins/zsh-syntax-highlighting ]]; then
    pushd ~/.oh-my-zsh/plugins
    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
    popd
fi

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="blinks"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
plugins=(git zsh-syntax-highlighting colored-man)
source $ZSH/oh-my-zsh.sh

# Aliases. ####################
bindkey -e
alias l='ls -Ap'
alias ll='l -l'
alias     u='cd ..'
alias     p='python'
alias    nv='. env/bin/activate'
alias screen='screen -R'
alias -g  L='|& less -R'
alias -g  D='>| /tmp/diff.diff'
alias wget='wget --no-check-certificate'
alias telnet='rlwrap telnet'
alias reload='. ~/.zshrc'

export HISTSIZE=100000
export SAVEHIST=100000

export WORDCHARS=
export PYTHONPATH=
export PYTHONSTARTUP=$HOME/.pythonstartup.py
export PATH=$PATH:/usr/local/bin:/Users/me/.cabal/bin
export CLICOLOR=1
export PATH=/opt/local/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH
export OCEAN=162.243.55.6

# Set! Up! ####################
setopt incappendhistory sharehistory
setopt autocd extendedglob nomatch auto_pushd nobeep
setopt noclobber hist_verify noflowcontrol menu_complete

# Other people. ####################
source ~/.zshrc-here
