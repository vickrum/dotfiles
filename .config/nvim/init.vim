set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'mhartington/oceanic-next'
Plugin 'rust-lang/rust.vim'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme OceanicNext

set mouse=a
set number
set splitright

set shiftwidth=4
set expandtab
set tabstop=4

noremap <space> :set hlsearch! hlsearch?<CR>
