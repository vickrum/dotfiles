set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'nanotech/jellybeans.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'leshill/vim-json'
Bundle 'tomtom/tcomment_vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/syntastic'
Bundle 'vickrum/vim-less'
Bundle 'vim-scripts/grep.vim'
Bundle 'terryma/vim-multiple-cursors'

filetype plugin indent on

" Markdown plugin's folding is very annoying.
let g:vim_markdown_folding_disabled=1

set exrc            " enable per-directory .vimrc files
set number
set mouse=a
set shiftwidth=4
set expandtab
set tabstop=4
set wrap
set linebreak
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
set cursorline
set encoding=utf-8
set ruler
set ttyfast
set splitright
set spelllang=en_gb
set backspace=indent,eol,start
set scrolloff=3
set fileformats=unix

set t_Co=256
syntax enable
colorscheme jellybeans

" jellybeans defaults columns to 000000, which is my bg colour.
highlight ColorColumn ctermbg=0

set wildignore+=*/tmp/*,*.jar,*.class,*/node_modules,vendor,*.pyc,*/python_modules/*
let Grep_Skip_Dirs = 'tmp node_modules vendor python_modules'

map <c-l> :CtrlPBuffer<CR>
map <c-t> :CtrlPBufTag<CR>
map <F6> :setlocal spell! spell?<CR>
map <F5> :SyntasticCheck<CR>
