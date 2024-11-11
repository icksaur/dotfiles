noh
syntax on
set number
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set backspace=indent,eol,start
set expandtab
set tabstop=4
set shiftwidth=4
imap jj <Esc>
highlight ModeMsg ctermbg=red
map <TAB> :bn<ENTER>

call plug#begin('~/.vim/plugged')
" Plugin declarations go here
Plug 'alaviss/nim.nvim'
call plug#end()

filetype plugin indent on
