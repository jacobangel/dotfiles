#!/usr/bin/env bash

## Add to profile

# add git completion to profile
curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o ~/.dotfiles/cli/.git-completion.bash

# add dotfile refernce
# TODO add multiple tests for environments so that mac / linux / windows works.
echo ". ~/.dotfiles/cli/.profile" >> ~/.profile

