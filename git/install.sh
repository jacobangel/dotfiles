#!/usr/bin/env bash

## Global Config
git config --global user.name "Jacob Angel"
git config --global user.email "jacob.angel@gmail.com"
git config --global core.ignorecase false
git config --global core.autocrlf input
git config --global rerere.enabled true
git config --global init.defaultBranch main
git config --global credential.helper osxkeychain

## Modern defaults
git config --global pull.rebase true
git config --global push.autoSetupRemote true
git config --global push.default current
git config --global diff.algorithm histogram
git config --global branch.sort -committerdate

## Aliases
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.l "log --pretty=format:'%h%x09%an%x09%ad%x09%s'"
git config --global alias.pro "pull --rebase origin"
git config --global alias.prom "pull --rebase origin main"

## Colors
git config --global color.ui auto
