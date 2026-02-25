#!/usr/bin/env bash

## Copy vimrc
cp ~/.dotfiles/vim/.vimrc ~/.vimrc

## Install vim-plug
if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

## Install plugins
vim -es -u ~/.vimrc +PlugInstall +qall </dev/null
