#!/bin/bash

# Check that the dependencies for the MOTD are installed
if ! [ -x "$(command -v figlet)" ]; then
  echo 'Error: figlet is not installed.' >&2
  exit 1
fi
if ! [ -x "$(command -v lolcat)" ]; then
  echo 'Error: lolcat is not installed.' >&2
  exit 1
fi

# Configuration variables
motd_message="$HOSTNAME"

# Generate fancy hostname text
/usr/bin/figlet "$motd_message" | /usr/games/lolcat -f
