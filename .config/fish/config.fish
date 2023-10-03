# Disable welcome prompt
set -U fish_greeting

# Load in GPG agent
source $HOME/.config/fish/gnupg.fish

# Aliases
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

# Go
set -x GOPATH $HOME/code/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

# NPM and Yarn
set PATH $HOME/.npm-global/bin $PATH
set PATH $HOME/.yarn/bin $PATH

# Dotfiles bare repo alias
alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths
