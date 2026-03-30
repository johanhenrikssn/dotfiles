# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tools
brew bundle Brewfile

# Create symlinks for dotfiles
ln -sf ~/dev/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dev/dotfiles/.antigenrc ~/.antigenrc
ln -sf ~/dev/dotfiles/.gitconfig ~/.gitconfig

# Create directory
#mkdir ~/.nvm