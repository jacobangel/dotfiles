#!/usr/bin/env bash

## Install oh-my-zsh (unattended, skip if already installed)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

## Set up git completion for zsh
mkdir -p ~/.zsh/_git
cp ~/.dotfiles/zsh/git-completion.zsh ~/.zsh/_git

## Add dotfile references (idempotent — only append if not already present)
grep -qF ". ~/.dotfiles/zsh/.zprofile" ~/.zprofile 2>/dev/null || echo ". ~/.dotfiles/zsh/.zprofile" >> ~/.zprofile
grep -qF ". ~/.dotfiles/zsh/.zshenv" ~/.zshenv 2>/dev/null || echo ". ~/.dotfiles/zsh/.zshenv" >> ~/.zshenv
grep -qF ". ~/.dotfiles/zsh/.zshrc" ~/.zshrc 2>/dev/null || echo ". ~/.dotfiles/zsh/.zshrc" >> ~/.zshrc
