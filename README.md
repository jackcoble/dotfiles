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