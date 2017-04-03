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

brew install mongodb
# ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
# launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

brew install rabbitmq
# ln -sfv /usr/local/opt/rabbitmq/*.plist ~/Library/LaunchAgents
# launchctl load ~/Library/LaunchAgents/homebrew.mxcl.rabbitmq.plist

brew install imagemagick
brew install zookeeper

brew install node6-lts

exit 0
