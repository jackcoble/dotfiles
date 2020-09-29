# Load in .bashrc if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# PATH variables
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.cargo/bin"

# Go
export GOPATH="$HOME/code/go"

# GPG Agent
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
