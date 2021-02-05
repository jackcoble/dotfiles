
# ░░░██████╗░░█████╗░░██████╗██╗░░██╗██████╗░░█████╗░
# ░░░██╔══██╗██╔══██╗██╔════╝██║░░██║██╔══██╗██╔══██╗
# ░░░██████╦╝███████║╚█████╗░███████║██████╔╝██║░░╚═╝
# ░░░██╔══██╗██╔══██║░╚═══██╗██╔══██║██╔══██╗██║░░██╗
# ██╗██████╦╝██║░░██║██████╔╝██║░░██║██║░░██║╚█████╔╝
# ╚═╝╚═════╝░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░

# Defaults
export EDITOR=nvim

# Prompt settings
green="\001$(tput setaf 2)\002"
reset="\001$(tput sgr0)\002"
export PS1="$green\W > $reset";

# Aliases
alias dots='git --work-tree=$HOME --git-dir=$HOME/.dotfiles'
alias vim="nvim"

# GPG Agent
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

# Rust
source "$HOME/.cargo/env"

# Android Studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
