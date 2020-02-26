"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.config/nvim/dein.vim/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein.vim/')
  call dein#begin('~/.config/nvim/dein.vim/')

  call dein#add('~/.config/nvim/dein.vim/repos/github.com/Shougo/dein.vim')

  call dein#add('Shougo/denite.nvim')
  call dein#add('fabi1cazenave/kalahari.vim')
  call dein#add('jremmen/vim-ripgrep')
  call dein#add('rust-lang/rust.vim')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('w0rp/ale')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
"End dein Scripts-------------------------

colorscheme kalahari

set list
set mouse=a
set number
set splitright

set shiftwidth=4
set expandtab
set tabstop=4

noremap <space> :set hlsearch! hlsearch?<CR>

" Remove background
set background=dark
hi Normal ctermbg=none
hi NonText ctermbg=none

let mapleader = ","

ca tn tabnew

nnoremap <c-q> <c-a>

map <c-p> :Denite file_rec<cr>
map <c-l> :Denite buffer<cr>
map <c-t> :Denite outline<cr>

nnoremap <leader>y :w !xsel -i -b<cr>
nnoremap <leader>p :r !xsel -o -b<cr>
nnoremap <leader>t :tabnew<cr>
tnoremap <esc><esc> <c-\><c-n>

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<C-v>', '<denite:do_action:vsplitswitch>', 'noremap')

call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git', ''])

" To run each line through a json prettifier, eg json logs
function! s:Jsonify()
    exe ":g/^/execute '.!jq -r .'"
    " exe ":g/^/execute '.!python -m json.tool'"
    " exe ":%s/\\s\\+$//g"
    exe ":set ft=json"
endfunction
command! Jsonify call s:Jsonify()

let g:ale_fixers = {
\  'python': ['autopep8'],
\}
highlight ALEWarning ctermbg=88

set wildignore+=*/tmp/*,*.jar,*.class,*/node_modules,vendor,*.pyc,*/python_modules/*,target
