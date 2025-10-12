#!/bin/bash

# Remove existing dotfiles
echo -e "\nRemoving existing dotfiles..."
rm -f ~/.gitconfig ~/.vimrc ~/.zshrc ~/.p10k.zsh ~/.zshrc ~/.fonts 

# Link new dotfiles
echo -e "\nCreating new dotfiles..."
ln -s ~/.files_25/.gitconfig ~/.gitconfig
ln -s ~/.files_25/.p10k.zsh ~/.p10k.zsh
ln -s ~/.files_25/.vimrc ~/.vimrc
ln -s ~/.files_25/.zshrc ~/.zshrc

rm -rf ~/.mozilla && ln -s ~/.files_25/.mozilla ~/.mozilla
rm -rf ~/.vscode-oss && ln -s ~/.files_25/.vscode-oss ~/.vscode-oss
 
