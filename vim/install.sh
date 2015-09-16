#!/usr/bin/env bash

cp ~/.dotfiles/vim/.vimrc ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && \
git clone https://github.com/scrooloose/syntastic.git
