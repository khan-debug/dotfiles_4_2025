#!/bin/bash

# Remove existing dotfiles
echo -e "\nRemoving existing dotfiles..."
rm -f ~/.gitconfig ~/.vimrc ~/.zshrc ~/.p10k.zsh ~/.zshrc ~/.fonts 

# Link new dotfiles
echo -e "\nCreating new dotfiles..."
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc


rm -rf ~/.vscode-oss && ln -s ~/dotfiles/.vscode-oss ~/.vscode-oss
 
