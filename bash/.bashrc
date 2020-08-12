# ░░░██████╗░░█████╗░░██████╗██╗░░██╗██████╗░░█████╗░
# ░░░██╔══██╗██╔══██╗██╔════╝██║░░██║██╔══██╗██╔══██╗
# ░░░██████╦╝███████║╚█████╗░███████║██████╔╝██║░░╚═╝
# ░░░██╔══██╗██╔══██║░╚═══██╗██╔══██║██╔══██╗██║░░██╗
# ██╗██████╦╝██║░░██║██████╔╝██║░░██║██║░░██║╚█████╔╝
# ╚═╝╚═════╝░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░

# Some basic settings
PATH=$PATH:$HOME/.bin
bind 'set completion-ignore-case on'

# Prompt settings
green="\001$(tput setaf 2)\002"
reset="\001$(tput sgr0)\002"
export PS1="$green\W > $reset";

# Default applications
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"


# Invoke GPG Agent
GPG_TTY=$(tty)
export GPG_TTY
