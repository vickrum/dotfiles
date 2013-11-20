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

set exrc            " enable per-directory .vimrc files
au Filetype python source ~/.vim/ftplugin/python.vim
au Filetype php source ~/.vim/ftplugin/php.vim
au Filetype ruby source ~/.vim/ftplugin/ruby.vim

set number
set mouse=a

set shiftwidth=4
set expandtab
set tabstop=4

set wrap
set linebreak

syntax enable
colorscheme jellybeans

set wildignore+=*/tmp/*

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

