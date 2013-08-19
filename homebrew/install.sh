#!/usr/bin/env bash
# Check for Homebrew

if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

brew update
brew doctor

exit 0