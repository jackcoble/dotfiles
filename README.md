# Dotfiles

This repository contains my dotfiles which have been updated for MacOS Big Sur.

## Installing on a new machine
```bash
# Setting a temporary alias
$ alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

$ git clone --bare https://github.com/jackcoble/dotfiles.git $HOME/.dotfiles
$ dots checkout
```

## Installing packages using [Brew](https://brew.sh/)
```bash
$ brew bundle
```