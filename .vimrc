execute pathogen#infect()

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
set ch=2 " command-line height
set laststatus=2 " always show status bar
set wrapscan " wrap search
set backupdir=/tmp
set wildmenu " command-line autocompletion

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

set backupdir=~/.vim/backup//
set undodir=~/.vim/undo//
set directory=~/.vim/swap//

noremap ; :
inoremap jj <ESC> " jj to go back to normal mode

nnoremap <M-j> :m .+1<CR>
nnoremap <M-k> :m .-2<CR>
inoremap <M-j> <Esc>:m .+1<CR>gi
inoremap <M-k> <Esc>:m .-2<CR>gi
vnoremap <M-j> :m '>+1<CR>gv
vnoremap <M-k> :m '<-2<CR>gv

for i in range(65,90) + range(97,122)
  let c = nr2char(i)
  exec "imap \e".c." <M-".c.">"
  exec "map \e".c." <M-".c.">"
endfor

autocmd FileType haskell setlocal shiftwidth=2

if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

if has("nvim")
    set inccommand=nosplit
endif
