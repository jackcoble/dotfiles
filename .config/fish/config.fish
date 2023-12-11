# Disable welcome prompt
set -U fish_greeting

# Load in GPG agent
source $HOME/.config/fish/gnupg.fish

# Aliases
# AWS CLI (Load in credentials from Pass)
function load_aws_cli
  set -Ux AWS_ACCESS_KEY_ID (pass show Development/AWS/Personal | sed -n 's/access-key-id: //p')
  set -Ux AWS_SECRET_ACCESS_KEY (pass show Development/AWS/Personal | sed -n 's/secret-access-key: //p')

  command aws $argv
end

# AWS CDK (Load in credentials from Pass)
function load_aws_cdk
  set -x AWS_ACCESS_KEY_ID (pass show Development/AWS/Personal | sed -n 's/access-key-id: //p')
  set -x AWS_SECRET_ACCESS_KEY (pass show Development/AWS/Personal | sed -n 's/secret-access-key: //p')

  command cdk $argv
end

alias aws="load_aws_cli"
alias cdk="load_aws_cdk"

# Go
set -x GOPATH $HOME/go
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

# NPM and Yarn
set PATH $HOME/.npm-global/bin $PATH
set PATH (yarn global bin) $PATH

# Random scripts/binaries
set PATH $HOME/bin $PATH

# Dotfiles bare repo alias
alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
