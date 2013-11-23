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

set t_Co=256
syntax enable
colorscheme jellybeans

" jellybeans defaults columns to 000000, which is my bg colour.
highlight ColorColumn ctermbg=0

set wildignore+=*/tmp/*,*.jar,*.class

map <c-l> :CtrlPBuffer<CR>
