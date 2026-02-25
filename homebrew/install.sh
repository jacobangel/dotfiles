#!/usr/bin/env bash

if test ! "$(which brew)"
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://brew.sh"
  exit
fi

echo "Updating Homebrew..."
brew update

echo "Installing from Brewfile..."
brew bundle --file=~/.dotfiles/homebrew/Brewfile

exit 0
