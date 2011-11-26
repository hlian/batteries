" http://nvie.com/posts/how-i-boosted-my-vim/
let mapleader=","

set nocompatible
set hidden " closed buffers
set nowrap
set number " of the line variety
set showmatch " parentheses
set title " change terminal's title
set visualbell
set noerrorbells
set backupdir=~/tmp

set ignorecase
set smartcase
set hlsearch
set gdefault
set incsearch
set showmatch
set hlsearch
" Python/Perl regex syntax
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr> " unhighlight

set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set copyindent " new lines copy previous lines' indent
set shiftround " < and >
set smarttab
set expandtab
set encoding=utf-8
set relativenumber " relative line number numbering for fast moves
set backspace=indent,eol,start
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

set history=1000
set undolevels=1000

syntax on

noremap ; :
inoremap jj <ESC> " jj to go back to normal mode
