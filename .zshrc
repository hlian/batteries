ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
plugins=(git mercurial zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Aliases. ####################
bindkey -e
alias l='ls -Ap --color'
alias ll='l -l'
alias   vpn='ssh -ND 9999 -f -C'
alias  ssht='networksetup -setsocksfirewallproxystate Airport'
alias     u='cd ..'
alias     p='python'
alias    nv='. env/bin/activate'
alias screen='screen -R'
alias -g  L='|& less -R'
alias -g  D='>| /tmp/diff.diff'
alias    up='sudo aptitude update && sudo aptitude full-upgrade && sudo aptitude autoclean'
alias -g mount-desktop='mount -t vboxsf Desktop /home/me/remote/desktop'
alias bochs='bochs -q'
alias wget='wget --no-check-certificate'
alias d='dirs -v'
alias telnet='rlwrap telnet'
alias sml='rlwrap sml'
alias reload='. ~/.zshrc'

alias install-zsh-syntax-highlighting='cd ~/.oh-my-zsh/plugins && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git'

export HISTSIZE=100000
export SAVEHIST=100000

export WORDCHARS=
export PYTHONPATH=
export PATH=$PATH:/usr/local/bin:/Users/me/.cabal/bin
export CLICOLOR=1
export PATH=/opt/local/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH

# Set! Up! ####################
setopt incappendhistory sharehistory
setopt autocd extendedglob nomatch auto_pushd nobeep
setopt noclobber hist_verify noflowcontrol menu_complete

# Other people. ####################
source ~/.zshrc-here
