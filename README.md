# Dotfiles
The repository contains my dotfiles and scripts for my Void Linux machines.

## Usage
**Install the packages from the package list.**
```bash
sudo xbps-install -Syu
sudo xbps-install -Sy $(cat packages.txt)
```

**Install the Dotfiles**
```
./install.sh
```

## deps
* [bspwm](https://github.com/baskerville/bspwm)
* [neovim](https://neovim.io)
* [rofi](https://github.com/davatorium/rofi)
* [sxhkd](https://github.com/baskerville/sxhkd)
* [tmux](https://github.com/tmux/tmux)
* [yabar](https://github.com/geommer/yabar)

## bin/
* screenshot - snap an area of the screen
* upload - helper for my [Upload](https://github.com/jackkdev/upload) server