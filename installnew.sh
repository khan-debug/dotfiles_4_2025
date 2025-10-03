#!/bin/bash

# Remove existing dotfiles
echo -e "\nRemoving existing dotfiles..."
rm -f ~/.gitconfig ~/.vimrc ~/.zshrc ~/.p10k.zsh

# Link new dotfiles
echo -e "\nCreating new dotfiles..."
ln -s ~/dotfiles_4_2025/.gitconfig ~/.gitconfig
ln -s ~/dotfiles_4_2025/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles_4_2025/.vimrc ~/.vimrc
ln -s ~/dotfiles_4_2025/.fonts ~/.fonts


# Installing Oh My Zsh
echo -e "\nInstalling Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Installing Powerlevel10k theme
echo -e "\nInstalling Powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# Installing Autosuggestions and Syntax Highlighting for Zsh
echo -e "\nInstalling Zsh Autosuggestions and Syntax Highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# Installing Homebrew
echo -e "\nInstalling Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to path
echo -e "\nAdding Homebrew to PATH..."
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

rm -f ~/.zshrc
ln -s ~/dotfiles_4_2025/.zshrc ~/.zshrc 

# Success message
echo -e "\n!== Success! All setup completed. You can now use Homebrew and Oh My Zsh with Powerlevel10k! ==!"
