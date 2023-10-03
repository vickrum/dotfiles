#!/bin/sh

ln -s ~/code/personal/dotfiles/.zlogin ~/.zlogin
ln -s ~/code/personal/dotfiles/.zshenv ~/.zshenv
ln -s ~/code/personal/dotfiles/.zshrc ~/.zshrc
ln -s ~/code/personal/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/code/personal/dotfiles/.vimrc ~/.vimrc
ln -s ~/code/personal/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/code/personal/dotfiles/.gitignore ~/.gitignore

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone git@github.com:fabi1cazenave/kalahari.vim.git
git clone git@github.com:kien/ctrlp.vim.git
git clone git@github.com:tomtom/tcomment_vim.git
