# Disable welcome prompt
set -U fish_greeting

# Load in GPG
source ~/.config/fish/gnupg.fish

# Go
set -x GOPATH $HOME/code/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

# NPM
set PATH $HOME/.npm-global/bin $PATH

# Dotfiles bare repo alias
alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
