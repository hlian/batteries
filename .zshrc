export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

zsh ~/.zshrc-install

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="hao"
SOLARIZED_THEME="light"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
plugins=(git zsh-syntax-highlighting colored-man systemd)
source $ZSH/oh-my-zsh.sh
export PS1=$'\n'$PS1

setopt auto_pushd
setopt autocd
setopt extendedglob
setopt hist_verify
setopt incappendhistory
setopt menu_complete
setopt nobeep
setopt noclobber
setopt noflowcontrol
setopt nomatch
setopt sharehistory
setopt rcquotes
setopt ignoreeof
unsetopt case_glob
unsetopt nomatch
compdef -d git

# Aliases. ####################
bindkey -e
alias l='ls -Fha'
alias ll='l -l'
alias -g  L='|& less'
alias -g  D='>| /tmp/diff.diff'
alias -g  bb='$(git branch | fzf +s +m)'
alias -g  brb='$(git branch -r | sed "s/origin\///" | grep -v don/ | grep -v lou/ | grep -v hp/ | fzf +s +m)'
alias -g  .log='$(git log --reverse --pretty=oneline --abbrev-commit -20 | fzf +s --prompt="fixup> " | awk ''{ print $1 }'')'
alias telnet='rlwrap telnet'
alias reload='. ~/.zshrc'
alias v='vim'
alias dgit='git --git-dir ~/dotfiles/.git'
alias egit='git --git-dir ~/.emacs.d/.git'
alias g='git commit -vp'
alias gr='git rebase'
alias grc='git rebase --cont'
alias gt='cd ~/lab/ios'
alias ht='open -a /Applications/Xcode.app *.xcworkspace'
alias hht='open -a /Applications/Xcode-beta.app *.xcworkspace'
alias recask='pushd ~/.emacs.d && cask build && popd'
alias am='git commit --amend -p -v'
alias cip='git commit -p -v'
alias ci='git commit -v'
alias b='git branch'
alias co='git checkout'
alias p='git push -u origin $bb'
alias s='git status'
alias add='git add'
alias lga="git log --graph --abbrev-commit --all --pretty=format:'%w(100,0,10)%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gd="git diff"
alias gz="git reset"
alias gf="git fixup"
alias xargsi="xargs -I {}"
alias brewup="brew update; brew upgrade; brew cleanup"
alias sb="stack build --fast"
alias st="stack test --fast"

function lg {
    git log --graph --pretty=format:'%w(100,0,10)%h -%d %s (%cr) <%an>' --abbrev-commit -100 $@ >| /tmp/ok
}

export HISTSIZE=1000
export SAVEHIST=1000

export WORDCHARS=
export CLICOLOR=1
export LESS=-Ri
export LSCOLORS=ExFxCxDxBxegedabagacad

if [[ -d /usr/local/bin ]]; then
    export PATH=/usr/local/bin:$PATH
fi

if [[ -d /usr/local/sbin ]]; then
    export PATH=/usr/local/sbin:$PATH
fi

if [[ -d ~/.local/bin ]]; then
    export PATH=~/.local/bin:$PATH
fi

if [[ $TERM_PROGRAM =~ iTerm.app ]]; then
    export EDITOR='~/Applications/Emacs.app/Contents/MacOS/Emacs -nw --no-desktop'
    export FPP_EDITOR='open -a Emacs'
    alias emacs=$EDITOR
    alias e=$FPP_EDITOR
else
    export EDITOR='emacs --no-desktop'
    alias e='emacs --no-desktop'
fi

if which ruby >/dev/null && which gem >/dev/null; then
    export PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

if [[ -d ~/.cask/bin ]]; then
    export PATH="$HOME/.cask/bin:$PATH"
fi

if [[ ! -f ~/.zshrc-here ]]; then
    touch ~/.zshrc-here
fi

source ~/.fzf.zsh
source ~/.zshrc-here
typeset -U PATH
