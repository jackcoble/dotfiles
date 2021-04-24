# Dotfiles

## Installing on a new machine
```bash
# Setting a temporary alias
$ alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
$ git clone https://github.com/jackcoble/dotfiles.git $HOME/.dotfiles
$ git checkout
```

## Setting up GPG on Fedora to work with YubiKey
```bash
$ sudo dnf install pcsc-lite
$ sudo systemctl disable --now pcscd.socket pcscd.service
```
