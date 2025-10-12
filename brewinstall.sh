#!/bin/bash

# Installing Homebrew
echo -e "\nInstalling Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to path
echo -e "\nAdding Homebrew to PATH..."
echo >> /home/aarij/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/aarij/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"



sudo dnf group install development-tools



echo -e "Installing find it faster required dependencies"
brew install fzf
brew install rg
brew install bat
brew install gcc
brew install zsh
brew install vim




# Success message
echo -e "\n!== Success! All setup completed. You can now use Homebrew and Oh My Zsh with Powerlevel10k! ==!"
