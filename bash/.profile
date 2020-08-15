# If running bash
if [ -n "$BASH_VERSION" ]; then
    # Include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# Set bin PATH
PATH="$PATH:$HOME/.bin"

# Set Go environment variables
PATH="$PATH:/usr/lib/go/bin/"
export GOPATH="$HOME/dev/go"

# Default applications
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# Start xorg on tty1 if not already running
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
