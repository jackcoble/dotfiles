#!/bin/sh

path=$(pwd)

# Install files to Home directory
ln -sf $path/.bashrc $HOME/.bashrc
ln -sf $path/.gitconfig $HOME/.gitconfig
ln -sf $path/.profile $HOME/.profile
ln -sf $path/.xinitrc $HOME/.xinitrc

# Install config files into Config directory
[ ! -d $HOME/.config ] && mkdir $HOME/.config

[ -d $HOME/.config/bspwm ] && rm -rf $HOME/.config/bspwm
ln -sf $path/config/bspwm $HOME/.config/bspwm

[ -d $HOME/.config/nvim ] && rm -rf $HOME/.config/nvim
ln -sf $path/config/nvim $HOME/.config/nvim

[ -d $HOME/.config/polybar ] && rm -rf $HOME/.config/polybar
ln -sf $path/config/polybar $HOME/.config/polybar

[ -d $HOME/.config/sxhkd ] && rm -rf $HOME/.config/sxhkd
ln -sf $path/config/sxhkd $HOME/.config/sxhkd

# Individual files
ln -sf $path/config/tmux/tmux.conf $HOME/.tmux.conf

# Install custom scripts