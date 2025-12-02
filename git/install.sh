#!/usr/bin/env bash

## Global Config
git config --global user.name "Jacob Angel"
git config --global user.email "jacob.angel@gmail.com"
git config --global core.ignorecase false
git config --global core.autocrlf input
git config --global rerere.enabled true
git config --global init.defaultBranch main

## Aliases
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.l "log --pretty=format:'%h%x09%an%x09%ad%x09%s'"
git config --global alias.pro "pull --rebase origin"
git config --global alias.prom "pull --rebase origin main" 

## Colors
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto

git config --global color.ui true
