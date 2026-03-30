#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tools
brew bundle --file=~/dev/dotfiles/Brewfile

# Create symlinks for dotfiles
ln -sf ~/dev/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dev/dotfiles/.zsh_plugins.txt ~/.zsh_plugins.txt
ln -sf ~/dev/dotfiles/.gitconfig ~/.gitconfig
mkdir -p ~/.config/ghostty
ln -sf ~/dev/dotfiles/config.ghostty ~/.config/ghostty/config.ghostty
