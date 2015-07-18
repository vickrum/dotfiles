set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/syntastic'
Plugin 'vickrum/vim-less'
Plugin 'vim-scripts/grep.vim'
Plugin 'fabi1cazenave/kalahari.vim'

filetype plugin indent on

" Markdown plugin's folding is very annoying.
let g:vim_markdown_folding_disabled=1

" Don't automatically syntax check on file write, cos it fucks with ctrl-z.
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

" Disable concealing in json
let g:vim_json_syntax_conceal = 0

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

colorscheme kalahari

set wildignore+=*/tmp/*,*.jar,*.class,*/node_modules,vendor,*.pyc,*/python_modules/*
let Grep_Skip_Dirs = 'tmp node_modules vendor python_modules'

map <c-l> :CtrlPBuffer<CR>
map <c-t> :CtrlPBufTag<CR>
map <F4> :SyntasticToggleMode<CR>
map <F5> :SyntasticCheck<CR>
map <F6> :setlocal spell! spell?<CR>
noremap <space> :set hlsearch! hlsearch?<CR>

" To run each line through a json prettifier, eg json logs
function! s:Jsonify()
    exe ":g/^/execute '.!python -m json.tool'"
    exe ":%s/\\s\\+$//g"
    exe ":set ft=json"
endfunction
command! Jsonify call s:Jsonify()

" To fix syntax highlighting on files with very long lines.
" :set synmaxcol=5000
