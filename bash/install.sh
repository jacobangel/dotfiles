#!/usr/bin/env bash

## Add git completion to profile
curl -s https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.dotfiles/bash/.git-completion.bash

## Add dotfile reference (idempotent — only append if not already present)
grep -qF ". ~/.dotfiles/bash/.profile" ~/.profile 2>/dev/null || echo ". ~/.dotfiles/bash/.profile" >> ~/.profile
