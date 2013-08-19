#!/usr/bin/env bash

## Global Config
git config --global user.name "Jacob Angel"
git config --global user.email "jacob.angel@gmail.com"
git config --global core.ignorecase false
git config --global core.autocrlf input

## Aliases
git config --global alias.co checkout
git config --global alias.st status

## Colors
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto

git config --global color.ui true