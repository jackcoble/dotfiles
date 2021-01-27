# Load in .bashrc if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Go
export GOPATH="$HOME/code/go"

# PATH variables
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$GOPATH/bin"

# GPG Pinentry
echo "UPDATESTARTUPTTY" | gpg-connect-agent > /dev/null 2>&1
source "$HOME/.cargo/env"
