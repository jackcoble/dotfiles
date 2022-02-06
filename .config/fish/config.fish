# Disable welcome prompt
set -U fish_greeting

# Homebrew
fish_add_path /opt/homebrew/sbin
set -gx PATH /opt/homebrew/bin $PATH

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

# NPM
set PATH $HOME/.npm-global/bin $PATH

# Android SDK
set --export ANDROID $HOME/Library/Android;
set --export ANDROID_HOME $ANDROID/sdk;
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH


# Dotfiles bare repo alias
alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths
