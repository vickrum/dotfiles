"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.config/nvim/dein.vim/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein.vim/')
  call dein#begin('~/.config/nvim/dein.vim/')

  call dein#add('~/.config/nvim/dein.vim/repos/github.com/Shougo/dein.vim')

  call dein#add('Shougo/denite.nvim')
  call dein#add('jremmen/vim-ripgrep')
  call dein#add('rust-lang/rust.vim')
  call dein#add('w0rp/ale')
  call dein#add('fabi1cazenave/kalahari.vim')

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
hi Normal ctermbg=none
hi NonText ctermbg=none

let mapleader = ","

ca tn tabnew

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
