#!/bin/sh

# dotfiles directory
DOTFILES_HOME=$HOME/.dotfiles

# make directories
mkdir -p $HOME/.config/bspwm
mkdir -p $HOME/.config/git
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/rofi
mkdir -p $HOME/.config/sxhkd
mkdir -p $HOME/.config/wallpaper

# file symlinks
echo "setting config symlinks"
ln -sf "$DOTFILES_HOME"/config/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
ln -sf "$DOTFILES_HOME"/config/git/config $HOME/.config/git/config
ln -sf "$DOTFILES_HOME"/config/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf "$DOTFILES_HOME"/config/rofi/rofi.conf $HOME/.config/rofi/rofi.conf
ln -sf "$DOTFILES_HOME"/config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
ln -sf "$DOTFILES_HOME"/config/wallpaper/default $HOME/.config/wallpaper/default
ln -sf "$DOTFILES_HOME"/config/tmux/tmux.conf $HOME/.tmux.conf
ln -sf "$DOTFILES_HOME"/config/xorg/xinitrc $HOME/.xinitrc

echo "dotfiles install complete"