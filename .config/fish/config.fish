# Disable welcome prompt
set -U fish_greeting

# Homebrew
fish_add_path /opt/homebrew/bin

# 1Password SSH Agent
set -x SSH_AUTH_SOCK $HOME/.1password/agent.sock

# Go
set -x GOPATH $HOME/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

# NPM and Yarn
set PATH $HOME/.npm-global/bin $PATH
set PATH (yarn global bin) $PATH

# Dotfiles bare repo alias
alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# 1Password Plugins and Scripts
source $HOME/.config/op/plugins.sh
source $HOME/.config/fish/1pw-load-aws-creds.fish
