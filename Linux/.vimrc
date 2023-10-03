" Plugins in use:
" - fabi1cazenave/kalahari.vim'
" - kien/ctrlp.vim'
" - tomtom/tcomment_vim'

execute pathogen#infect()

set number
set mouse=a
set shiftwidth=4
set expandtab
set tabstop=4
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list
set cursorline
set encoding=utf-8
set ruler
set splitright
set scrolloff=3
set fileformats=unix

syntax on

set background=dark
colorscheme kalahari

" Remove background
hi Normal ctermbg=none
hi NonText ctermbg=none

set wildignore+=*/tmp/*,*.jar,*.class,*/node_modules,vendor,*.pyc,*/python_modules/*,target

let mapleader = ","

map <c-l> :CtrlPBuffer<CR>
map <c-t> :CtrlPBufTag<CR>
noremap <space> :set hlsearch! hlsearch?<CR>
nnoremap <Leader>y :w !xsel -i -b<CR>
nnoremap <Leader>p :r !xsel -o -b<CR>

" To run each line through a json prettifier, eg json logs
function! s:JsonFormat()
    exe ":g/^/execute '.!jq -r .'"
    exe ":set ft=json"
endfunction
command! JsonFormat call s:JsonFormat()

" Store .swp files in .vim directory
set directory^=$HOME/.vim/swap//
