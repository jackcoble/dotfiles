
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
alias dots='git --work-tree=$HOME --git-dir=$HOME/.dotfiles/.git'
alias vim="nvim"

# GPG Agent
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
