# If running bash
if [ -n "$BASH_VERSION" ]; then
    # Include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Set bin PATH
PATH="$PATH:$HOME/.bin"
export PATH="$HOME/.cargo/bin:$PATH"

# Set Go environment variables
PATH="$PATH:/usr/lib/go/bin/"
export GOPATH="$HOME/dev/go"

# Default applications
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# Invoke GPG Agent
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
