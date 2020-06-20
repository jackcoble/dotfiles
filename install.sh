#!/bin/sh

path=$(pwd)

# Install Void Linux packages
echo 'Installing Specified Packages from "packages.txt"'

sudo xbps-install -Syu
sudo xbps-install -Sy $(cat $path/packages.txt)

echo "Package Installation Complete!"

# Install Dotfiles to Home directory
echo "Installing Dotfiles..."

ln -sf $path/.bashrc $HOME/.bashrc
ln -sf $path/.gitconfig $HOME/.gitconfig
ln -sf $path/.profile $HOME/.profile
ln -sf $path/.xinitrc $HOME/.xinitrc

# Install config files into Config directory
[ ! -d $HOME/.config ] && mkdir $HOME/.config

[ -d $HOME/.config/alacritty ] && rm -rf $HOME/.config/alacritty
ln -sf $path/config/alacritty $HOME/.config/alacritty

[ -d $HOME/.config/bspwm ] && rm -rf $HOME/.config/bspwm
ln -sf $path/config/bspwm $HOME/.config/bspwm

[ -d $HOME/.config/polybar ] && rm -rf $HOME/.config/polybar
ln -sf $path/config/polybar $HOME/.config/polybar

[ -d $HOME/.config/sxhkd ] && rm -rf $HOME/.config/sxhkd
ln -sf $path/config/sxhkd $HOME/.config/sxhkd

# Individual files
ln -sf $path/.tmux.conf $HOME/.tmux.conf

# Scripts - put in ~/.local/bin
mkdir -p $HOME/.local/bin

ln -sf $path/bin/upload $HOME/.local/bin/upload
ln -sf $path/bin/screenshot $HOME/.local/bin/screenshot

echo "Dotfiles Installation Complete!"

# Install FiraCode Nerd font
echo "Downloading Fonts..."

wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip"
mkdir -p ~/.local/share/fonts
unzip FiraCode.zip -d ~/.local/share/fonts
fc-cache -fv
rm FiraCode.zip

echo "Font Installation Complete!"
