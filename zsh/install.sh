#!/usr/bin/env bash

## Add to profile
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir -p ~/.zsh/_git
cp ~/.dotfiles/zsh/git-completion.zsh ~/.zsh/_git

# add dotfile refernce
# TODO add multiple tests for environments so that mac / linux / windows works.
echo ". ~/.dotfiles/zsh/.zprofile" >> ~/.zprofile
echo ". ~/.dotfiles/zsh/.zshenv" >> ~/.zshenv
echo ". ~/.dotfiles/zsh/.zshrc" >> ~/.zshrc