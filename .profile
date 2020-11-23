# Load in .bashrc if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# PATH variables
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.cargo/bin"

# Go
export GOPATH="$HOME/code/go"

# GPG Pinentry
echo "UPDATESTARTUPTTY" | gpg-connect-agent > /dev/null 2>&1
