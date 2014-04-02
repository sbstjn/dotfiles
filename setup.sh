#/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Load configuration
source ~/.dotfiles/config

echo ""
echo " * Patching .bash_profile"

echo "
source ~/.dotfiles/bash_rc" >> ~/.bash_profile

source ~/.dotfiles/system/osx
source ~/.bash_profile